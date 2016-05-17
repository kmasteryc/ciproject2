<?php

class Gift_controller extends MY_Controller
{

    public function __construct()
    {
        parent::__construct('gift_model');
    }

    public function ajax_delete()
    {
        $this->auth->check(TRUE, 2, 3);

        $id = $this->input->post('id');

        $this->gift_model->do_delete($id);
    }

    public function create()
    {
        $this->auth->check(TRUE, 2, 3);

        $this->load->model('product_model');

        $this->load->library('form_validation');

        $this->load->helper('form');

        if ($this->form_validation->run('gift/create') === TRUE) {

            $this->session->set_flashdata('success', 'Create gift successfully XD');

            $insert_gift = [
                'gift_content' => $this->input->post('txtcontent'),
                'gift_startdate' => url_title($this->input->post('txtstartdate')),
                'gift_enddate' => $this->input->post('txtenddate')
            ];

            $this->gift_model->do_insert($insert_gift);

            $last_gift = $this->db->insert_id();

            if ($this->input->post('txtproducts') != '') {

                $this->load->model('gift_product_model');

                $products = explode(";", $this->input->post('txtproducts'));

                foreach ($products as $product) {

                    if ($product != '' && is_numeric($product)) {
                        $insert_gift_product = '';
                        $insert_gift_product = [
                            'gift_id' => $last_gift,
                            'product_id' => $product
                        ];

                        $this->gift_product_model->do_insert($insert_gift_product);
                    }

                }
            }


        }

        $data['products'] = $this->product_model->do_get('', '', ['id', 'product_name']);

        $data['title'] = 'Create gift :D';
        $data['page'] = 'gifts/create';
        $data['my_js'] = 'gifts/create.js';

        $this->load->myview('layout_admin', $data, $this->get_dialog());
    }

    public function edit($id)
    {

        $this->auth->check(TRUE, 2, 3);

        $this->load->model('product_model');

        $this->load->model('gift_product_model');

        $this->load->library('form_validation');

        $this->load->helper('form');

        if ($this->input->post()) {

            if ($this->form_validation->run('gift/edit') === TRUE) {

                $this->session->set_flashdata('success', 'Create gift successfully XD');

                $update_gift = [
                    'gift_content' => $this->input->post('txtcontent'),
                    'gift_startdate' => url_title($this->input->post('txtstartdate')),
                    'gift_enddate' => $this->input->post('txtenddate')
                ];

                $this->gift_model->do_update($id, $update_gift);

                $this->load->model('gift_product_model');

                $this->gift_product_model->custom_delete(['gift_id'=>$id]);

                if ($this->input->post('txtproducts') != '') {

                    $products = explode(";", $this->input->post('txtproducts'));

                    foreach ($products as $product) {

                        if ($product != '' && is_numeric($product)) {

                            $insert_gift_product = [
                                'gift_id' => $id,
                                'product_id' => $product
                            ];

                            $this->gift_product_model->do_insert($insert_gift_product);

                        }

                    }
                }


            }
        }

        if ($this->gift_model->do_get($id)) {
            $data['gifts'] = $this->gift_model->do_get($id)[0];
        }else{
            $data['gifts'] = '';
        }

        $old_products = $this->gift_product_model->do_get(['gift_id' => $id]);

        $data['old_products'] = '';
        foreach ($old_products as $old_product)
        {
            $data['old_products'] .= $old_product['product_id'].';';
        }

        $data['products'] = $this->product_model->do_get('', '', ['id', 'product_name']);

        $data['title'] = 'Edit gift :D';
        $data['page'] = 'gifts/edit';
        $data['my_js'] = 'gifts/create.js';

        $this->load->myview('layout_admin', $data, $this->get_dialog());

    }

    public function show($start = 0)
    {
        $this->auth->check(TRUE, 2, 3);


        $data['title'] = 'List all gifts :D';

        $data['gifts'] = $gifts = $this->gift_model->do_get('','','',['gift_startdate','DESC']);

        $this->load->model('gift_product_model');

        foreach ($gifts as $k => $gift) {

            $products = $this->gift_product_model->do_get(
                [
                    'gift_id' => $gift['id']
                ]
            );
            $data['gifts'][$k]['gift_products'] = $products;
        }

        $data['page'] = 'gifts/show';
        $data['my_js'] = 'gifts/show.js';

        $this->load->myview('layout_admin', $data, $this->get_dialog());
    }
}
