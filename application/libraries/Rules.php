<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Rules {
    public function call_rules($rules, $mode = 'create') {
        $result = array();
        foreach ($rules as $rule) {
            $result[] = $this->$rule($mode);
        }
        return $result;
    }
    public function call_rule($rule)
    {
        return $this->$rule();
    }

    static public function txtuser($mode) {
        if ($mode == 'create') {
            $rules = 'required|alpha_numeric|is_unique[users.user_name]|min_length[3]|max_length[12]';
        } else {
            $rules = 'required|alpha_numeric';
        }
        return array(
            'field' => 'txtuser',
            'label' => 'Username',
            'rules' => $rules
        );
    }

    static public function txtpass($mode) {
        if ($mode == 'create') {
            $rules = 'required|min_length[6]|max_length[15]';
        } else {
            $rules = 'required';
        }
        return array(
            'field' => 'txtpass',
            'label' => 'Password',
            'rules' => $rules
        );
    }

    static public function txtmail() {
        return array(
            'field' => 'txtmail',
            'label' => 'Email',
            'rules' => 'required|valid_email|is_unique[users.user_mail]|min_length[6]|max_length[30]'
        );
    }

    static public function intlevel() {
        return array(
            'field' => 'intlevel',
            'label' => 'Level',
            'rules' => 'required|in_list[1,2]'
        );
    }

}
