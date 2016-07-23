<?php

/**
 * Created by PhpStorm.
 * User: kmasteryc
 * Date: 6/29/16
 * Time: 7:35 PM
 */
class Report_controller extends MY_Controller
{
    public function __construct()
    {
        parent::__construct('report_model');
    }

    public function index()
    {
        echo 'Welcome to report controller!';
    }

    public function getLastWeekReport($cate)
    {
        $car = \Carbon\Carbon::parse('last monday');
        $last_week_days[] = $car->toDateString();
        for ($i = 1; $i <= 6; $i++) {
            $last_week_days[] = $car->subday(1)->toDateString();
        }

        $that_days_report = [];
        foreach ($last_week_days as $day) {
            $this_day = model('report')->do_get(
                [
                    'report_date' => $day,
                    'report_cate' => $cate
                ]);
            if (count($this_day) > 0) {
                $that_days_report[$day] = json_decode($this_day['report_content']);
            };
        }

        // Process all reports from all days
        $res = $this->_processReport($that_days_report);
        arsort($res['summary']);

        header('Content-type: application/json');
        // Swap key and value to prevent auto sorting JSON in chrome, opera browser
        echo json_encode($res['summary']);
    }

    public function getLastMonthReport()
    {
        // Get last day of last month
        $car = \Carbon\Carbon::now()->startOfMonth()->subDay();

        // For testing
        // $car = \Carbon\Carbon::now()->endOfMonth();

        // Count days in that month
        $day_in_month = $car->daysInMonth;

        // Assign first value
        $last_month_days[] = $car->toDateString();

        // Loop (count_day - 1)
        for ($i = 1; $i <= ($day_in_month - 1); $i++) {
            $last_month_days[] = $car->subday(1)->toDateString();
        }

        // Declare report
        $that_days_report = [];

        // Foreach all day in month
        foreach ($last_month_days as $day) {
            $this_day = model('report')->do_get(
                [
                    'report_date' => $day
                ]);

            // If that day has products which 've sold
            if (count($this_day) > 0) {
                // Add to reports
                $that_days_report[$day] = json_decode($this_day['report_content']);
            };
        }

        // Process all reports from all days
        $res = $this->_processReport($that_days_report);
        header('Content-type: application/json');
        echo json_encode($res['summary']);
    }

    public function getCurrentMonthReport()
    {
        $car = \Carbon\Carbon::now()->startOfMonth();

        // Count days in that month
        $day_in_month = $car->daysInMonth;

        // Assign first value
        $cur_month_days[] = $car->toDateString();

        // Loop (count_day - 1)
        for ($i = 1; $i <= ($day_in_month - 1); $i++) {
            $cur_month_days[] = $car->addDay(1)->toDateString();
        }

        // Declare report
        $that_days_report = [];

        // Foreach all day in month
        foreach ($cur_month_days as $day) {
            $this_day = model('report')->do_get(
                [
                    'report_date' => $day
                ]);

            // If that day has products which 've sold
            if (count($this_day) > 0) {
                // Add to reports
                $that_days_report[$day] = json_decode($this_day['report_content']);
            };
        }

        // Process all reports from all days
        $res = $this->_processReport($that_days_report);
        header('Content-type: application/json');
        echo json_encode($res['summary']);
    }

    public function getDateReport($date)
    {

    }

    public function getWeekReport($week)
    {

    }

    public function getMonthReport($month)
    {

    }

    public function test()
    {
        var_dump(model('report')->getLastWeekReport());
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