<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 5/4/2016
 * Time: 10:26 PM
 */
class Detail_model extends MY_Model{
    public function __construct(){
        parent::__construct('details');
    }
    public function get_details($product_id){
        return $this->do_get(
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
    }
}