<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Site configuration</h3>
    </div>
    <div class="panel-body">
        <form action="" method="post" class="form-horizontal" role="form">

            <?php foreach ($configs as $config): ?>
                <div class="form-group">
                    <label class="col-sm-3 control-label"><?= $config['config_title'] ?></label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" name="<?= $config['id'] ?>"
                               value="<?= $config['config_value'] ?>">
                    </div>
                </div>
            <?php endforeach ?>

            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-9">
                    <button type="submit" class="btn btn-primary">Update</button>
                </div>
            </div>
            
        </form>
    </div>
</div>
