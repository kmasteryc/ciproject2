<?php
if ($product['similars']) {
    ?>
    <div class="panel panel-primary">
        <div class="panel-heading">
            <div class="clearfix">
                <span class="pull-left">
                    <i class="fa fa-dot-circle-o fa-2x"></i>
                </span>
                <span class="pull-right panel-title">
                    Similar products
                </span>
            </div>
        </div>
        <div class="panel-body" id="similar_box">
            <?php
            foreach ($product['similars'] as $similar):
                ?>
                <div class="clearfix">
                <a href='<?= base_url("product/$similar[cate_slug]/$similar[vendor_slug]/$similar[product_slug]") ?>'>

                        <div class="pull-left similar_img">
                            <img src="<?= base_url('public/images/products/' . $similar['id'] . '/thumbs/' . $similar['product_img']) ?>"
                                 width="auto" height="100%">
                        </div>
                        <div class="pull-left similar_detail">
                            <p class="list-group-item-text">
                                <span><h5><?= $similar['product_name'] ?></h5></span>
                                <span><b style="color:red"><?= vnd($similar['product_price']) ?></b></span>
                            </p>
                        </div>

                </a>
                </div>
                <?php
            endforeach;
            ?>
        </div>
    </div>
    <?php
}
?>