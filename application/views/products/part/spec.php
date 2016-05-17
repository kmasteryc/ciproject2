<div class="panel panel-primary">
	<div class="panel-heading">
		<span class="pull-left">
			<i class="fa fa-2x fa-rocket"></i>
		</span>
		<span class="pull-right panel-title">
			Detail <?= $product['product_name'] ?>
		</span>

		<div class="clearfix"></div>
	</div>
	<div class="panel-body">
		<div id="spec">
			<?php
			foreach ($product['details'] as $detail) {
				echo "<p><span> <b>$detail[spec_name]</b>:</span> <span> $detail[detail_value] $detail[spec_unit]</span></p>";
			}
			?>
		</div>
	</div>
</div