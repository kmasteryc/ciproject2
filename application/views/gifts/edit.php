<?php
if ($gifts != '') {
    echo form_open('', array('class' => 'form-horizontal', 'method' => 'POST'));
    ?>
    <div class="panel panel-primary">
        <div class="panel-heading">
            Create new gift
        </div>
        <div class="panel-body">
            <p>

            <div class="form-group">

                <label class="col-sm-2 control-label">Gift content</label>

                <div class="col-sm-4">

                    <span class="help-block"><?= form_error("txtcontent"); ?></span>

                    <textarea class="form-control" name='txtcontent'><?php echo set_value('txtcontent', $gifts['gift_content']); ?></textarea>

                </div>
            </div>

            <div class="form-group">

                <label class="col-sm-2 control-label">Start date</label>

                <div class="col-sm-4">

                    <input type="datetime" class="form-control datepicker" name='txtstartdate'
                           value="<?= set_value('txtstartdate', $gifts['gift_startdate']); ?>"
                           placeholder="yyyy-mm-dd. Or leave blank for unlimit time">

                    <span class="help-block"><?= form_error("txtstartdate"); ?></span>

                </div>

            </div>

            <div class="form-group">

                <label class="col-sm-2 control-label">End date</label>

                <div class="col-sm-4">

                    <input type="datetime" class="form-control datepicker" name='txtenddate'
                           value="<?= set_value('txtenddate', $gifts['gift_enddate']); ?>"
                           placeholder="yyyy-mm-dd. Or leave blank for unlimit time">

                    <span class="help-block"><?= form_error("txtenddate"); ?></span>

                </div>

            </div>

            <input type="hidden" class="form-control" name='txtproducts'
                   value="<?=$old_products?>">

            <div class="form-group">

                <label class="col-sm-2 control-label">Apply for products</label>

                <div class="col-sm-8">

                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Action</th>
                                <th>Product name</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            $old_products_arr = explode(';', $old_products);
                            foreach ($products as $product):

                                $choose = '';

                                $do = 'Love me';

                                if (in_array($product['id'], $old_products_arr)) {
                                    $choose = "class = 'bg-danger'";

                                    $do = 'Break up';
                                }

                                ?>
                                <tr <?= $choose ?>>
                                    <td><?= $product['id'] ?></td>
                                    <td><a href="#" class="btn_gift_choose"
                                           data-id="<?= $product['id'] ?>"><?= $do ?></a>
                                    </td>
                                    <td><?= $product['product_name'] ?></td>
                                </tr>
                            <?php endforeach ?>
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>

            </p>

        </div>

        <div class="panel-footer">

            <div class="form-group">

                <div class="" style="text-align: center">

                    <button type="submit" class="btn btn-success">Edit</button>

                    <a href="<?= base_url('gift/show') ?>" class="btn btn-danger">Cancel</a>

                </div>

            </div>

        </div>

    </div>

    <?php
    echo form_close();
}
else
{
    show_404();
}

