<?php

class Bill_Controller extends MY_Controller
{
    public function __construct()
    {
        parent::__construct('bill_model');
        $this->load->model('report_model');
    }

    public function ajax_delete()
    {
        $this->auth->check(TRUE, 2, 3);
        $id = $this->input->post('id');
        $this->bill_model->do_delete($id);
    }

    public function next($id)
    {
        $this->auth->check(TRUE, 2, 3);
        $bill = $this->bill_model->do_get($id);
        if ($bill) {
            // Find commiter
            $commiter = $this->auth->whoareyou('id');

            $step = 0;
            $done = 0;
            $cur_states = $new_states = json_decode($bill['bill_state'],TRUE);
//            var_dump($cur_states);
//            exit();
            foreach ($cur_states as $k => $cur_state) {
                if ($cur_state != 0) {
                    $step++;
                }else{
                    // Next state is here
                    $new_states[$k] = [
                        'state_time' => date('Y-m-d G:i:s'),
                        'state_commiter' => $commiter
                    ];

                    // Done step is here
                    if ($step == 3){
                        $done = 1;

                        // Update to report
                        $products = json_decode($bill['bill_products'], true);
                        foreach ($products as $product)
                        {
                            $total = $product['product_quantity'] * $product['product_price'];
                            $this->report_model->addToReport($product['product_id'], $product['product_quantity'], $total);
                        }
                    }

                    break;
                }
            }
            $this->bill_model->do_update($id,['bill_state'=>json_encode($new_states),'bill_done'=>$done]);
            $this->session->set_flashdata('success','Proccess complete!');
            redirect(base_url('bill/detail/'.$id));

        } else {
            show_404();
        }
    }

    public function show($start = 0)
    {
        $this->auth->check(TRUE, 2, 3);

        $data['title'] = 'List all bills :D';
        $data['bills'] = $this->bill_model->do_get('','','',['id','DESC']);
        $data['page'] = 'bills/show';
        //$data['my_js'] = 'bills/show.js';

        $this->load->myview('layout_admin', $data, $this->get_dialog());
    }

    public function detail($id = 0)
    {

        if ($this->auth->check(FALSE, 2, 3) == TRUE) {
            $template = 'layout_admin';
        } else {
            $template = 'layout';
        }

        $data['bill'] = $this->bill_model->do_get($id);
        $data['title'] = 'Invoice #' . $data['bill']['id'];
        $data['page'] = 'bills/detail';
        $data['my_js'] = 'bills/detail.js';

        $this->load->myview($template, $data, $this->get_dialog());
    }

}
