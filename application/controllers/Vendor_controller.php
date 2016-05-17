<?php

class Vendor_controller extends MY_Controller
{

    public function __construct()
    {
        parent::__construct('vendor_model');
    }

    public function ajax_delete()
    {
        $this->auth->check(TRUE, 2, 3);
        $id = $this->input->post('id');
        $this->vendor_model->delete($id);
    }

    public function create()
    {
        $this->auth->check(TRUE, 2, 3);

        $this->load->library('form_validation');
        $this->load->helper('form');

        if ($this->form_validation->run('vendor/create') === TRUE) {
            $this->session->set_flashdata('success', 'Create vendor successfully XD');

            $insert = [
                'vendor_name' => $this->input->post('txtvendor'),
                'vendor_slug' => url_title($this->input->post('txtvendor')),
                'vendor_cate' => $this->input->post('intcate')
            ];

            $this->vendor_model->do_insert($insert);
        }

        $data['title'] = 'Create vendor :D';
        $data['page'] = 'vendors/create';
        $this->load->myview('layout_admin', $data, $this->get_dialog());
    }

    public function edit($id)
    {
        $this->auth->check(TRUE, 2, 3);

        $this->load->library('form_validation');

        if ($this->input->post('txtvendor_new') != $this->input->post('txtvendor_old')) {
            $this->form_validation->set_rules('txtvendor_new', 'Vendor name ', 'required|is_unique[vendors.vendor_name]|min_length[3]|max_length[30]');
        }
        $this->form_validation->set_rules('intcate', 'Category ', 'numeric');
        if ($this->form_validation->run() === TRUE) {
            $this->session->set_flashdata('success', 'Edited successfully! :D');

            $update = [
                'vendor_name' => $this->input->post('txtvendor_new'),
                'vendor_slug' => url_title($this->input->post('txtvendor_new')),
                'vendor_cate' => $this->input->post('intcate')
            ];

            $this->vendor_model->update($id, $update);
            redirect(base_url('vendor/show'));
        }

        $data['title'] = 'Edit vendor';
        $data['vendor'] = $this->vendor_model->show($id)[0];
        $data['page'] = 'vendors/edit';

        $this->load->myview('layout_admin', $data, $this->get_dialog());
    }

    public function show($start = 0)
    {
        $this->auth->check(TRUE, 2, 3);

        $this->load->library('pagination');

        $config['base_url'] = base_url('/user/vendor/');

        $data['title'] = 'List all vendors :D';

        $data['vendors'] = $vendors = $this->vendor_model->do_get();

        $this->load->model('product_model');
        foreach ($vendors as $k=>$vendor){
            $products = $this->product_model->do_get([
                'product_vendor' => $vendor['id']
            ]);
            $data['vendors'][$k]['vendor_products'] = $products;
        }

        $data['page'] = 'vendors/show';
        $data['my_js'] = 'vendors/show.js';

        $this->load->myview('layout_admin', $data, $this->get_dialog());
    }
}
