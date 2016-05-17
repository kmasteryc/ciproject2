<div class="panel panel-primary">

    <div class="panel-heading">
        Show all users
    </div>

    <div class="panel-body">
        <p>

        <div class="table-responsive">
            <table class="table table-hover table-bordered">
                <thead>
                <tr>
                    <td>ID</td>
                    <td>User name</td>
                    <td>User mail</td>
                    <td>User level</td>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($users as $user): ?>
                    <tr>
                        <td>
                            <input type="checkbox" name="chkb_del[]" value="<?php echo $user['id']; ?>">
                            <?php echo $user['id']; ?>
                        </td>
                        <td><?php echo $user['user_name']; ?></td>
                        <td><?php echo $user['user_mail']; ?></td>
                        <td><?php echo $user['user_level']; ?></td>
                    </tr>
                <?php endforeach; ?>
                <tr align="center">
                    <td></td>
                    <td colspan="2">
                        <select id="slc_action" name="action" class="form-control">
                            <option id="slc_action_0" value="0">No action</option>
                            <option id="slc_action_edit" value="edit">Edit selected users</option>
                            <option value="del" onclick="areyousure()">Delete selected users</option>
                        </select>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div style="text-align: center">
            <?= $pagination ?>
        </div>
        </p>

    </div>
    <div class="panel-footer">
        <div class="form-group" style="text-align: center">
            <a href="<?= base_url('user/create') ?>" class="btn btn-danger">Create user</a>
        </div>
    </div>
</div>

