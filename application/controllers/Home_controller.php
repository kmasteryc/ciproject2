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
    public function index(){
        $this->load->model(['detail_model','spec_model','vendor_model','report_model','product_model']);

        $toplastweek = $this->report_model->getlastweekreport();

        foreach ($toplastweek as $cate=>$items) {
            $cate_get = $this->cate_model->do_get($cate)[0];
            $toplastweek[$cate_get['cate_name']] = $toplastweek[$cate];
            unset($toplastweek[$cate]);
//            $products = $this->cate_model->do_get(
//                ['cates.id' => $cate],
//                [
//                    ['join_table' => 'products', 'join_cond' => 'products.product_cate=cates.id'],
//                    ['join_table' => 'vendors', 'join_cond' => 'products.product_vendor=vendors.id']
//                ],
//                ['cate_name,vendor_slug,products.id,product_name,product_slug,product_price,product_img,product_discount']
//            );
            foreach ($items as $product_id => $product_sold){
                $product = $this->product_model->do_get(['products.id'=>$product_id],
                    [
                        ['join_table' => 'cates', 'join_cond' => 'products.product_cate=cates.id'],
                        ['join_table' => 'vendors', 'join_cond' => 'products.product_vendor=vendors.id']
                    ],
                    ['products.id','product_slug','product_price','product_img','product_discount','product_name','cate_slug','vendor_slug']
                )[0];

                if ($product) {
                    $details = $this->detail_model->do_get(
                        [
                            'detail_product' => $product_id
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
                    $toplastweek[$cate_get['cate_name']][$product_id] = array_merge($product, ['details' => $details]);
                }
            }
        }

        $data['products'] = $toplastweek;
        $data['vendors'] = $this->vendor_model->do_get('',[
            [
                'join_table' => 'cates',
                'join_cond' => 'cates.id=vendors.vendor_cate'
            ],
        ]);
        $data['specs'] = $this->spec_model->do_get();

        $data['title'] = my_config('slogan');
        $data['page'] = 'homes/index';
        $data['my_js'] = ['homes/index.js','products/main.js'];
        $data['cates'] = $this->cate_model->do_get()[0];

        $this->load->myview('layout', $data);
    }
}