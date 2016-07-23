<?php

class Comment_Controller extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        echo 'COMMENT INDEX';
    }

    public function ajax_delete($cid)
    {
        $this->auth->check(TRUE, 2, 3);
        model('comment')->do_delete($cid);
    }

    public function create($productid)
    {
        $this->load->library('form_validation');
        $this->load->helper('form');

        if ($this->input->post()) {

            $recaptcha = new \ReCaptcha\ReCaptcha($this->config->item('recaptcha_secret_key'));

            $resp = $recaptcha->verify($this->input->post('g-recaptcha-response'));

            if ($resp->isSuccess()) {

                if ($this->form_validation->run('comment/create') === TRUE) {

                    $username = $this->auth->whoareyou('user');
                    $userid = $this->auth->whoareyou('id');
                    $parent = $this->input->post('intparent');

                    if ($username != -1) {
                        $insert['comment_user'] = $userid;
                    } else {
                        $insert['comment_user'] = 1;
                        $insert['comment_guest'] = $this->input->post('txtguest');
                        $this->session->set_userdata('guest',$insert['comment_guest']);
                    }
                    if ($parent != ''){
                        $insert['comment_parent'] = $parent;
                    }


                    $insert['comment_product'] = $this->input->post('intproduct');
                    $insert['comment_content'] = $this->input->post('txtcontent');
                    $insert['comment_time'] = date('Y-m-d G:i:s');
                    model('comment')->do_insert($insert);

                    $message = success('Comment successfully');

                } else {
                    $message = fail(validation_errors());
                }
            } else {
                if ($resp->getErrorCodes()[0]) {
                    $message = fail("Please check I'm not robot below");
                }
            }
            header('Content-Type: application/json');
            echo json_encode(array('message' => $message));
        } else {
            $this->load->view('comments/create', array('productid' => $productid));
        }
    }

    public function show_comment($productid = '', $start = 0)
    {
        $this->load->library('pagination');

        $config['base_url'] = base_url("comment/show_comment/$productid/");
        $config['total_rows'] = count(model('comment')->do_get(
            [
            'comment_product' => $productid,
                'comment_parent' => NULL
            ]
        ));
        $config['per_page'] = 6;
        $config['uri_segment'] = 4; // IMPORTAIN!!!!!!!!!!
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

        $comments = model('comment')->do_get(
            [
                'comment_product' => $productid,
                'comment_parent' => NULL
            ],
            [
                [
                    'join_table' => 'users',
                    'join_cond' => 'users.id=comments.comment_user'
                ]
            ],
            ['users.id AS uid', 'comments.id as cid','comment_guest', 'comment_content', 'comment_time', 'user_name','user_level'],
            ['comment_time', 'DESC'],
            $config['per_page'],
            $start
            );
        $comments_bak = $comments;

        foreach ($comments as $key => $comment)
        {
            $child = model('comment')->do_get(
                ['comment_parent'=>$comment['cid']],
                [
                    [
                        'join_table' => 'users',
                        'join_cond' => 'users.id=comments.comment_user'
                    ]
                ],
                ['users.id AS uid', 'comments.id as cid', 'comment_parent','comment_guest', 'comment_content', 'comment_time', 'user_name','user_level'],
                ['comment_time', 'ASC']
            );
            if ($child){
                $comments_bak[$key]['comment_child'] = $child;
            }
        }
        $data['comments']=$comments_bak;
        $this->load->view('comments/show_comment', $data);
    }

    public function ajax_edit($id)
    {
        $this->auth->check(TRUE, 2, 3);

        $this->load->library('form_validation');

        header('Content-Type: application/json');

        if ($this->form_validation->run('cate/ajax_edit') === FALSE) {

            echo json_encode([
                'fail' => validation_errors(' ', ' ')
            ]);

        } else {
            $update = [
                'cate_name' => $this->input->post('txtcate'),
                'cate_slug' => url_title($this->input->post('txtcate')),
            ];
            model('cate')->do_update($id, $update);

            echo json_encode([
                'success' => 'Edited successfully! XD'
            ]);

        }
    }

    public function test()
    {
        print_r(func_get_args());
    }

}
