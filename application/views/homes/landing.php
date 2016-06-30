<div class="container">
    <div class="row">
        <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
            <h5 style="text-align: center"><b>What do you want to see through?</b></h5>
        </div>
    </div>
    <div class="row welcome_text">
        <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
            <?php
            foreach ($cates as $cate):
                ?>
                <div class="col-md-4 col-sm-4 col-xs-4">
                    <a href="<?= base_url('product/' . $cate['cate_slug']) ?>">
                        <div class="big_icon">
                            <i class="fa <?= $cate['cate_icon'] ?> fa-3x"></i>
                            <h5><?= $cate['cate_name'] ?></h5>
                        </div>
                    </a>
                </div>
                <?php
            endforeach;
            ?>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
            <h4>My project is include these features and technologies</h4>
            <ul class="list-group">
                <li class="list-group-item list-group-item-success">Basic CRUD Category, Vendor, Product,..</li>
                <li class="list-group-item list-group-item-success">Full responsive front-end and back-end</li>
                <li class="list-group-item list-group-item-success">Process invoice: requesting, validating, shipping
                    and done
                </li>
                <li class="list-group-item list-group-item-success">Custom specifications for different product type
                </li>
                <li class="list-group-item list-group-item-success">Products with slides and review article</li>
                <li class="list-group-item list-group-item-success">Full search modules</li>
                <li class="list-group-item list-group-item-success">Comment with reply feature</li>
                <li class="list-group-item list-group-item-success">AJAX used frequently in</li>
            </ul>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
            <h4>Incomplete features. I'll do soon</h4>
            <ul class="list-group">
                <li class="list-group-item list-group-item-danger">Set permission for seller</li>
                <li class="list-group-item list-group-item-danger">Chat confirmation before public</li>
                <li class="list-group-item list-group-item-danger">Collect statistic infomation</li>
                <li class="list-group-item list-group-item-danger">Make code smarter</li>
            </ul>
        </div>
    </div>
</div>
