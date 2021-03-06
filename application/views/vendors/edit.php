<?php
echo form_open_multipart('', array('class' => 'form-horizontal', 'method' => 'POST'));
?>
    <div class="panel panel-primary">
        <div class="panel-heading">
            Show all vendors
        </div>
        <div class="panel-body">
            <p>

            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Vendor name</label>

                <div class="col-sm-4">
                    <input type="text" class="form-control" id="inputEmail3" name='txtvendor_new'
                           value="<?php echo set_value('txtvendor_new', $vendor['vendor_name']); ?>" id="txtvendor"
                           placeholder="Vendor name">
                    <span id="helpBlock2" class="help-block"><?= form_error("txtvendor_new"); ?></span>
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">Category</label>

                <div class="col-sm-4">
                    <select class="form-control" name='intcate'>
                        <?php
                        foreach ($this->misc_model->simple_menu('cates') as $item):
                            echo "<option value='$item[id]' ";
                            echo ($vendor['vendor_cate'] == $item['id'] ? 'selected' : '') . ">";
                            echo $item['cate_name'] . '</option>';
                        endforeach;
                        ?>
                    </select>
                    <span id="helpBlock2" class="help-block"><?= form_error("intcate"); ?></span>

                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Upload new image
                </label>

                <div class="col-sm-4">
                    <input type="file" class="form-control" name="userfile" size="20"/>
                    <span class="help-block"><?= form_error("userfile"); ?></span>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Old image
                </label>

                <div class="col-sm-4">
                    <img src="<?= base_url("public/images/vendors/$vendor[vendor_img]") ?>">
                </div>
            </div>

            <input type="hidden" name="txtvendor_old" value="<?php echo $vendor['vendor_name']; ?>">

            <label for="inputEmail3" class="col-sm-2 control-label"></label>


            </p>
        </div>
        <div class="panel-footer">
            <div class="form-group">
                <div class="" style="text-align: center">
                    <button type="submit" class="btn btn-success  ">Update</button>
                    <a href="<?=base_url('vendor/show')?>" class="btn btn-danger">Cancel</a>
                </div>
            </div>
        </div>
    </div>

<?php echo form_close(); ?>