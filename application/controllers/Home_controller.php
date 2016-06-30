<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 14/05/2016
 * Time: 08:25
 */
class Home_controller extends MY_Controller{
    public function __construct(){
        parent::__construct('cate_model');
    }
    public function index($cate=14){
        $this->load->model(['detail_model','spec_model','vendor_model']);

        $products = $this->cate_model->do_get(
            ['cates.id' => $cate],
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
        }

        $data['title'] = 'Trust - Fast - Reliable';
        $data['page'] = 'homes/index';
        $data['my_js'] = 'homes/index.js';
        $data['cates'] = $this->cate_model->do_get();

        $this->load->myview('layout', $data);
    }
    public function landing(){
        $data['title'] = 'Trust - Fast - Reliable';
        $data['page'] = 'homes/landing';
        $data['my_js'] = 'products/main.js';
        $data['is_welcome'] = true;

        $data['cates'] = $this->cate_model->do_get();

        $this->load->myview('layout', $data);
    }
}