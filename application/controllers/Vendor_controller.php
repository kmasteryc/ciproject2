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

            // Get last insert ID
            $id = $this->db->insert_id();
            // String path for upload
            $dir = FCPATH . "public/images/vendors/";
            // Create folder if its not exist
            if (!is_dir($dir)) mkdir($dir);

            $config['upload_path'] = $dir;
            $config['allowed_types'] = 'gif|jpg|png';
            $config['max_size'] = 5000;
            $config['max_width'] = 5000;
            $config['max_height'] = 5000;
            $this->load->library('upload', $config);

            if ($this->upload->do_upload("userfile")) {
                // Do upload and set success dialog
                $data = $this->upload->data();
                $this->vendor_model->do_update($id,['vendor_img'=>$data['file_name']]);
                $this->session->set_flashdata('success', 'Create product successfully XD');
            } else {
                $this->vendor_model->do_delete($id);
                $this->session->set_flashdata('fail', $this->upload->display_errors());
            }
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

            // String path for upload
            $dir = FCPATH . "public/images/vendors/";
            // Create folder if its not exist
            if (!is_dir($dir)) mkdir($dir);

            $config['upload_path'] = $dir;
            $config['allowed_types'] = 'gif|jpg|png';
            $config['max_size'] = 5000;
            $config['max_width'] = 5000;
            $config['max_height'] = 5000;
            $this->load->library('upload', $config);

            if ($this->upload->do_upload("userfile")) {
                // Do upload and set success dialog
                $data = $this->upload->data();
                $this->vendor_model->do_update($id,['vendor_img'=>$data['file_name']]);
                $update['vendor_img'] = $data['file_name'];
                $this->session->set_flashdata('success', 'Update product successfully XD');
            }

            $this->vendor_model->update($id, $update);
//            redirect(base_url('vendor/show'));
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
        foreach ($vendors as $k => $vendor) {
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
