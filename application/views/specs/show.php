<div class="panel panel-primary">
    <div class="panel-heading">
        Specifications manage
    </div>
    <div class="panel-body">
        <p>

        <div class="table-responsive">
            <table class="table table-hover table-bordered">
                <thead>
                <tr>
                    <td>ID</td>
                    <td>Action</td>
                    <td>Spec name</td>
                    <td>Spec unit</td>
                    <td>Spec preset value</td>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($specs as $spec): ?>
                    <tr>
                        <td>
                            <?= $spec['id']; ?>
                        </td>
                        <td>
                            <a href='edit/<?= $spec['id'] ?>' class='spec_lnk_edit' id='<?= $spec['id'] ?>'>Edit</a> -
                            <a href='' class='spec_lnk_del' id='<?= $spec['id'] ?>'>Delete</a>
                        </td>
                        <td><?= $spec['spec_name']; ?></td>
                        <td><?= $spec['spec_unit']; ?></td>
                        <td><?= $spec['spec_presetvalue']; ?></td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>

        </p>
    </div>
    <div class="panel-footer">
        <div class="form-group" style="text-align: center">
            <a href="<?= base_url('spec/create') ?>" class="btn btn-danger">Create specification</a>
        </div>
    </div>
</div>