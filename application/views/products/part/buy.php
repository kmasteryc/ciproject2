<div class="panel panel-primary">
	  <div class="panel-body">
		  <button class="btn btn-success btn_add_item btn_add_to_cart" data-product-id="<?= $product['id'] ?>"
				  data-product-name="<?= $product['product_name'] ?>"
				  data-product-price="<?= $product['product_price'] ?>">
			  <h4><b>ADD TO CART</b></h4>
			  And buy more products
		  </button>
		  Call <?=my_config('sale_phone')?> for more information.
	  </div>
</div>