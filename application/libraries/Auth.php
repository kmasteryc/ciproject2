<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Auth {

    protected $CI;

    public function __construct() {
        $this->CI = & get_instance();
    }

    public function check($out=FALSE) {
        $args = func_get_args();
        unset($args[0]);
        $check = FALSE;

        if ($this->CI->session->userdata('level') != '') {
            $cur_level = $this->CI->session->userdata('level');
        } else {
            $cur_level = 0;
        }
        foreach ($args as $arg) {
            if ($arg == $cur_level) {
                $check = TRUE;
            }
        }
        if ($check === TRUE)
        {
            return TRUE;
        }else{
            if ($out === TRUE )
            {
                redirect(base_url('user/login'));
            }else{
                return FALSE;
            }
        }
    }

    public function whoareyou($need){
        if ($this->CI->session->userdata('user')!=''){
            return $this->CI->session->userdata[$need];
        }else{
            return -1;
        }
    }

}
