<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Product_model extends MY_Model
{
    public function __construct()
    {
        parent::__construct('products');
    }

    public function product_mix($product_id){

        $product = model('product')->do_get(['products.id'=>$product_id],
            [
                ['join_table' => 'cates', 'join_cond' => 'products.product_cate=cates.id'],
                ['join_table' => 'vendors', 'join_cond' => 'products.product_vendor=vendors.id']
            ],
            ['products.id','product_slug','product_price','product_img','product_discount','product_name','cate_slug','vendor_slug']
        )[0];

        $details = model('detail')->get_details($product_id);

        $product['details'] = $details;

        return $product;
    }

    public function get_new_products($cate,$num = 10)
    {
        $products = model('product') -> do_get(['product_cate'=>$cate],'',['products.id'],['product_date','DESC'],$num);
        return $products;
    }
}