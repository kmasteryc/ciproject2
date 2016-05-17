<?php

class Spec_Controller extends MY_Controller
{
    public function __construct()
    {
        parent::__construct('spec_model');
    }

    public function ajax_delete()
    {
        $this->auth->check(TRUE, 2, 3);
        $id = $this->input->post('id');
        $this->spec_model->do_delete($id);
    }

    public function popup_choose()
    {
        $data['specs'] = $this->spec_model->do_get();
        $this->load->view('specs/popup_choose',$data);
    }

    public function create()
    {
        $this->auth->check(TRUE, 2, 3);

        $this->load->library('form_validation');
        $this->load->helper('form');

        if ($this->form_validation->run('spec/create') === TRUE) {
            $this->session->set_flashdata('success', 'Create spec successfully XD');

            $insert = [
                'spec_name' => $this->input->post('txtname'),
                'spec_unit' => $this->input->post('txtunit'),
                'spec_presetvalue' => $this->input->post('txtpresetvalue'),
            ];

            $this->spec_model->do_insert($insert);
        }

        $data['title'] = 'Create spec :D';
        $data['page'] = 'specs/create';
        $this->load->myview('layout_admin', $data, $this->get_dialog());
    }

    public function edit($id)
    {
        $this->auth->check(TRUE, 2, 3);

        $this->load->library('form_validation');
        $this->load->helper('form');

        if ($this->input->post()) {
            if ($this->form_validation->run('spec/edit') === TRUE) {
                $this->session->set_flashdata('success', 'Create spec successfully XD');

                $update = [
                    'spec_name' => $this->input->post('txtname'),
                    'spec_unit' => $this->input->post('txtunit'),
                    'spec_presetvalue' => $this->input->post('txtpresetvalue'),
                ];

                $this->spec_model->do_update($id, $update);
            }
        }

        $data['spec'] = $this->spec_model->do_get($id);
        $data['title'] = 'Edit spec :D';
        $data['page'] = 'specs/edit';

        $this->load->myview('layout_admin', $data, $this->get_dialog());
    }

    public function show($start = 0)
    {

        $this->auth->check(TRUE, 2, 3);

        $data['title'] = 'List all specs :D';
        $data['specs'] = $this->spec_model->do_get();
        $data['page'] = 'specs/show';
        $data['my_js'] = 'specs/show.js';

        $this->load->myview('layout_admin', $data, $this->get_dialog());
    }
}
