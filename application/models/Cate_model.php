<?php

class Cate_model extends MY_Model
{

    private $_table = 'cates';

    public function __construct()
    {
        parent::__construct('cates');
    }

    public function show($condition = NULL, $perpage = 20, $start = 0)
    {
        if ($condition === NULL)
        {
            $query = $this->db->get($this->_table, $perpage, $start);
//			return $query->result_array();
        } else
        {
            if (is_numeric($condition))
            {
                $query = $this->db->get_where($this->_table, array('id  ' => $condition));
//                    return $query -> result_array();
            } else
            {
                $query = $this->db->where(' id', 1);
//                return $query->result_array();
            }
        }
        return $query->result_array();
    }

    ////// MOVE TO PARENT
    public function countme()
    {
        return $this->db->count_all_results($this->_table);
    }

    public function do_query($sqls)
    {
        foreach ($sqls as $sql)
        {
            $this->db->query($sql);
        }
    }

    public function insert($insert)
    {
        $this->db->insert($this->_table, $insert);
    }

    public function delete($id = '')
    {
        if ($id != '')
        {
            $this->db->where('id', $id);
            $this->db->delete($this->_table);
        }
    }


}
