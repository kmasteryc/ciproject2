<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 14/05/2016
 * Time: 08:25
 */
class Home_controller extends MY_Controller{
    public function __construct(){
        parent::__construct();
    }
    public function index(){

        $toplastweek = model('report')->getLastWeekReport();

        foreach ($toplastweek as $cate=>$items) {
            
            $cate_get = model('cate')->do_get($cate)[0];
            $toplastweek[$cate_get['cate_name']] = $toplastweek[$cate];
            unset($toplastweek[$cate]);

            foreach ($items as $product_id => $product_sold){
                $all_products[$cate_get['cate_name']]['hot_products'][$product_id] = model('product')->product_mix($product_id);
            }

            $new_products = model('product')->get_new_products($cate,8);

            foreach ($new_products as $new_product){
                $all_products[$cate_get['cate_name']]['new_products'][$new_product['id']] = model('product')->product_mix($new_product['id']);
            }
        }
        $data['products'] = $all_products;

        $data['vendors'] = model('vendor')->with_cate();
        $data['title'] = my_config('slogan');
        $data['page'] = 'homes/index';
        $data['my_js'] = ['homes/index.js','products/main.js'];

        $this->load->myview('layout', $data);
    }
}