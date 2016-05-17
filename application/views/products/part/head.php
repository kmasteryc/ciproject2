<div class="row">
	<ol class="breadcrumb">
		<li><a href="<?= base_url("product/$cateslug") ?>"><?= $catename ?></a></li>
		<li><a href="<?= base_url("product/$cateslug/$vendorslug") ?>"><?= $vendorname ?></a></li>
		<li class="active"><?= $product['product_name'] ?></li>
	</ol>
</div>
<div class="row">
	<h3 id="phone-header"><?= $product['product_name'] ?></h3>
</div>
<hr style="color:silver">