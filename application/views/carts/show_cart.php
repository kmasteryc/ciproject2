<form action="" id="show_cart_form">
    <div class="table-responsive">
        <table class="table table-bordered" cellpadding="6" cellspacing="1" style="width:100%" border="0">

            <tr>
                <th>QTY</th>
                <th>Item Description</th>
                <th style="text-align:right">Item Price</th>
                <th style="text-align:right">Sub-Total</th>
            </tr>

            <?php $i = 1; ?>

            <?php
            if ($this->cart->contents()) {
                foreach ($this->cart->contents() as $items):
                    ?>

                    <?= form_hidden($i . '[rowid]', $items['rowid']); ?>

                    <tr>
                        <td><?= form_input(array('name' => $i . '[qty]', 'class' => 'form-control', 'value' => $items['qty'], 'maxlength' => '3', 'size' => '5')); ?></td>
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
                        <td style="text-align:right"><?= number_format($items['price'], 0, ',', '.'); ?></td>
                        <td style="text-align:right"><?= number_format($items['subtotal'], 0, ',', '.'); ?></td>
                    </tr>

                    <?php $i++; ?>

                    <?php
                endforeach;
            } else {
                ?>
                <tr>
                    <td colspan="4">Your cart is empty. Let buy some out products!</td>
                </tr>
                <?php
            }
            ?>

            <tr>
                <td colspan="2"></td>
                <td class="right"><strong>Total</strong></td>
                <td class="right"><?= number_format($this->cart->total(), 0, ',', '.'); ?> VND</td>
            </tr>

        </table>
    </div>
</form>