<div class="panel panel-primary">
    <div class="panel-heading">
        Show all vendors
    </div>
    <div class="panel-body">
        <p>

        <div class="table-responsive">
            <table class="table table-hover table-bordered datatable">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Action</th>
                    <th>Vendor name</th>
                    <th>Products</th>
                    <th>Category</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($vendors as $vendor): ?>
                    <tr>
                        <td>
                            <?php echo $vendor['id']; ?>
                        </td>
                        <td>
                            <a href='<?php echo base_url("vendor/edit/$vendor[id]"); ?>' class='vendor_lnk_edit'
                               id='<?php echo $vendor['id'] ?>'>Edit</a> -
                            <a href='' class='vendor_lnk_del'
                               id='<?php echo $vendor['id'] ?>'>Delete</a>
                        </td>
                        <td><?php echo $vendor['vendor_name']; ?></td>
                        <td><?php echo count($vendor['vendor_products']); ?></td>
                        <td><?php echo $this->misc_model->summon_name('cates', $vendor['vendor_cate'], 'cate_name'); ?></td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>
        </p>
    </div>
    <div class="panel-footer">
        <div class="form-group" style="text-align: center">
            <a href="<?=base_url('vendor/create')?>" class="btn btn-danger">Create vendor</a>
        </div>
    </div>
</div>
