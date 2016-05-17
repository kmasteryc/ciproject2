<div class="panel panel-primary">

    <div class="panel-heading">
        Show all categories
    </div>

    <div class="panel-body">
        <p>

        <div class="table-responsive">
            <table class="table table-hover table-bordered">
                <thead>
                <tr>
                    <td>ID</td>
                    <td>Action</td>
                    <td>Cate icon</td>
                    <td>Cate name</td>
                    <td>Products</td>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($cates as $cate): ?>
                    <tr>
                        <td>
                            <?=$cate['id']; ?>
                        </td>
                        <td>
                            <a href='<?=base_url('cate/edit/'.$cate['id'])?>' class='cate_lnk_edit' id='<?=$cate['id'] ?>'>Edit</a> -
                            <a href='#' class='cate_lnk_del' id='<?=$cate['id'] ?>'>Delete</a>
                        </td>
                        <td><?=$cate['cate_icon']; ?></td>
                        <td><?=$cate['cate_name']; ?></td>
                        <td><?=isset($cate['cate_products'])?count($cate['cate_products']):0?></td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>
        </p>
    </div>
    <div class="panel-footer">
        <div class="form-group" style="text-align: center">
            <a href="<?=base_url('cate/create')?>" class="btn btn-danger">Create category</a>
        </div>
    </div>
</div>