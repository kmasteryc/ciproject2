<?php
if ($product['similars']) {
	?>
	<div class="panel panel-primary">
		<div class="panel-heading">
		<span class="pull-left">
			<i class="fa fa-dot-circle-o fa-2x"></i>
		</span>
		<span class="pull-right panel-title">
			Similar products
		</span>

			<div class="clearfix"></div>
		</div>
		<div class="panel-body">
			<?php
			foreach ($product['similars'] as $similar):
				?>
				<div class="found_item">
					<div class="col-md-4 col-sm-4 col-xs-4 item_search_img">

						<img
							src='<?= base_url('public/images/products/' . $similar['id'] . '/thumbs/' . $similar['product_img']) ?>'
							height='50px'>

					</div>

					<div class="col-md-8 col-sm-8 col-xs-8">

						<a href='<?= base_url("product/$similar[cate_slug]/$similar[vendor_slug]/$similar[product_slug]") ?>'
						   class="">

							<h5><?= $similar['product_name'] ?></h5>

							<p>
								<b style="color:red"><?= vnd($similar['product_price']) ?></b>
							</p>

						</a>

					</div>
				</div>
				<?php
			endforeach;
			?>
		</div>
	</div>
	<?php
}
?>