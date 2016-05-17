<?php

class Cart_controller extends MY_Controller
{
    public function __construct()
    {
        parent::__construct('bill_model');
        $this->load->library('cart');
    }

    public function add_item()
    {
        $this->load->library('form_validation');

        if ($this->form_validation->run('cart/add_item') === TRUE) {
            $data = array(
                'id' => $this->input->post('product_id'),
                'qty' => 1,
                'price' => $this->input->post('product_price'),
                'name' => $this->input->post('product_name')
            );
            $this->cart->insert($data);
        }
        print_r($this->cart->contents());
    }

    public function show_cart()
    {
        if ($this->input->post()) {

            foreach ($this->input->post() as $item) {
                $update[] = array("rowid" => $item['rowid'], "qty" => abs($item['qty']));
            }
            if ($this->cart->update($update)) {
                echo success("Update successfully!");
            } else {
                echo fail("Update fail! Check your detail");
            }
        }
        $this->load->view('carts/show_cart');
    }

    public function check_out(){
        if ($this->input->post()){

            $this->load->library('form_validation');

//            echo "<pre>";
//            print_r($this->input->post());
//            echo "</pre>";

            if ($this->form_validation->run('cart/check_out') === TRUE){

                if ($this->cart->contents()){


                $products = '';

                foreach ($this->cart->contents() as $item){
                    $products[$item['rowid']]['product_id'] = $item['id'];
                    $products[$item['rowid']]['product_name'] = $item['name'];
                    $products[$item['rowid']]['product_quantity'] = $item['qty'];
                    $products[$item['rowid']]['product_price'] = $item['price'];
                    $products[$item['rowid']]['product_subtotal'] = $item['subtotal'];
                }
                $insert['bill_products'] = json_encode($products);

                $stages = [
                    1=> [
                        'state_time' => date('Y-m-d G:i:s'),
                        'state_commiter' => $insert['bill_name'] = $this->input->post('txtname')
                    ],
                    0,
                    0,
                    0];
                $insert['bill_state'] = json_encode($stages);

                $insert['bill_total'] = $this->cart->total();
                $insert['bill_done'] = 0;
                $insert['bill_name'] = $this->input->post('txtname');
                $insert['bill_address'] = $this->input->post('txtaddress');
                $insert['bill_phone'] = $this->input->post('intphone');
                $insert['bill_note'] = $this->input->post('txtnote');

//                echo "<pre>";
//                print_r(json_decode($insert['bill_state']));
//                echo "</pre>";

                    $this->bill_model->do_insert($insert);

                    $this->cart->destroy();

                    $this->session->set_flashdata('success',' Your request has been submited. Wait for confirmation from our seller');
                    redirect(base_url('bill/detail/'.$this->db->insert_id()));

                }
                else
                {
                    $this->session->set_flashdata('fail','Your cart is empty!');
                }
            }
        }
        $data['title'] = 'Trust - Fast - Reliable';

        $data['page'] = 'carts/check_out';
        $data['my_js'] = 'products/main.js';

        $this->load->myview('layout', $data);

    }

    public function reset_cart()
    {
        $this->cart->destroy();
        $this->load->view('carts/show_cart');
    }
}