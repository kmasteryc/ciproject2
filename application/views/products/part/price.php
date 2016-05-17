<div class="panel panel-primary">
	<div class="panel-heading">
		<span class="pull-left">
			<i class="fa fa-money fa-2x"></i>
		</span>
		<span class="pull-right panel-title">
			Price
		</span>
		<div class="clearfix"></div>
	</div>
	  <div class="panel-body">
		  <?php
		  if ($product['product_discount'] != 0) {
			  ?>
			  <h4 style="color: silver; text-decoration: line-through">
				  <b>Price: <?= vnd($product['product_price'], 0, ',', '.') ?></b></h4>
			  <h4 style="color: red">
				  <b>Now: <?= vnd($product['product_price'] - $product['product_discount'], 0, ',', '.') ?>
					  !</b></h4>
			  <?php
		  } else {
			  ?>
			  <h3 style="color: red"><b>Price: <?= vnd($product['product_price'], 0, ',', '.') ?></b></h3>
			  <?php
		  }
		  ?>
	  </div>
</div>