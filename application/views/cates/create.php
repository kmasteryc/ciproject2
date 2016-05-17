<?= form_open('', array('class' => 'form-horizontal', 'method' => 'POST')); ?>

<div class="panel panel-primary">
    <div class="panel-heading">
        Create category
    </div>
    <div class="panel-body">
        <p>

        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Category name</label>

            <div class="col-sm-4">
                <input type="text" class="form-control" id="inputEmail3" name='txtcate'
                       value="<?php echo set_value('txtcate'); ?>" id="txtcate" placeholder="Category name">
                <span id="helpBlock2" class="help-block"><?= form_error("txtcate"); ?></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 control-label">Category icon</label>

            <div class="col-sm-4">
                <input type="text" class="form-control" name='txticon'
                       value="<?php echo set_value('txtcate'); ?>" id="txticon" placeholder="fa-phone">
                <span id="helpBlock2" class="help-block"><?= form_error("txticon"); ?></span>
            </div>
        </div>

    </div>
    </p>
</div>
<div class="panel-footer">
    <div class="form-group">
        <div class="" style="text-align: center">
            <button type="submit" class="btn btn-success">Create</button>
            <a href="<?= base_url('cate/show') ?>" class="btn btn-danger">Cancel</a>
        </div>
    </div>
</div>
</div>
<?= form_close(); ?>

