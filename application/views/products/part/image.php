<div class="panel panel-primary">
	<div class="panel-heading">
		<span class="pull-left">
			<i class="fa <?= $cateicon ?> fa-2x"></i>
		</span>
		<span class="pull-right panel-title">
			<?= $product['product_name'] ?>
		</span>

		<div class="clearfix"></div>
	</div>

	<div class="panel-body">
		<figure class="product_img">

		<img src="<?= base_url("public/images/products/$product[id]/$product[product_img]") ?>" width="80%"
			 height="auto"
			 style="display: block">

		</figure>

	</div>

	<div class="panel-footer">
		<span class="pull-left">
			Avalable color
		</span>
		<span class="pull-left">

		</span>

		<div class="clearfix"></div>
	</div>
</div>