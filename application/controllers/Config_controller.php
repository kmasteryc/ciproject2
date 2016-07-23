<?php
/**
 * Created by PhpStorm.
 * User: kmasteryc
 * Date: 7/2/16
 * Time: 9:09 PM
 */

class Config_controller extends MY_Controller{
    public function __construct()
    {
        parent::__construct();
    }
    public function index()
    {
        $this->auth->check(TRUE, 2, 3);

        if ($this->input->post()) {
            foreach ($this->input->post() as $config_id => $config_value){
                model('config')->do_update($config_id,['config_value'=>$config_value]);
                $this->session->set_flashdata('success','Update config completed!');
                redirect(base_url('config/index'));
            }
        }

        $configs = model('config')->do_get();

        $data['title'] = 'Site settings';
        $data['page'] = 'configs/index';
        $data['configs'] = $configs;

        $this->load->myview('layout_admin', $data);
    }
}