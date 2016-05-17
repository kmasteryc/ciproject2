<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 5/3/2016
 * Time: 8:45 AM
 */
class Image_controller extends MY_Controller
{
    public function __construct()
    {
        parent::__construct('image_model');
    }
//    public function upload_modal(){
//        $funcNum = $_GET['CKEditorFuncNum'] ;
//// Optional: instance name (might be used to load a specific configuration file or anything else).
//        $CKEditor = $_GET['CKEditor'] ;
//// Optional: might be used to provide localized messages.
//        $langCode = $_GET['langCode'] ;
//
//// Check the $_FILES array and save the file. Assign the correct path to a variable ($url).
//        $url = base_url('public/images/products/3/20150812_113518.jpg');
//// Usually you will only assign something here if the file could not be uploaded.
//        $message = '';
//
//        echo "<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction($funcNum, '$url', '$message');</script>";
//    }

    public function create()
    {
        $this->load->model('product_model');
        $this->auth->check(TRUE, 2, 3);
        $this->load->library('form_validation');
        $this->load->helper('form');

        if ($this->input->post()) {

            if ($this->form_validation->run('image/create') === TRUE) {
                $id = $this->input->post('intproduct');
                if (!is_dir(FCPATH . "public/images/products/$id")) {
                    mkdir(FCPATH . "public/images/products/$id");
                }

                $config['upload_path'] = FCPATH . "public/images/products/$id";
                $config['allowed_types'] = 'gif|jpg|png';
                $config['max_size'] = 5000;
                $config['max_width'] = 5000;
                $config['max_height'] = 5000;

                $this->load->library('upload', $config);

                $files = $_FILES['userfile'];
                $fail = $success = '';

                for ($i = 0; $i < count($files['name']); $i++) {

                    $_FILES['userfile']['name'] = $files['name'][$i];
                    $_FILES['userfile']['type'] = $files['type'][$i];
                    $_FILES['userfile']['tmp_name'] = $files['tmp_name'][$i];
                    $_FILES['userfile']['error'] = $files['error'][$i];
                    $_FILES['userfile']['size'] = $files['size'][$i];

                    if (!$this->upload->do_upload("userfile")) {
                        $fail .= $files['name'][$i] . ' - ' . $this->upload->display_errors(" ", " ") . '<br />';
                    } else {
                        $success .= $_FILES['userfile']['name'] . ', ';
                        $data = array('upload_data' => $this->upload->data());
                    }
                }
                if ($fail != '') {
                    $this->session->set_flashdata('fail', '<br />' . $fail);
                }
                if ($success != '') {
                    $this->session->set_flashdata('success', '<br />Upload: ' . $success . ' OK!');
                }
            }else{
                echo "WAT";
                print_r(validation_errors());
            }
        }
        $products = $this->product_model->do_get('', array('id', 'product_name'), array('product_name', 'ASC'));
        $data['title'] = 'Create image :D';
        $data['page'] = 'images/create';
        $data['products'] = $products;

        $this->load->myview('layout', $data, $this->get_dialog());
    }
    public function test(){
        echo "<iframe src='".base_url('image/create')."'></iframe>";
    }
}