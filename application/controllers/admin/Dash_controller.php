<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 5/8/2016
 * Time: 3:38 PM
 */
class Dash_controller extends MY_Controller{
    public function __construct(){
        parent::__construct();

    }
    public function index(){
        $this->auth->check(TRUE, 2, 3);
        redirect(base_url('bill/show'));

//        $data['title'] = "Admin dashboard";
//        $data['page'] = 'admin/dash';
//        $data['my_js'] = 'admin/admin.js';
//        $data['my_css'] = 'dash.css';
//
//        $this->load->myview('layout_admin', $data, $this->get_dialog());
    }
}