<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class MY_Model extends CI_Model
{
    private $_table = '';

    public function __construct($table = '')
    {
        parent::__construct();
        $this->load->database();
        if ($table != '') {
            $this->_table = $table;
        }
    }

    public function do_count(){
        return $this->db->count_all($this->_table);
    }

    public function do_insert($insert)
    {
        $this->db->insert($this->_table, $insert);
    }

    public function do_get($condition = '', $joins='',$select = '', $order = '', $limit = '', $start = '')
    {
        if ($condition != '') {
            if (is_numeric($condition)) {
                $this->db->where('id', $condition);
            } else {
                $this->db->where($condition);
            }
        }
        if ($select != '') {
            $select = implode(',', $select);
            $this->db->select($select);
        }
        if ($order != '') {
            $this->db->order_by($order[0], $order[1]);
        }
        if ($joins!= ''){
            foreach($joins as $join) {
                $this->db->join($join['join_table'], $join['join_cond']);
            }
        }
        if ($limit){
            $query = $this->db->limit($limit,$start);
        }
        $query = $this->db->get($this->_table);
        $result = $query->result_array();
        if (count($result) == 1){
            return $result[0];
        }
        return $result;
    }
   public function do_get_2($condition = '', $joins='',$select = '', $order = '', $limit = '', $start = '')
    {
        if ($condition != '') {
            if (is_numeric($condition)) {
                $this->db->where('id', $condition);
            } else {
                $this->db->where($condition);
            }
        }
        if ($select != '') {
            $select = implode(',', $select);
            $this->db->select($select);
        }
        if ($order != '') {
            $this->db->order_by($order[0], $order[1]);
        }
        if ($joins!= ''){
            foreach($joins as $join) {
                $this->db->join($join['join_table'], $join['join_cond']);
            }
        }
        if ($limit){
            $query = $this->db->limit($limit,$start);
        }
        $query = $this->db->get($this->_table);
        return $query->result_array();
    }

    public function do_delete($id)
    {
        if (is_numeric($id)) {
            $this->db->where('id', $id);
        }else{
            $this->db->where_in('id ', $id);
        }
        $this->db->delete($this->_table);
    }

    public function custom_delete($cond){
        $this->db->where($cond);
        $this->db->delete($this->_table);
    }

    public function do_update($cond,$data){
        if (is_numeric($cond)) {
            $this->db->where('id', $cond);
        }else{
            $this->db->where($cond);
        }
        $this->db->set($data);
        $this->db->update($this->_table);
    }
}
