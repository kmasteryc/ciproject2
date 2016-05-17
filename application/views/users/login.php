<?php
echo form_open(base_url('user/login'),array('class'=>'form-horizontal','method'=>'POST'));
?>
<div class="col-md-4 col-md-offset-4">
<div class="panel panel-primary">
    <div class="panel-heading">
        Login
    </div>
    <div class="panel-body">
        <p>

        <div class="form-group">
            <label for="inputEmail3" class="col-md-4 control-label">User name</label>
            <div class="col-md-8">
                <input type="text" class="form-control" id="inputEmail3" name='txtuser' value="<?php echo set_value('txtuser'); ?>" id="txtuser">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="col-md-4 control-label">Password</label>
            <div class="col-md-8">
                <input type="password" class="form-control" id="inputPassword3" name='txtpass' value="<?php echo set_value('txtpass'); ?>" id="txtpass">
            </div>
        </div>

        </p>
    </div>
    <div class="panel-footer">
        <div class="form-group">
            <div class="col-md-offset-4 col-md-8">
                <button type="submit" class="btn btn-primary">Login</button>
            </div>
        </div>
    </div>
</div>
</div>


<?php echo form_close(); ?>

