<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
require APPPATH . "third_party/MX/Loader.php";

class MY_Loader extends MX_Loader
{
    public function __construct()
    {
        parent::__construct();
    }

    public final function myview($view, $vars = [], $dialog = "", $return = FALSE)
    {
        $vars['dialog'] = $dialog;
        return $this->_ci_load(array('_ci_view' => $view, '_ci_vars' => $this->_ci_object_to_array($vars), '_ci_return' => $return));
    }
}

//class MY_Loader extends CI_Loader
//{
//
//  public function __construct()
//  {
//    parent::__construct();
//  }
//
//  public final function myview($view, $vars = [], $dialog="", $return = FALSE)
//  {
//    $vars['dialog']= $dialog;
//    return $this->_ci_load(array('_ci_view' => $view, '_ci_vars' => $this->_ci_object_to_array($vars), '_ci_return' => $return));
//  }
//
//}
