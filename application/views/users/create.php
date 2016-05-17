<?php
echo form_open('', array('class' => 'form-horizontal', 'method' => 'POST'));
?>

    <div class="panel panel-primary">
        <div class="panel-heading">
            Create user
        </div>
        <div class="panel-body">
            <p>

            <div class="form-group">
                <label for="inputEmail3" class="col-md-4 control-label">User name</label>

                <div class="col-md-6">
                    <input type="text" class="form-control" id="inputEmail3" name='txtuser'
                           value="<?= set_value('txtuser'); ?>"
                           id="txtuser" placeholder="User name">
                    <span id="helpBlock2" class="help-block"><?= form_error("txtuser"); ?></span>

                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-md-4 control-label">Password</label>

                <div class="col-md-6">
                    <input type="password" class="form-control" id="inputPassword3" name='txtpass'
                           value="<?= set_value('txtpass'); ?>" id="txtpass" placeholder="Password">
                    <span id="helpBlock2" class="help-block"><?= form_error("txtpass"); ?></span>

                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-md-4 control-label">Email</label>

                <div class="col-md-6">
                    <input type="email" class="form-control" name='txtmail' value="<?= set_value('txtmail'); ?>"
                           id="txtmail"
                           placeholder="Email">
                    <span id="helpBlock2" class="help-block"><?= form_error("txtmail"); ?></span>

                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-md-4 control-label">Level</label>

                <div class="col-md-6">
                    <select class="form-control" name='intlevel' id="intlevel">
                        <option value="1"<?= set_select('intlevel', 1); ?>>Member</option>
                        <option value="2"<?= set_select('intlevel', 2); ?>>Admin</option>
                    </select>
                </div>
            </div>


            </p>
        </div>
        <div class="panel-footer">
            <div class="form-group">
                <div class="form-group" style="text-align: center">
                    <button type="submit" class="btn btn-success">Create</button>
                    <a href="<?=base_url('user/show')?>" class="btn btn-danger">Cancel</a>
                </div>
            </div>
    </div>
<?=
form_close() ?>