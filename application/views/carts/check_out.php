<form class="form-horizontal" action="" method="POST" id="confirm_bill_form">

    <!--    left column-->
    <div class="col-md-6 col-sm-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Please enter infomation below to buy products</h3>
            </div>
            <div class="panel-body">
                <p>

                <div class="form-group">
                    <label class="col-sm-4 control-label">Your name</label>

                    <div class="col-sm-8">
                        <input type="text" class="form-control" name='txtname' value="<?= set_value('txtname'); ?>">
                        <span id="helpBlock2" class="help-block"><?= form_error("txtname"); ?></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">Your address</label>

                    <div class="col-sm-8">
                        <input type="text" class="form-control" name='txtaddress'
                               value="<?= set_value('txtaddress'); ?>">
                        <span id="helpBlock2" class="help-block"><?= form_error("txtaddress"); ?></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">Your phone</label>

                    <div class="col-sm-8">
                        <input type="text" class="form-control" name='intphone' value="<?= set_value('intphone'); ?>">
                        <span id="helpBlock2" class="help-block"><?= form_error("intphone"); ?></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">Notice for us</label>

                    <div class="col-sm-8">
                        <textarea name="txtnote" class="form-control" id=""><?= set_value('txtnote'); ?></textarea>
                        <span id="helpBlock2" class="help-block"><?= form_error("txtnote"); ?></span>
                    </div>
                </div>

                </p>
            </div>
            <div class="panel-footer">
                <div class="form-group">
                    <div class="" style="text-align: center">
                        <button type="submit" class="btn btn-success product_btn_submit">Confirm</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<!--    right column-->
<div class="col-md-6 col-sm-6">

    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">Bill infomation</h3>
        </div>
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-bordered" cellpadding="6" cellspacing="1" style="width:100%" border="0">
                    <tr>
                        <th>#</th>
                        <th>Item</th>
                        <th>Quantity</th>
                        <th style="text-align:right">Price</th>
                        <th style="text-align:right">Sub-Total</th>
                    </tr>

                    <?php $i = 1; ?>

                    <?php
                    if ($this->cart->contents()) {
                        foreach ($this->cart->contents() as $items):
                            ?>
                            <tr>
                                <td><?= $i ?></td>
                                <td>
                                    <?= $items['name']; ?>

                                    <?php if ($this->cart->has_options($items['rowid']) == TRUE): ?>

                                        <p>
                                            <?php foreach ($this->cart->product_options($items['rowid']) as $option_name => $option_value): ?>

                                                <strong><?= $option_name; ?>:</strong> <?= $option_value; ?><br/>

                                            <?php endforeach; ?>
                                        </p>

                                    <?php endif; ?>

                                </td>
                                <td><?= $items['qty'] ?></td>
                                <td style="text-align:right"><?= number_format($items['price'], 0, ',', '.'); ?></td>
                                <td style="text-align:right"><?= number_format($items['subtotal'], 0, ',', '.'); ?></td>
                            </tr>

                            <?php $i++; ?>

                            <?php
                        endforeach;
                    } else {
                        ?>
                        <tr>
                            <td colspan="5">Your cart is empty. Let buy some out products!</td>
                        </tr>
                        <?php
                    }
                    ?>

                    <tr>
                        <td colspan="3"></td>
                        <td class="right"><strong>Total</strong></td>
                        <td class="right"><?= number_format($this->cart->total(), 0, ',', '.'); ?> VND</td>
                    </tr>

                </table>
            </div>
        </div>
    </div>


</div>
</form>
