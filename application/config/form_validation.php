<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$config = array(
    // *********************************** User controller Rules **************************
    'user/login' => array(
        array(
            'field' => 'txtuser',
            'label' => 'Username',
            'rules' => 'required|alpha_numeric'
        ),
        array(
            'field' => 'txtpass',
            'label' => 'Password',
            'rules' => 'required'
        )
    ),
    'user/create' => array(
        array(
            'field' => 'txtuser',
            'label' => 'Username',
            'rules' => 'required|alpha_numeric|is_unique[users.user_name]|min_length[3]|max_length[12]'
        ),
        array(
            'field' => 'txtpass',
            'label' => 'Password',
            'rules' => 'required|min_length[6]|max_length[15]'
        ),
        array(
            'field' => 'txtmail',
            'label' => 'Email',
            'rules' => 'required|valid_email|is_unique[users.user_mail]|min_length[6]|max_length[30]'
        ),
        array(
            'field' => 'intlevel',
            'label' => 'Level',
            'rules' => 'required|in_list[1,2,3]'
        )
    ),
    'user/edit' => array(
        array(
            'field' => 'txtuser',
            'label' => 'Username',
            'rules' => 'required|alpha_numeric|is_unique[users.user_name]|min_length[3]|max_length[12]'
        ),
        array(
            'field' => 'txtpass',
            'label' => 'Password',
            'rules' => 'required|min_length[6]|max_length[15]'
        ),
        array(
            'field' => 'txtmail',
            'label' => 'Email',
            'rules' => 'required|valid_email|is_unique[users.user_mail]|min_length[6]|max_length[30]'
        ),
        array(
            'field' => 'intlevel',
            'label' => 'Level',
            'rules' => 'required|in_list[1,2,3]'
        )
    ),
    // *********************************** Cate controller Rules **************************
    'cate/create' => array(
        array(
            'field' => 'txtcate',
            'label' => 'Category',
            'rules' => 'required|min_length[3]|max_length[30]|is_unique[cates.cate_name]|alpha_numeric_spaces'
        )
    ),
    'cate/edit' => array(
        array(
            'field' => 'txtcate',
            'label' => 'Category',
            'rules' => 'required|min_length[3]|max_length[30]'
        ),
        array(
            'field' => 'txticon',
            'label' => 'Icon',
            'rules' => 'required'
        )
    ),

    // *********************************** Gifts controller Rules **************************
    'gift/create' => array(
        array(
            'field' => 'txtcontent',
            'label' => 'Gift content',
            'rules' => 'required|min_length[5]|max_length[1500]'
        ),
        array(
            'field' => 'txtstartdate',
            'label' => 'Start date',
            'rules' => 'max_length[50]'
        ),
        array(
            'field' => 'txtenddate',
            'label' => 'End date',
            'rules' => 'max_length[50]'
        )
    ),
    'gift/edit' => array(
        array(
            'field' => 'txtcontent',
            'label' => 'Gift content',
            'rules' => 'required|min_length[5]|max_length[1500]'
        ),
        array(
            'field' => 'txtstartdate',
            'label' => 'Start date',
            'rules' => 'max_length[50]'
        ),
        array(
            'field' => 'txtenddate',
            'label' => 'End date',
            'rules' => 'max_length[50]'
        )
    ),

    // *********************************** Spec controller Rules **************************
    'spec/create' => array(
        array(
            'field' => 'txtname',
            'label' => 'Spec name',
            'rules' => 'required|is_unique[specs.spec_name]'
        ),
        array(
            'field' => 'txtunit',
            'label' => 'Spec unit',
            'rules' => ''
        ),
        array(
            'field' => 'txtpresetvalue',
            'label' => 'Spec preset value',
            'rules' => 'required'
        )
    ),
    'spec/edit' => array(
        array(
            'field' => 'txtname',
            'label' => 'Spec name',
            'rules' => 'required'
        ),
        array(
            'field' => 'txtunit',
            'label' => 'Spec unit',
            'rules' => 'required'
        ),
        array(
            'field' => 'txtpresetvalue',
            'label' => 'Spec preset value',
            'rules' => 'required'
        )
    ),
    // *********************************** Vendor controller Rules **************************
    'vendor/create' => array(
        array(
            'field' => 'txtvendor',
            'label' => 'Vendor',
            'rules' => 'required|min_length[2]|max_length[30]|is_unique[vendors.vendor_name]|alpha_numeric_spaces'
        ),
        array(
            'field' => 'intcate',
            'label' => 'Category',
            'rules' => 'required|numeric'
        )
    ),
    // *********************************** Product controller Rules **************************
    'product/create' => array(
        array(
            'field' => 'txtname',
            'label' => 'Product name',
            'rules' => 'required|min_length[3]|max_length[200]|is_unique[products.product_name]|alpha_numeric_spaces'
        ),
        array(
            'field' => 'intprice',
            'label' => 'Product price',
            'rules' => 'required|numeric'
        ),
        array(
            'field' => 'intdiscount',
            'label' => 'Product discount',
            'rules' => 'numeric'
        ),
        array(
            'field' => 'intvendor',
            'label' => 'Vendor',
            'rules' => 'required|numeric'
        ),
        array(
            'field' => 'intcate',
            'label' => 'Category',
            'rules' => 'required|numeric'
        ),
        array(
            'field' => 'txtdate',
            'label' => 'Vendor',
            'rules' => 'required'
        ),
        array(
            'field' => 'txtinfo',
            'label' => 'Category',
            'rules' => 'required|min_length[100]'
        )
    ),
    'product/edit' => array(
        array(
            'field' => 'txtname',
            'label' => 'Product name',
            'rules' => 'required|min_length[3]|max_length[200]|alpha_numeric_spaces'
        ),
        array(
            'field' => 'intprice',
            'label' => 'Product price',
            'rules' => 'required|numeric'
        ),
        array(
            'field' => 'intdiscount',
            'label' => 'Product discount',
            'rules' => 'numeric'
        ),
        array(
            'field' => 'intvendor',
            'label' => 'Vendor',
            'rules' => 'required|numeric'
        ),
        array(
            'field' => 'intcate',
            'label' => 'Category',
            'rules' => 'required|numeric'
        ),
        array(
            'field' => 'txtdate',
            'label' => 'Vendor',
            'rules' => 'required'
        ),
        array(
            'field' => 'txtinfo',
            'label' => 'Product info',
            'rules' => 'required|min_length[100]'
        )
    ),
    'product/search' => array(
        array(
            'field' => 'intvendor',
            'label' => 'Vendor',
            'rules' => 'numeric'
        ),
        array(
            'field' => 'txtname',
            'label' => 'Product name',
            'rules' => 'alpha_numeric_spaces'
        ),
        array(
            'field' => 'intprice_min',
            'label' => 'Min price',
            'rules' => 'numeric'
        ),
        array(
            'field' => 'intprice_max',
            'label' => 'Max price',
            'rules' => 'numeric'
        ),
        array(
            'field' => 'spec[]',
            'label' => 'Spec value',
            'rules' => 'numeric'
        )
    ),
    // *********************************** Image controller Rules **************************
    'image/create' => array(
        array(
            'field' => 'intproduct',
            'label' => 'Product ID',
            'rules' => 'required|numeric'
        )
    ),
    // *********************************** Comment controller Rules **************************

    'comment/create' => array(
        array(
            'field' => 'txtguest',
            'label' => 'Your name',
            'rules' => 'required|alpha_numeric_spaces|max_length[15]'
        ),
        array(
            'field' => 'txtcontent',
            'label' => 'Your comment',
            'rules' => 'required|min_length[10]|max_length[500]|htmlspecialchars|trim|encode_php_tags'
        ),
        array(
            'field' => 'intproduct',
            'label' => 'Secret iD',
            'rules' => 'numeric'
        ),
        array(
            'field' => 'intparent',
            'label' => 'Parent iD',
            'rules' => 'numeric'
        )
    ),
    // *********************************** Cart controller Rules **************************

    'cart/add_item' => array(
        array(
            'field' => 'product_id',
            'label' => 'Product ID',
            'rules' => 'required|numeric'
        ),
        array(
            'field' => 'product_name',
            'label' => 'Product name',
            'rules' => 'required|alpha_numeric_spaces'
        ),
        array(
            'field' => 'product_price',
            'label' => 'Product price',
            'rules' => 'required|numeric'
        ),
    ),
    'cart/check_out' => array(
        array(
            'field' => 'txtname',
            'label' => 'Your name',
            'rules' => 'required|alpha_numeric_spaces|min_length[5]'
        ),
        array(
            'field' => 'txtaddress',
            'label' => 'Your address',
            'rules' => 'required|alpha_numeric_spaces|min_length[5]'
        ),
        array(
            'field' => 'intphone',
            'label' => 'Your phone',
            'rules' => 'required|numeric|min_length[9]'
        ),
        array(
            'field' => 'txtnote',
            'label' => 'Note',
            'rules' => ''
        ),
    )


);
