<?php
echo form_open('', array('class' => 'form-horizontal', 'method' => 'POST'));
?>
    <div class="panel panel-primary">
        <div class="panel-heading">
            Show all cates
        </div>
        <div class="panel-body">
            <p>

            <div class="form-group">
                <label class="col-sm-2 control-label">Cate name</label>

                <div class="col-sm-4">
                    <input type="text" class="form-control" name='txtcate'
                           value="<?php echo set_value('txtcate', $cate['cate_name']); ?>" placeholder="Cate name">
                    <span id="helpBlock2" class="help-block"><?= form_error("txtcate"); ?></span>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Preview icon</label>

                <div class="col-sm-4" id="icon_preview">
                    <i class="fa fa-2x <?=$cate['cate_icon']?>"></i>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Cate icon</label>

                <div class="col-sm-4">
                    <input type="text" class="form-control" name='txticon'
                           value="<?php echo set_value('txticon', $cate['cate_icon']); ?>" placeholder="Cate icon">
                    <span id="helpBlock2" class="help-block"><?= form_error("txticon"); ?></span>
                </div>
            </div>


            </p>
        </div>
        <div class="panel-footer">
            <div class="form-group">
                <div class="" style="text-align: center">
                    <button type="submit" class="btn btn-success  ">Update</button>
                    <a href="<?=base_url('cate/show')?>" class="btn btn-danger">Cancel</a>
                </div>
            </div>
        </div>
    </div>

<?php echo form_close(); ?>