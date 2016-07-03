<div class="panel panel-primary">
    <div class="panel-heading">
        Invoice
    </div>
    <div class="panel-body">

        <div class="outer-section">


            <div id="print-area">
                <div class="row pad-top font-big">
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <i class="fa fa-modx fa-2x"></i> Trust - Fast phone store
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <strong>Support : </strong><?= my_config('site_email') ?><br/>
                        <strong>Call :</strong><?= my_config('sale_phone') ?><br/>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <strong><?= my_config('company') ?></strong>
                        <br/>
                        Address : <?=my_config('store_address')?>
                    </div>

                </div>
                <br/>
                <hr/>
                <div class="row text-center">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        This is an electronic generated receipt , for any issues please contact us
                    </div>
                </div>
                <hr/>

                <?php
                $states = json_decode($bill['bill_state'], TRUE);

                $complete_time = $states[4]['state_time'] ? $states[4]['state_time'] : 'In progress';
                ?>

                <div class="row ">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <h2>Client Details :</h2>
                        <h4><strong><?= $bill['bill_name'] ?></strong></h4>
                        <h4><?= $bill['bill_address'] ?></h4>
                        <h4><strong>Phone: </strong><?= $bill['bill_phone'] ?></h4>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <h2>Payment Details :</h2>
                        <h4><strong>Invoice No: </strong>#<?= $bill['id'] ?></h4>
                        <h4>Purchased Date: <?=$states[1]['state_time']?></h4>
                        <h4>Completed On: <?=$complete_time?></h4>
                        <h4><strong>Amount Paid : </strong><?= vnd($bill['bill_total']) ?> VND</h4>
                    </div>
                </div>
                <hr/>
                <br/>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <h4>Delivery status </h4>

                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th>State</th>
                                    <th>Time</th>
                                    <th>Commiter</th>
                                    <th>Status</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php


                                foreach ($states as $k => $state):
                                    echo "<tr>";
                                    switch ($k):
                                        case 1:
                                            echo "<td>Requesting</td>";
                                            break;
                                        case 2:
                                            echo "<td>Validating</td>";
                                            break;
                                        case 3:
                                            echo "<td>Shipping</td>";
                                            break;
                                        case 4:
                                            echo "<td>Done</td>";
                                            break;
                                        default:
                                            echo "<td>--</td>";
                                            break;
                                    endswitch;
                                    if ($state['state_time'] != 0) {
                                        echo "<td>$state[state_time]</td>";
                                        echo "<td>";
                                        if (is_numeric($state['state_commiter'])) {
                                            echo $this->user_model->do_get($state['state_commiter'])[0]['user_name'];
                                        } else {
                                            echo $bill['bill_name'];
                                        }
                                        echo "</td>";
                                        echo "<td>Done</td>";
                                    } else {
                                        echo "<td>Pending</td>";
                                        echo "<td>Pending</td>";
                                        echo "<td>Pending</td>";
                                    }
                                endforeach;
                                ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <h4>Product infomation</h4>

                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th>S. No.</th>
                                    <th>Products</th>
                                    <th>Quantity.</th>
                                    <th>Unit Price</th>
                                    <th>Sub Total</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php
                                $i = 1;
                                $products = json_decode($bill['bill_products'], TRUE);
//                                var_dump($products);exit();
                                foreach ($products as $product):
                                    echo "<tr>";
                                    echo "<td># $i</td>";
                                    echo "<td>$product[product_name]</td>";
                                    echo "<td>$product[product_quantity]</td>";
                                    echo "<td>" . vnd($product['product_price']) . "</td>";
                                    echo "<td>" . vnd($product['product_subtotal']) . "</td>";
                                    echo "</tr>";
                                endforeach;
                                ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>


                <hr/>
                <div class="row">
                    <div class="col-lg-9 col-md-9 col-sm-9" style="text-align: right; padding-right: 30px;">
                        Total Amount :
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3">
                        <strong><?= vnd($bill['bill_total']) ?></strong>
                    </div>
                </div>
                <hr/>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <strong>IMPORTANT INSTRUCTIONS :
                        </strong>
                        <h5># This is an electronic receipt so doesn't require any signature.</h5>
                        <h5># All perticulars are listed with 10 % taxes , so if any issue please contact us
                            immediately.</h5>
                        <h5># You can contact us between 10:am to 6:00 pm on all working days.</h5>
                    </div>
                </div>

            </div>
            <hr/>
        </div>

    </div>
    <div class="panel-footer">
        <div class="form-group" style="text-align: center">
            <?php
            if ($this->auth->check(FALSE, 2, 3)) {
                if ($bill['bill_done'] != 1) {
                    echo '<p><a onclick="return areyousure(\'Are you sure? This cant be undone!\')" href="' . base_url('bill/next/' . $bill['id']) . '" class="btn btn-primary">PROCESS TO NEXT STEP</a></p>';
                }else{
                    echo "<p><button class='btn btn-success' disabled>Process complete</button></p>";
                }
                echo '<a href="' . base_url('bill/show') . '" class="btn btn-success">Bill manager</a>';
            }
            ?>
            <a href="<?= base_url() ?>" class="btn btn-danger">Homepage</a>
        </div>
    </div>
</div>