<div class="panel panel-primary">
    <div class="panel-heading">
        Show all products
    </div>
    <div class="panel-body">
        <p>

        <div class="table-responsive">
            <table class="table table-hover table-bordered datatable">
                <thead>
                <tr style="background:lightseagreen;">
                    <th>ID</th>
                    <th>Action</th>
                    <th>Product name</th>
                    <th>Product price</th>
                    <th>Product discount</th>
                    <th>Product vendor</th>
                    <th>Product cate</th>
                    <th>Product date</th>
                    <th>Product info</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($products as $product): ?>
                    <tr>
                        <td><?= $product['pid']; ?></td>
                        <td><a href="edit/<?= $product['pid'] ?>" class="product_lnk_edit" id="<?= $product['pid'] ?>">Edit</a>
                            - <a
                                href="javascript:void" class="product_lnk_del" id="<?= $product['pid'] ?>">Delete</a>
                        </td>
                        <td><?= $product['product_name']; ?></td>
                        <td><?= vnd($product['product_price']); ?></td>
                        <td><?= vnd($product['product_discount']); ?></td>
                        <td><?= $product['vendor_name']; ?></td>
                        <td><?= $product['cate_name']; ?></td>
                        <td><?= $product['product_date']; ?></td>
                        <td><?php echo limit_text(strip_tags($product['product_info']), 30); ?></td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>
        </p>
    </div>

    <div class="panel-footer">
        <div class="form-group" style="text-align: center">
                <a href="<?=base_url('product/create')?>" class="btn btn-danger">Create product</a>
        </div>
    </div>

</div>