</div>

<?php
if (!isset($is_welcome)) {
    ?>
<div class="container">
    <div class="row">
            <hr>
            <div class="" style="text-align: center">
                <?=my_config('slogan')?>
            </div>
        </div>
    </div>
</div>
    <?php
}
?>
<!--Show modal when click add to cart button-->
<div class="modal fade" id="add_item_dialog" role="dialog" style="display: none">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Success</h4>
            </div>
            <div class="modal-body">
                <p>Add item to cart successfully!</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success btn_show_cart" data-dismiss="modal">View cart</button>
                <a href="<?= base_url('cart/check_out') ?>" class="btn btn-primary">Check out</a>
            </div>
        </div>
    </div>
</div>

<!--Show modal when click view cart button-->
<div class="modal fade" id="show_cart_dialog" role="dialog" style="display: none">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Items in your cart</h4>
            </div>
            <div class="modal-body" id="show_cart_body">
            </div>
            <script>
                $("#show_cart_body").load(base_url + 'cart/show_cart');
            </script>
            <div class="modal-footer">
                <button type="button" class="btn btn-success btn_update_cart">Update cart</button>
                <button type="button" class="btn btn-danger btn_reset_cart">Reset cart</button>
                <a href="<?= base_url('cart/check_out') ?>" class="btn btn-primary custom_btn">Check out</a>
            </div>
        </div>
    </div>
</div>


<!--Show modal when click view product info-->
<div class="modal fade" id="show_info_dialog" role="dialog" style="display: none">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h2 class="modal-title"><b>Review <?= $product['product_name'] ?></b></h2>
            </div>
            <div class="modal-body" id="show_info_body">
            </div>
            <script>
                $("#show_info_body").load(base_url + 'product/get_info/<?=$product['id']?>');
            </script>
        </div>
    </div>
</div>

</body>

</html>
