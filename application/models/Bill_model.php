<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 12/05/2016
 * Time: 21:10
 */
class Bill_model extends MY_Model{
    public function __construct(){
        parent::__construct('bills');
    }
}