<?php

class User_model extends MY_Model
{

    private $_table = 'users';

    public function __construct()
    {
        parent::__construct('users');
    }

    public function do_query($sqls)
    {
        foreach ($sqls as $sql) {
            $this->db->query($sql);
        }
    }

    public function login($user, $pass)
    {
        $query = $this->db->get_where($this->_table, array('user_name' => $user));
        $result = $query->result_array();
        if (count($result) == 1) {
            $hash = $result[0]['user_pass'];

            if (password_verify($pass, $hash)) {
                return array(TRUE, $result[0]);
            } else {
                return FALSE;
            }
        } else {
            return FALSE;
        }
    }

}
