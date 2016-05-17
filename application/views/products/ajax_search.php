<?php
if ($products) {
?>
    <?php
    foreach ($products as $product):
        ?>
        <div class="found_item">
            <div class="col-md-3 col-sm-3 col-xs-3" class="item_search_img">

                <img
                    src='<?= base_url('public/images/products/' . $product['id'] . '/thumbs/' . $product['product_img']) ?>'
                    height='50px'>

            </div>

            <div class="col-md-9 col-sm-9 col-xs-9">

                <a href='<?= base_url("product/$product[cate_slug]/$product[vendor_slug]/$product[product_slug]") ?>'
                   class="">

                    <h5><?= $product['product_name'] ?></h5>

                    <p>
                        <b style="color:red"><?= vnd($product['product_price'], 0, ',', '.') ?></b>
                    </p>

                </a>

            </div>
        </div>
        <?php
    endforeach;
    ?>


    <?php
    }
    else {
        ?>
        <div class="ajax_search_list">
            <div class="found_item">

                <div class="col-md-12">

                    <a href='<?= base_url("product/search") ?>'>
                        <h5><b style="color:cornflowerblue">Can't found! Try advance search method</b></h5>
                    </a>


                </div>
            </div>

        </div>
        <?php
    }
    ?>
