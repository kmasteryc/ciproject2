<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 14/05/2016
 * Time: 08:25
 */
class Home_controller extends MY_Controller{
    public function __construct(){
        parent::__construct('cate_model');
    }
    public function index(){
        $data['title'] = 'Trust - Fast - Reliable';
        $data['page'] = 'homes/index';
        $data['my_js'] = 'products/main.js';
        $data['is_welcome'] = true;

        $data['cates'] = $this->cate_model->do_get();

        $this->load->myview('layout', $data);
    }
}