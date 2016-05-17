<?php

class Cate_Controller extends MY_Controller
{

    public function __construct()
    {
        parent::__construct('cate_model');
    }

    public function index()
    {
       echo 'CATE INDEX';
    }

    public function ajax_delete()
    {
        $this->auth->check(TRUE, 2, 3);
        $id = $this->input->post('id');
        $this->cate_model->delete($id);
    }

    public function create()
    {
        $this->auth->check(TRUE, 2, 3);

        $this->load->library('form_validation');
        $this->load->helper('form');

        if ($this->form_validation->run('cate/create') === TRUE)
        {
            $this->session->set_flashdata('success', 'Create cate successfully XD');

            $insert = array(
                'cate_name' => $this->input->post('txtcate'),
                'cate_slug' => url_title($this->input->post('txtcate')),
                'cate_icon' => $this->input->post('txticon')
            );

            $this->cate_model->do_insert($insert);
        }

        $data['title'] = 'Create cate :D';
        $data['page'] = 'cates/create';
        $this->load->myview('layout_admin', $data, $this->get_dialog());
    }

    public function edit($id)
    {
        $this->auth->check(TRUE, 2, 3);

        $this->load->library('form_validation');

        if ($this->form_validation->run('cate/edit') === TRUE)
        {
            $update = array(
                'cate_name' => $this->input->post('txtcate'),
                'cate_slug' => url_title($this->input->post('txtcate')),
                'cate_icon' => $this->input->post('txticon'),
            );
            $this->cate_model->do_update($id,$update);
            $this->session->set_flashdata('success','Edit successfully!');
        }else{
            print_r(validation_errors());
        }

        $data['title'] = 'Edit cate';
        $data['cate'] = $this->cate_model->do_get($id)[0];
        $data['page'] = 'cates/edit';
        $data['my_js'] = 'cates/edit.js';

        $this->load->myview('layout_admin', $data, $this->get_dialog());
    }


//    public function ajax_edit($id)
//    {
//
//        $this->auth->check(TRUE, 2, 3);
//
//        $this->load->library('form_validation');
//
//        if ($this->form_validation->run('cate/ajax_edit') === FALSE)
//        {
//            header('Content-Type: application/json');
//            echo json_encode(array('fail' => validation_errors(' ',' ')));
//        } else
//        {
//            $update = array(
//                'cate_name' => $this->input->post('txtcate'),
//                'cate_slug' => url_title($this->input->post('txtcate')),
//                'cate_icon' => url_title($this->input->post('txticon')),
//            );
//            $this->cate_model->do_update($id,$update);
//            header('Content-Type: application/json');
//            echo json_encode(array('success' => 'Edited successfully! XD'));
//        }
//    }

    public function show($start = 0)
    {

        $this->auth->check(TRUE, 2, 3);

        $data['title'] = 'List all cates :D';

        $data['cates'] = $cates = $this->cate_model->do_get();

        $this->load->model('product_model');

        foreach ($cates as $k=>$cate){
            $products = $this->product_model->do_get([
                'product_cate' => $cate['id']
            ]);
            $data['cates'][$k]['cate_products'] = $products;
        }

        $data['page'] = 'cates/show';
        $data['my_js'] = 'cates/show.js';

        $this->load->myview('layout_admin', $data);
    }

    public function test()
    {
        print_r(func_get_args());
    }

}
