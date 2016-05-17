<?php
echo form_open(base_url('gift/create'), array('class' => 'form-horizontal', 'method' => 'POST'));
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

                    <textarea class="form-control" name='txtcontent'><?php echo set_value('txtcontent', ' '); ?></textarea>

                </div>
            </div>

            <div class="form-group">

                <label class="col-sm-2 control-label">Start date</label>

                <div class="col-sm-4">

                    <input type="datetime" class="form-control datepicker" name='txtstartdate'
                           value="<?= set_value('txtstartdate'); ?>" placeholder="yyyy-mm-dd. Or leave blank for unlimit time">

                    <span class="help-block"><?= form_error("txtstartdate"); ?></span>

                </div>

            </div>

            <div class="form-group">

                <label class="col-sm-2 control-label">End date</label>

                <div class="col-sm-4">

                    <input type="datetime" class="form-control datepicker" name='txtenddate'
                           value="<?= set_value('txtenddate'); ?>" placeholder="yyyy-mm-dd. Or leave blank for unlimit time">

                    <span class="help-block"><?= form_error("txtenddate"); ?></span>

                </div>

            </div>


            <input type="hidden" class="form-control" name='txtproducts'
                   value="<?=set_value('txtproducts')?>">

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
                            <?php foreach ($products as $product): ?>
                                <tr>
                                    <td><?= $product['id'] ?></td>
                                    <td><a href="#" class="btn_gift_choose" data-id="<?= $product['id'] ?>">Love me</a>
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

                    <button type="submit" class="btn btn-success">Create</button>

                    <a href="<?= base_url('gift/show') ?>" class="btn btn-danger">Cancel</a>

                </div>

            </div>

        </div>

    </div>

<?php echo form_close(); ?>