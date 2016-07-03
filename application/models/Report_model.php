<?php

/**
 * Created by PhpStorm.
 * User: kmasteryc
 * Date: 6/29/16
 * Time: 10:12 PM
 */
class Report_model extends MY_Model
{
    public function __construct()
    {
        parent::__construct('reports');
        $this->load->model('cate_model');
        $this->load->model('product_model');
    }

    public function getLastWeekReport()
    {
        $cates = $this->cate_model->do_get();

        $cate_report = [];
        foreach ($cates as $cate) {

            $car = \Carbon\Carbon::parse('last monday');
            $last_week_days[] = $car->toDateString();
            for ($i = 1; $i <= 6; $i++) {
                $last_week_days[] = $car->subday(1)->toDateString();
            }

            $that_days_report = [];
            foreach ($last_week_days as $day) {
                $this_day = $this->report_model->do_get(
                    [
                        'report_date' => $day,
                        'report_cate' => $cate['id']
                    ]);
                if (count($this_day) > 0) {
                    $that_days_report[$day] = json_decode($this_day[0]['report_content']);
                };
            }

            // Process all reports from all days
            $res = $this->_processReport($that_days_report);
            arsort($res['summary']);

            $cate_report[$cate['id']] = $res['summary'];
        }
        return $cate_report;
    }

    public function addToReport($product_id, $product_sold)
    {
        // Resolve product cate
        $cate = $this->product_model->do_get(
            [
                'products.id'=>$product_id
            ],
            [[
                'join_table' => 'cates',
                'join_cond' => 'cates.id = products.product_cate'
            ]],
            ['cates.id']);

        $cur = $this->report_model->do_get([
            'report_date' => date('Y-m-d'),
            'report_cate' => $cate['id']
        ]);

        // If doesnt have report for that cate in that day
        if (!$cur) {
            $content = json_encode([[
                'product_id' => $product_id,
                'product_sold' => $product_sold
            ]]);
            $insert = [
                'report_cate' => $cate['id'],
                'report_date' => date('Y-m-d'),
                'report_content' => $content
            ];
            $this->report_model->do_insert($insert);
        } else { // Else update it!
            $contents = json_decode($cur['report_content']);
            // Varible to check if need to add new product to report_content
            $needtoadd = true;
            foreach ($contents as $k=>$content)
            {
                // If product exists
                if ($content->product_id == $product_id)
                {
                    $needtoadd = false;
                    $contents[$k]->product_sold += $product_sold;
                }
            }
            // If no product. Create it now
            if ($needtoadd === true)
            {
                $contents[] = [
                    'product_id' => $product_id,
                    'product_sold' => $product_sold
                ];
            }
            $cond = [
                'report_date' => $cur['report_date'],
                'report_cate' => $cate['id'],
            ];
            $this->report_model->do_update($cond, [
                'report_content' => json_encode($contents)
            ]);
        }

//        var_dump($cur);
    }

    private function _processReport($report_all_days)
    {
        $total = '';
        $summary = [];
        foreach ($report_all_days as $report_day) {
            // Foreach all products in that day
            foreach ($report_day as $report) {
                // Add to total
                $total += $report->product_sold;
                // Manage product from all days
                if (array_key_exists($report->product_id, $summary)) {
                    $summary[$report->product_id] += $report->product_sold;
                } else {
                    $summary[$report->product_id] = $report->product_sold;
                }
            }
        }
        return [
            'total' => $total,
            'summary' => $summary
        ];
    }

    private function _swapArray($arr)
    {
        $new_arr = '';
        foreach ($arr as $k => $vl) {
            $new_arr[$vl] = $k;

        }
        return $new_arr;
    }
}