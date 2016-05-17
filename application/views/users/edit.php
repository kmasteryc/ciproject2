<?php
echo form_open('', array('class' => 'form-horizontal', 'method' => 'POST'));
?>
        <div class="panel panel-primary">

            <div class="panel-heading">
                Show all users
            </div>

            <div class="panel-body">
                <p>

                    <?php
                    foreach ($users as $user):
                    ?>

                <div class="col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">Edit user #<?= $user['id']; ?></div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-4 control-label">User name</label>

                                <div class="col-sm-8">

                                    <input type="text" class="form-control" id="inputEmail3"
                                           name='txtuser_new[<?= $user['id']; ?>]' value="<?= $user['user_name']; ?>"
                                           id="txtuser" placeholder="User name">
                                    <span id="helpBlock2"
                                          class="help-block"><?= form_error("txtuser_new[$user[id]]"); ?></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-4 control-label">Password</label>

                                <div class="col-sm-8">
                                    <input type="password" class="form-control" id="inputPassword3"
                                           name='txtpass_new[<?= $user['id']; ?>]' value="" id="txtpass"
                                           placeholder="Dont change">
                                    <span id="helpBlock2"
                                          class="help-block"><?= form_error("txtpass_new[$user[id]]"); ?></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-4 control-label">Email</label>

                                <div class="col-sm-8">
                                    <input type="email" class="form-control" name='txtmail_new[<?= $user['id']; ?>]'
                                           value='<?= $user['user_mail']; ?>' id="txtmail" placeholder="Email">
                                    <span id="helpBlock2"
                                          class="help-block"><?= form_error("txtmail_new[$user[id]]"); ?></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-4 control-label">Level</label>

                                <div class="col-sm-8">
                                    <select class="form-control" name='intlevel_new[<?= $user['id']; ?>]' id="intlevel">
                                        <option value="1" <?= $user['user_level'] == 1 ? 'selected' : ''; ?>>Member
                                        </option>
                                        <option value="2" <?= $user['user_level'] == 2 ? 'selected' : ''; ?>>Admin
                                        </option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <input type="hidden" name="txtuser_old[<?= $user['id']; ?>]" value="<?= $user['user_name'] ?>">
                        <input type="hidden" name="txtmail_old[<?= $user['id']; ?>]" value="<?= $user['user_mail']; ?>"
                               value="<?= $user['user_mail'] ?>">
                        <input type="hidden" name='intlevel_old[<?= $user['id']; ?>]'
                               value="<?= $user['user_level'] ?>">
                    </div>
                </div>
                <?php endforeach; ?>



                </p>
            </div>
            <div class="panel-footer">
                <div class="form-group" align="center">
                    <div class="" style="text-align: center">
                        <button type="submit" class="btn btn-success">Edit</button>
                        <a href="<?=base_url('user/show')?>" class="btn btn-danger">Cancel</a>
                    </div>
                </div>
            </div>
    </div>
<?php
echo form_close();
?>