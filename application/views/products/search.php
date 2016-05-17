<div class="col-md-2" xmlns="http://www.w3.org/1999/html">
    <?= $this->load->view('products/part/search_sidebar') ?>
</div>

<div class="col-md-10" id="all_product_box">
    <?php
    if ($_GET):
        ?>
        <div class="alert alert-info" style="text-align: left">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <b>Found: <?= $count_results ?> results matched conditions</b>
        </div>
        <?php
    endif;
    ?>
    <?php
    if ($count_results > 0) {
        $i = 1;
        foreach ($products as $product):
//            if ($i % 4 == 1) echo '<div class="product_line_row">';
            ?>

            <a href="<?= base_url("product/$product[cate_slug]/$product[vendor_slug]/$product[product_slug]") ?>">
                <div class="col-md-3 col-sm-4 col-xs-6 product_box">
                    <div class="product_img_box">
                        <figure class="product_img">
                            <img
                                src="<?= base_url("public/images/products/$product[id]/thumbs/$product[product_img]") ?>">
                        </figure>
                        <div class="product_summary hidden-xs hidden-sm">
                            <?php
                            foreach ($product['details'] as $detail) {
                                echo "<span> <b>$detail[spec_name]</b>: $detail[detail_value] $detail[spec_unit]</span>";
                            }
                            ?>
                        </div>
                    </div>
                    <div class="product_below_img">
                        <b><?= $product['product_name'] ?></b><br/>

                        <p style="color:red"><b><?= number_format($product['product_price'], 0, ',', '.') ?>
                                d</b>
                        </p>

                        <button type="button" class="btn btn-labeled btn-success btn_add_item"
                                data-product-id="<?= $product['id'] ?>"
                                data-product-name="<?= $product['product_name'] ?>"
                                data-product-price="<?= $product['product_price'] ?>">
                            <span class="btn-label"><i class="fa fa-shopping-bag"></i></span>Buy
                        </button>

                    </div>
                </div>
            </a>

            <?php

//            if ($i % 4 == 0) echo '</div>';

            ++$i;
        endforeach;
    }
    ?>
</div>
