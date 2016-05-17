<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Product_controller extends MY_Controller
{

    public function __construct()
    {
        parent::__construct('product_model');
    }

    public function view_cate($cate)
    {
        $this->load->model(['detail_model','spec_model','vendor_model']);

        $products = $this->cate_model->do_get(
            ['cate_slug' => $cate],
            [
                ['join_table' => 'products', 'join_cond' => 'products.product_cate=cates.id'],
                ['join_table' => 'vendors', 'join_cond' => 'products.product_vendor=vendors.id']
            ],
            ['cate_name,vendor_slug,products.id,product_name,product_slug,product_price,product_img,product_discount']
        );

        if ($products) {
            foreach ($products as $product) {
                $details = $this->detail_model->do_get(
                    [
                        'detail_product' => $product['id']
                    ],
                    [
                        [
                            'join_table' => 'specs',
                            'join_cond' => 'details.detail_spec=specs.id'
                        ]
                    ],
                    ['spec_name,spec_unit,detail_value'],
                    0,
					7
                );
                $result[] = array_merge($product, ['details' => $details]);
            }



            $data['cateslug'] = $cate;
            $data['catename'] = $products[0]['cate_name'];
            $data['products'] = $result;
            $data['vendors'] = $this->vendor_model->do_get('', '', ['vendor_name', 'id']);
            $data['specs'] = $this->spec_model->do_get();
        }else{
            $data['products'] = '';
        }
        $data['title'] = 'Trust - Fast - Reliable';
        $data['page'] = 'products/view_cate';
        $data['my_js'] = 'products/main.js';

        $this->load->myview('layout', $data);
    }

    public function view_vendor($cateslug, $vendor)
    {
        $this->load->model(['detail_model', 'vendor_model', 'cate_model','spec_model']);

        $products = $this->vendor_model->do_get(
            ['vendor_slug' => $vendor],
            [
                ['join_table' => 'products', 'join_cond' => 'products.product_vendor=vendors.id'],
                ['join_table' => 'cates', 'join_cond' => 'vendors.vendor_cate=cates.id']
            ],
            ['vendor_name,cate_name,vendor_slug,products.id,product_name,product_slug,product_price,product_img,product_discount']
        );

        if ($products) {
            foreach ($products as $product) {
                $details = $this->detail_model->do_get(
                    [
                        'detail_product' => $product['id']
                    ],
                    [
                        [
                            'join_table' => 'specs',
                            'join_cond' => 'details.detail_spec=specs.id'
                        ]
                    ],
                    ['spec_name,spec_unit,detail_value'],
					0,
					7);
                $result[] = array_merge($product, ['details' => $details]
                );
            }
            $vendorname = $products[0]['vendor_name'];
            $catename = $products[0]['cate_name'];
            $data['title'] = $vendorname;
            $data['vendorname'] = $vendorname;
            $data['cateslug'] = $cateslug;
            $data['catename'] = $catename;

            $data['vendorslug'] = $vendor;
            $data['products'] = $result;
        }
        else
        {
            $data['title'] = 'Nothing here';
            $data['products'] = '';
        }


        $data['vendors'] = $this->vendor_model->do_get('', '', ['vendor_name', 'id']);
        $data['specs'] = $this->spec_model->do_get();


        $data['page'] = 'products/view_vendor';
        $data['my_js'] = 'products/main.js';


        $this->load->myview('layout', $data, $this->get_dialog());
    }

    public function view_product($cateslug, $vendorslug, $productslug)
    {
        $this->load->model(['detail_model', 'spec_model', 'cate_model', 'vendor_model', 'gift_product_model']);

        $product = $this->product_model->do_get(['product_slug' => $productslug])[0];

        $details = $this->detail_model->do_get(
            [
                'detail_product' => $product['id']
            ],
            [
                [
                    'join_table' => 'specs',
                    'join_cond' => 'details.detail_spec=specs.id'
                ]
            ],
            ['spec_name,spec_unit,detail_value']
        );


        $gifts = $this->gift_product_model->do_get(
            ['product_id'=>$product['id']],
            [
                [
                    'join_table' => 'gifts',
                    'join_cond' => 'gifts.id=gift_product.gift_id'
                ]
            ]
            );

        // Merge detail to product
        $result = array_merge($product, ['details' => $details]);

        // Merge gift to product
        $result = array_merge($result, ['gifts' => $gifts]);

        $data['title'] = $product['product_name'];

        $data['cateslug'] = $cateslug;
        $data['vendorslug'] = $vendorslug;

        $data['catename'] = $this->cate_model->do_get($product['product_cate'])[0]['cate_name'];
        $data['cateicon'] = $this->cate_model->do_get($product['product_cate'])[0]['cate_icon'];
        $data['vendorname'] = $this->vendor_model->do_get($product['product_vendor'])[0]['vendor_name'];

        $data['product'] = $result;
        $data['page'] = 'products/view_product';



        $customjs = "product_id = " . $product['id'] . ";";
        $data['customjs'] = $customjs;
        $data['my_js'] = 'products/main.js';


        $this->load->myview('layout', $data);
    }

    public function create()
    {
        $this->load->model(['spec_model', 'detail_model']);
        $this->load->library('form_validation');
        $this->load->helper('form');

        $this->session->set_userdata('KCFINDER', array('disabled' => false));
        $this->auth->check(TRUE, 2, 3);

        if ($this->input->post()) {
            if ($_FILES['userfile']['name']) {
                if ($this->form_validation->run('product/create') === TRUE) {
                    $insert = [
                        'product_name' => $this->input->post('txtname'),
                        'product_slug' => url_title($this->input->post('txtname')),
                        'product_price' => $this->input->post('intprice'),
                        'product_discount' => $this->input->post('intdiscount'),
                        'product_vendor' => $this->input->post('intvendor'),
                        'product_cate' => $this->input->post('intcate'),
                        'product_date' => $this->input->post('txtdate'),
                        'product_info' => $this->input->post('txtinfo')
                    ];

                    $this->product_model->do_insert($insert);
                    $lastid = $this->db->insert_id();

                    // Get last insert ID
                    $id = $this->db->insert_id();
                    // String path for upload
                    $dir = FCPATH . "public/images/products/$id";
                    // Create folder if its not exist
                    if (!is_dir($dir)) mkdir($dir);
                    if (!is_dir($dir . '/thumbs')) mkdir($dir . '/thumbs');

                    $config['upload_path'] = $dir;
                    $config['allowed_types'] = 'gif|jpg|png';
                    $config['max_size'] = 5000;
                    $config['max_width'] = 5000;
                    $config['max_height'] = 5000;
                    $this->load->library('upload', $config);

                    if ($this->upload->do_upload("userfile")) {
                        // Do upload and set success dialog
                        $data = $this->upload->data();
                        $this->session->set_flashdata('success', 'Create product successfully XD');
                        // Update specs table
                        $speckeys = explode(',', $this->input->post('speckeys'));
                        $specvalues = explode(',', $this->input->post('specvalues'));

                        foreach ($speckeys as $specid => $speckey) {
                            $spec = $this->spec_model->do_get($speckey);
                            $oldpreset = to_array($spec[0]['spec_presetvalue']);
                            $newpreset = $specvalues[$specid];

                            // Insert new preset if its not exist
                            if (!in_array($newpreset, $oldpreset)) {

                                array_push($oldpreset, $newpreset);
                                $newnewpreset = array_unique($oldpreset);
                                $newnewpreset = implode(';', $newnewpreset);

                                $update = [
                                    'spec_presetvalue' => $newnewpreset
                                ];

                                $this->spec_model->do_update($speckey, $update);

                            }

                            // Insert into details table
                            $insert_detail = [
                                'detail_product' => $lastid,
                                'detail_spec' => $speckey,
                                'detail_value' => $specvalues[$specid]
                            ];
                            $this->detail_model->do_insert($insert_detail);
                        }
                        // Create thumbnail.
                        $img = new Eventviva\ImageResize($data['full_path']);
                        $img->resize(150, 150);
                        $thumb = $data['file_path'] . 'thumbs/' . $data['raw_name'] . $data['file_ext'];
                        $img->save($thumb);
                        // Update product table with new product image
                        $this->product_model->do_update($id, array('product_img' => $data['file_name']));

                    } else {
                        $this->product_model->do_delete($id);
                        $this->session->set_flashdata('fail', $this->upload->display_errors());
                    }

                } else {
                    $this->session->set_flashdata("fail", "Check infomation below !");
                }
            } else {
                $this->session->set_flashdata("fail", "Please choose product image !");
            }
        }


        $data['specs'] = $this->spec_model->do_get();
        $data['title'] = 'Create product';
        $data['page'] = 'products/create';
        $data['my_js'] = 'products/create.js';

        $this->load->myview('layout_admin', $data, $this->get_dialog());
    }


    public function edit($id = '')
    {
        $this->load->model(['detail_model', 'spec_model']);
        $this->load->library('form_validation');
        $this->load->helper('form');

        $this->session->set_userdata('KCFINDER', array('disabled' => false));
        $this->auth->check(TRUE, 2, 3);

        if ($this->input->post()) {
            if ($this->form_validation->run('product/edit') === TRUE) {

                $this->session->set_flashdata('success', 'Update product successfully XD');

                $update = [
                    'product_name' => $this->input->post('txtname'),
                    'product_slug' => url_title($this->input->post('txtname')),
                    'product_price' => $this->input->post('intprice'),
                    'product_discount' => $this->input->post('intdiscount'),
                    'product_vendor' => $this->input->post('intvendor'),
                    'product_cate' => $this->input->post('intcate'),
                    'product_date' => $this->input->post('txtdate'),
                    'product_info' => $this->input->post('txtinfo')
                ];

                $this->product_model->do_update($id, $update);

                // Update specs table if new specs are defined
                $speckeys = explode(',', $this->input->post('speckeys'));
                $specvalues = explode(',', $this->input->post('specvalues'));

                foreach ($speckeys as $specid => $speckey) {

                    $spec = $this->spec_model->do_get($speckey);
                    $oldpreset = to_array($spec[0]['spec_presetvalue']);
                    $newpreset = $specvalues[$specid];
                    // Insert new preset if its not exist
                    if (!in_array($newpreset, $oldpreset)) {

                        array_push($oldpreset, $newpreset);
                        $newnewpreset = array_unique($oldpreset);
                        $newnewpreset = implode(';', $newnewpreset);

                        $update = array(
                            'spec_presetvalue' => $newnewpreset
                        );
                        $this->spec_model->do_update($speckey, $update);

                    }
                    // Update details table
                    $update_detail = [
                        'detail_value' => $specvalues[$specid]
                    ];

					// Check if there has previous value => update
					if ($this->detail_model->do_get(['detail_product' => $id, 'detail_spec' => $speckey]))
					{
						// Use 2 primary keys on where clause
						$this->detail_model->do_update(array('detail_product' => $id, 'detail_spec' => $speckey), $update_detail);
					}
					else // else insert new value
					{
						$this->detail_model->do_insert(['detail_product' => $id, 'detail_spec' => $speckey, 'detail_value' => $specvalues[$specid]]);
					}
                }
                // Do if change product image
                if ($_FILES['userfile']['name']) {
                    echo "I am here";
                    // String path for upload
                    $dir = FCPATH . "public/images/products/$id/";
                    // Create folder if its not exist
                    if (!is_dir($dir)) mkdir($dir);
                    $config = [
                        'upload_path' => $dir,
                        'allowed_types' => 'gif|jpg|png',
                        'max_size' => 5000,
                        'max_width' => 5000,
                        'max_height' => 5000,
                    ];
                    $this->load->library('upload', $config);

                    if ($this->upload->do_upload("userfile")) {

                        // Do upload and set success dialog
                        $data = $this->upload->data();
                        $this->session->set_flashdata('success', 'Update product successfully XD');

                        //Delete old img
                        @unlink($dir . $this->input->post('txtoldimg'));
                        @unlink($dir . 'thumbs/' . $this->input->post('txtoldimg'));

                        $data = $this->upload->data();

                        // Create thumbnail.
                        $img = new Eventviva\ImageResize($data['full_path']);
                        $img->resize(150, 150);
                        $thumb = $data['file_path'] . 'thumbs/' . $data['file_name'];
                        $img->save($thumb);
                        // Update product table with new product image
                        $this->product_model->do_update($id, array('product_img' => $data['file_name']));

                    } else {
                        //$this->product_model->do_delete($id);
                        $this->session->set_flashdata('fail', $this->upload->display_errors());
                    }
                }
            } else {
                $this->session->set_flashdata("fail", "Check infomation below !");
            }
        }

        // Get detail by product ID
        $details = $this->detail_model->do_get(
            ['detail_product' => $id],
            [
                [
                    'join_table' => 'specs',
                    'join_cond' => 'specs.id=details.detail_spec'
                ]
            ]
        );

        if ($details) {
            $data['details'] = $details;
        }

        $data['product'] = $this->product_model->do_get($id);

        $data['title'] = 'Edit product ' . $id;
        $data['page'] = 'products/edit';
        $data['my_js'] = 'products/create.js';

        $this->load->myview('layout_admin', $data, $this->get_dialog());
    }

    public function search_ajax()
    {
        $this->load->model(['detail_model', 'product_model', 'spec_model']);

        if ($this->input->get('txtsearch')) {

            $this->db->like('product_name', $this->input->get('txtsearch'));
            $products = $this->product_model->do_get(
                '',
                [
                    ['join_table' => 'vendors', 'join_cond' => 'products.product_vendor=vendors.id'],
                    ['join_table' => 'cates', 'join_cond' => 'products.product_cate=cates.id']
                ],
                ['cate_name,cate_slug,vendor_slug,products.id,product_name,product_slug,product_price,product_img'],
                ['product_date', 'DESC'],
                5
            );
        }
        $this->load->view('products/ajax_search',array('products'=>$products));
    }

    public function search()
    {
        $this->load->model(['detail_model', 'product_model', 'spec_model']);
        $this->load->library('form_validation');

        $cond = '';

        if ($this->input->get()) {

            $data = $this->input->get();
            $this->form_validation->set_data($data);
            if ($this->form_validation->run('product/search') === TRUE) {

                if ($this->input->get('intvendor')) {
                    $cond['product_vendor'] = $this->input->get('intvendor');
                }

                if ($this->input->get('txtname')) {
//                    $this->db->like('product_name', $this->input->get('txtname'));
                    $cond['product_name LIKE'] = '%' . $this->input->get('txtname') . "%";
                }

                if ($this->input->get('intprice_min')) {
                    $cond['product_price >='] = $this->input->get('intprice_min');

                }

                if ($this->input->get('intprice_max')) {
                    $cond['product_price <='] = $this->input->get('intprice_max');
                }


                // PROCESS ADVANCE SEARCH

                $need_product = 0;
                $has_result = FALSE;

                if ($this->input->get('spec')) {
                    foreach ($this->input->get('spec') as $spec_id => $spec_value) {

                        if ($spec_value > 0) {

                            $need_product++;

                            $get_product_with_spec = $this->detail_model->do_get(
                                [
                                    'detail_spec' => $spec_id,
                                    'detail_value' => $spec_value
                                ],
                                '',
                                ['detail_product']
                            );

                            if ($get_product_with_spec) {
                                $has_result = TRUE;
                                foreach ($get_product_with_spec as $a) {
                                    $after_product[$spec_id][] = $a['detail_product'];
                                    $one_result = $after_product[$spec_id];
                                }

                            }
                        }
                    }

                    if ($has_result) {
                        if ($need_product != count($after_product)) {
                            $final_product = '';
                        } else {
                            if (count($after_product) == 1) {
                                $final_product = $one_result;
                            } else {
                                $merge = call_user_func_array('array_intersect', $after_product);
                                $final_product = count($merge) >= 1 ? $merge : '';
                            }
                        }

                    } else {
                        $final_product = '';
                    }
                    if ($need_product > 0) {
                        $this->db->where_in('products.id', $final_product);
                    }
                }
                ////// END ADVANCED SEARCH    ////////////////////////

            }

			$products = $this->product_model->do_get(
                $cond,
                [
                    ['join_table' => 'vendors', 'join_cond' => 'products.product_vendor=vendors.id'],
                    ['join_table' => 'cates', 'join_cond' => 'products.product_cate=cates.id']
                ],
                ['cate_name,cate_slug,vendor_slug,products.id,product_name,product_slug,product_price,product_img']
            );

            if ($products) {
                foreach ($products as $product) {
                    $details = $this->detail_model->do_get(
                        [
                            'detail_product' => $product['id']
                        ],
                        [
                            [
                                'join_table' => 'specs',
                                'join_cond' => 'details.detail_spec=specs.id'
                            ]
                        ],
                        ['spec_name', 'spec_unit', 'detail_value'],
						0,
						7
                    );
                    $result[] = array_merge($product, ['details' => $details]);
                }
                $data['products'] = $result;
            }
        }


        $data['title'] = 'Search';


        $data['vendors'] = $this->vendor_model->do_get('', '', ['vendor_name', 'id']);
        $data['specs'] = $this->spec_model->do_get();

        $data['count_results'] = isset($products)?count($products):0;
        $data['page'] = 'products/search';
        $data['my_js'] = 'products/main.js';

        $this->load->myview('layout', $data);
    }

    public function show()
    {
        $this->auth->check(TRUE, 2, 3);

        $data['title'] = 'List all product :D';
        $data['products'] = $this->product_model->do_get('',[
            [
                'join_table' => 'cates',
                'join_cond' => 'cates.id=products.product_cate'
            ],
            [
                'join_table' => 'vendors',
                'join_cond' => 'vendors.id=products.product_vendor'
            ]
        ],
            ['products.id AS pid','product_name','product_price','product_discount','product_date','product_info','product_discount','vendor_name','vendors.id AS vid','cates.id as cid','cate_name']
            );
        $data['page'] = 'products/show';
        $data['my_js'] = 'products/show.js';

        $this->load->myview('layout_admin', $data, $this->get_dialog());
    }

    public function get_info($productid = 1)
    {
        $product = $this->product_model->do_get($productid);
        echo preg_replace('/(.*)<h1>(.*)<\/h1>/', ' ', $product[0]['product_info']);
    }

    public function ajax_delete()
    {
        $this->auth->check(TRUE, 2, 3);
        $this->load->library('form_validation');
        $this->form_validation->set_rules('id', 'ID', 'numeric|required');
        if ($this->form_validation->run() === TRUE) {
            $id = $this->input->post('id');
            $this->product_model->do_delete($id);
        }
    }

    public function test()
    {
        echo modules::run('test');
    }
}
