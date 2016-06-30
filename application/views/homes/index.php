<?php foreach ($products as $cate => $productss):
    if ($productss != ''):
        ?>
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="home-hot">
                <h4>HOT <?= $cate ?></h4>
                <ul class="mySlider">
                    <?php foreach ($productss as $product): ?>
                        <li>
                            <a href="<?= base_url("product/$product[cate_slug]/$product[vendor_slug]/$product[product_slug]") ?>">
                                <div class="product_box">

                                    <div class="product_img_box">

                                        <?php
                                        if ($product['product_discount'] != 0) {
                                            $percent = round($product['product_discount'] * 100 / $product['product_price']);
                                            echo "<span class='badge discount_top'><i class='fa fa-gift'></i> $percent %</span>";
                                        }

                                        ?>

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

                                        <b><?= $product['product_name'] ?></b>

                                        <p style="color:red">
                                            <b>
                                                <?php
                                                if ($product['product_discount'] != 0) {
                                                    echo "<span style='color:silver; text-decoration: line-through'>" . vnd($product['product_price']) . "</span><br />";
                                                    echo vnd($product['product_price'] - $product['product_discount']);
                                                } else {
                                                    echo vnd($product['product_price'], 0, ',', '.');
                                                }
                                                ?>
                                            </b>
                                        </p>

                                    </div>
                                    <button type="button" class="btn btn-labeled btn-success btn_add_item custom_btn1"
                                            data-product-id="<?= $product['id'] ?>"
                                            data-product-name="<?= $product['product_name'] ?>"
                                            data-product-price="<?= $product['product_price'] ?>">

                                        <span class="btn-label"><i class="fa fa-shopping-bag"></i></span>Buy

                                    </button>


                                </div>
                            </a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>
        </div>
    <?php endif;endforeach; ?>