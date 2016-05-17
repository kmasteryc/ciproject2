<div class="row">
    <?php
    echo form_open('', array('class' => 'form-horizontal', 'method' => 'POST'));
    ?>
    <?php
    foreach ($users as $user):
        ?>
        <div class="col-md-4">
            <div class="panel panel-default">
                <div class="panel-heading">Edit user #<?php echo $user['id']; ?></div>
                <div class="panel-body">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-4 control-label">User name</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="inputEmail3" name='txtuser_new[<?php echo $user['id']; ?>]' value="<?php echo $user['user_name']; ?>" id="txtuser" placeholder="User name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-4 control-label">Password</label>
                        <div class="col-sm-8">
                            <input type="password" class="form-control" id="inputPassword3" name='txtpass_new[<?php echo $user['id']; ?>]' value="" id="txtpass" placeholder="Dont change">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-4 control-label">Email</label>
                        <div class="col-sm-8">
                            <input type="email" class="form-control" name='txtmail_new[<?php echo $user['id']; ?>]' value='<?php echo $user['user_mail']; ?>' id="txtmail" placeholder="Email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-4 control-label">Level</label>
                        <div class="col-sm-8">
                            <select class="form-control" name='intlevel_new[<?php echo $user['id']; ?>]' id="intlevel">
                                <option value="1" <?php echo $user['user_level']==1?'selected':''; ?>>Member</option>
                                <option value="2" <?php echo $user['user_level']==2?'selected':''; ?>>Admin</option>
                            </select>
                        </div>
                    </div>
                </div>
                <input type="hidden" name="txtuser_old[<?php echo $user['id']; ?>]" value="<?php echo $user['user_name'] ?>">
                <input type="hidden" name="txtmail_old[<?php echo $user['id']; ?>]" value="<?php echo $user['user_mail']; ?>" value="<?php echo $user['user_mail'] ?>">
                <input type="hidden" name='intlevel_old[<?php echo $user['id']; ?>]' value="<?php echo $user['user_level'] ?>">
            </div>
        </div>
    <?php endforeach; ?>
    <div class="form-group" align="center">
        <div class="col-md-12">
            <button type="submit" class="btn btn-default">Edit</button>
        </div>
    </div>

    <?php
    echo form_close();
    ?>
</div>