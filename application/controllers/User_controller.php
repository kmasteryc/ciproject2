<?php

class User_controller extends MY_Controller
{

    public function __construct()
    {
        parent::__construct('user_model');
    }

    public function create()
    {
        $this->auth->check(TRUE, 3);

        $this->load->library('form_validation');
        $this->load->helper('form');

        if ($this->input->post()) {
            if ($this->form_validation->run('user/create') === TRUE) {
                $this->session->set_flashdata('success', 'Create user successfully XD');

                $insert = [
                    'user_name' => $this->input->post('txtuser'),
                    'user_pass' => password_hash($this->input->post('txtpass'), PASSWORD_BCRYPT),
                    'user_mail' => $this->input->post('txtmail'),
                    'user_level' => $this->input->post('intlevel'),
                ];

                model('user')->do_insert($insert);
            }
        }

        $data['title'] = 'Create user :D';
        $data['page'] = 'users/create';

        $this->load->myview('layout_admin', $data, $this->get_dialog());
//        $this->load->myview('layout', $data, $this->get_dialog());
    }

    public function edit()
    {
        $this->auth->check(TRUE, 2, 3);

        $this->load->library('form_validation');
        $this->load->helper('form');

        $args = func_get_args();
        if (count($args) == 0 or !check_uri($args, 'is_numeric')) {
            redirect(base_url());
        }
        $Ps = $this->input->post();
        $change = '';
        if ($Ps) {
            foreach ($args as $arg) {

                $txtuser_new = $Ps['txtuser_new'][$arg];
                $txtuser_old = $Ps['txtuser_old'][$arg];
                $txtpass_new = $Ps['txtpass_new'][$arg];
                $txtmail_new = $Ps['txtmail_new'][$arg];
                $txtmail_old = $Ps['txtmail_old'][$arg];
                $intlevel_new = $Ps['intlevel_new'][$arg];
                $intlevel_old = $Ps['intlevel_old'][$arg];

                if ($txtuser_new != $txtuser_old) {
                    $change = $this->form_validation->set_rules("txtuser_new[$arg]", 'Username', 'required|alpha_numeric|is_unique[users.user_name]|min_length[3]|max_length[12]');
                    $sql[] = "UPDATE users SET user_name = '$txtuser_new' WHERE users.id = $arg;";
                }

                if ($txtmail_new != $txtmail_old) {
                    $change = $this->form_validation->set_rules("txtmail_new[$arg]", 'Email', 'required|valid_email|is_unique[users.user_mail]|min_length[6]|max_length[30]');
                    $sql[] = "UPDATE users SET user_mail = '$txtmail_new' WHERE users.id = $arg;";
                }

                if ($intlevel_new != $intlevel_old) {
                    $change = $this->form_validation->set_rules("intlevel_new[$arg]", 'Level', 'required|in_list[1,2]');
                    $sql[] = "UPDATE users SET user_level = '$intlevel_new' WHERE users.id = $arg;";
                }
                if ($txtpass_new != '') {
                    $change = $this->form_validation->set_rules("txtpass_new[$arg]", 'Password', 'required|min_length[6]|max_length[15]');
                    $sql[] = "UPDATE users SET user_pass = '" . password_hash($txtpass_new, PASSWORD_BCRYPT) . "' WHERE users.id = $arg;";
                }
            }
            if ($this->form_validation->run() === FALSE) {
                if ($change == '') {
                    $this->session->set_flashdata("warn", "Why dont you edit something :D");
                }
            } else {
                model('user')->do_query($sql);
                $this->session->set_flashdata("success", "Edited successfully :D");
            }
        }

        foreach ($args as $arg) {
            $data_temp[] = model('user')->do_get($arg, '', ['id,user_name,user_mail,user_level'])[0];
        }
        $data['users'] = $data_temp;
        $data['title'] = 'Edit user :D';
        $data['page'] = 'users/edit';
        $this->load->myview('layout_admin', $data, $this->get_dialog());
    }

    public function login()
    {
        $this->auth->check(TRUE, 0);

        $this->load->library('form_validation');
        $this->load->helper('form');

        if ($this->input->post()) {
            if ($this->form_validation->run('user/login') === TRUE) {

                $do_login = model('user')->login($this->input->post('txtuser'), $this->input->post('txtpass'));
                if ($do_login[0] === TRUE) {
                    $this->session->set_flashdata('success', 'Login successfully!');

                    $user['user'] = $this->input->post('txtuser');
                    $user['level'] = $do_login[1]['user_level'];
                    $user['id'] = $do_login[1]['id'];

                    $this->session->set_userdata($user);

                    redirect(base_url('user/show'));
                } else {
                    $this->session->set_flashdata('fail', 'Login failed. Check your information!!');
                }
            } else {
                $this->session->set_flashdata('fail', 'Login failed. Check your information!!');
            }
        }

        $data['title'] = 'Login :D';
        $data['page'] = 'users/login';
        $this->load->myview('layout', $data, $this->get_dialog());
    }

    public function logout()
    {

        $this->session->sess_destroy();
        redirect(base_url());
        exit();
    }

    public function show($start = 0)
    {
        $this->auth->check(TRUE, 2, 3);

        $this->load->library('pagination');

        $config['base_url'] = base_url('/user/show/');
        $config['total_rows'] = model('user')->do_count();
        $config['per_page'] = 10;

        $config['full_tag_open'] = '<ul class="pagination">';
        $config['full_tag_close'] = '</ul>';
        $config['num_tag_open'] = '<li class="li_link">';
        $config['num_tag_close'] = '</li>';
        $config['prev_tag_open'] = '<li class="li_link">';
        $config['prev_tag_close'] = '</li>';
        $config['next_tag_open'] = '<li class="li_link">';
        $config['next_tag_close'] = '</li>';
        $config['last_tag_open'] = '<li class="li_link">';
        $config['last_tag_close'] = '</li>';
        $config['first_tag_open'] = '<li class="li_link">';
        $config['first_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<li class="active"><a href="#">';
        $config['cur_tag_close'] = '</a></li>';

        $this->pagination->initialize($config);

        $data['title'] = 'List all users :D';
        $data['users'] = model('user')->do_get('', '', '', ['user_name', 'ASC'], $config['per_page'], $start);
        $data['page'] = 'users/show';
        $data['pagination'] = $this->pagination->create_links();
        $data['my_js'] = 'users/show.js';

        $this->load->myview('layout_admin', $data, $this->get_dialog());
    }

    public function ajax_delete()
    {
        $this->auth->check(TRUE, 2, 3);
        header('Content-Type: application/json');

        $arr = json_decode($this->input->post('json'));
        model('user')->do_delete($arr);

        echo json_encode(array('success' => 'You have deleted successfully! XD'));
    }
}
