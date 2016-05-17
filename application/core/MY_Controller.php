<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class MY_Controller extends MX_Controller
{

    public function __construct($model = "")
    {
        parent::__construct();
        if ($model != "") {
            $this->load->model($model);
        }
    }
    public function get_dialog()
    {
        $dialog = '';
        if ($this->session->flashdata('success') != NULL) {
            $dialog[] = success($this->session->flashdata('success'));
            unset($_SESSION['success']);
        }
        if ($this->session->flashdata('fail') != NULL) {
            $dialog[] = fail($this->session->flashdata('fail'));
            $this->session->set_flashdata('fail', NULL);
        }
        if ($this->session->flashdata('warn') != NULL) {
            $dialog[] = warn($this->session->flashdata('warn'));
            $this->session->set_flashdata('warn', NULL);
        }
        $return = '';
        if ($dialog != '') {
            foreach ($dialog as $item) {
                $return .= $item . '';
            }
        }
        return $return;
    }
}
