<?php
if ($product['gifts']) {
	?>
	<div class="panel panel-primary">
		<div class="panel-heading">
		<span class="pull-left">
			<i class="fa fa-gift fa-2x"></i>
		</span>
		<span class="pull-right panel-title">
			Gifts
		</span>

			<div class="clearfix"></div>
		</div>
		<div class="panel-body">

			<ul class="myul">
				<?php
				foreach ($product['gifts'] as $gift):
					echo "<li>$gift[gift_content]</li>";
				endforeach;
				?>
			</ul>

		</div>
	</div>
	<?php
}
?>