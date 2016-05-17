<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Misc_model extends MY_Model{
    public function __construct(){
        parent::__construct();
    }
    public function simple_menu($table){
        $query = $this->db->get($table);
        return $query->result_array();
    }
    public function summon_name($table, $id, $col)
    {
        $this->db->select($col);
        $this->db->where('id',$id);
        return $this->db->get($table)->result_array()[0][$col];
    }
}