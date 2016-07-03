<?php
echo form_open_multipart(base_url('vendor/create'), array('class' => 'form-horizontal', 'method' => 'POST'));
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
                    <input type="text" class="form-control" id="inputEmail3" name='txtvendor'
                           value="<?php echo set_value('txtvendor'); ?>" id="txtvendor" placeholder="Vendor name">
                    <span  class="help-block"><?= form_error("txtvendor"); ?></span>
                </div>
            </div>


            <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">Category</label>

                <div class="col-sm-4">
                    <select class="form-control" name='intcate' id="intlevel">
                        <?php
                        foreach ($this->misc_model->simple_menu('cates') as $item):
                            echo "<option value='$item[id]'>$item[cate_name]</option>";
                        endforeach;
                        ?>
                    </select>
                    <span class="help-block"><?= form_error("intcate"); ?></span>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Image</label>

                <div class="col-sm-4">
                    <input type="file" class="form-control" name="userfile" size="20"/>
                    <span class="help-block"><?= form_error("userfile"); ?></span>
                </div>
            </div>

            </p>
        </div>
        <div class="panel-footer">
            <div class="form-group">
                <div class="" style="text-align: center">
                    <button type="submit" class="btn btn-success">Create</button>
                    <a href="<?=base_url('vendor/show')?>" class="btn btn-danger">Cancel</a>
                </div>
            </div>
        </div>
    </div>

<?php echo form_close(); ?>