<?= form_open('', array('class' => 'form-horizontal', 'method' => 'POST')); ?>
<?php foreach ($spec as $item): ?>
    <div class="panel panel-primary">
    <div class="panel-heading">
        Specifications manage
    </div>
    <div class="panel-body">
    <p>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">Spec name</label>

        <div class="col-sm-4">
            <input type="text" class="form-control" id="inputEmail3" name='txtname'
                   value="<?php echo set_value('txtname',$item['spec_name']); ?>" id="txtname">
            <span id="helpBlock2" class="help-block"><?= form_error("txtname"); ?></span>
        </div>
    </div>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">Spec unit</label>

        <div class="col-sm-4">
            <input type="text" class="form-control" id="inputEmail3" name='txtunit'
                   value="<?php echo set_value('txtunit',$item['spec_unit']); ?>" id="txtunit">
            <span id="helpBlock2" class="help-block"><?= form_error("txtunit"); ?></span>
        </div>
    </div>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">Spec preset (ex: value1,value2,..)</label>

        <div class="col-sm-4">
            <input type="text" class="form-control" id="inputEmail3" name='txtpresetvalue'
                   value="<?php echo set_value('txtpresetvalue',$item['spec_presetvalue']); ?>" id="txtpresetvalue">
            <span id="helpBlock2" class="help-block"><?= form_error("txtpresetvalue"); ?></span>
        </div>
    </div>
        </p>
    </div>
        <div class="panel-footer">
            <div class="form-group">
                <div class="" style="text-align: center">
                    <button type="submit" class="btn btn-success">Edit</button>
                    <a href="<?=base_url('spec/show')?>" class="btn btn-danger">Cancel</a>
                </div>
            </div>
        </div>
    </div>
<?php endforeach; ?>
<?= form_close(); ?>