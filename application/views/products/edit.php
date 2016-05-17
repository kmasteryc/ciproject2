<?= form_open_multipart('', array('class' => 'form-horizontal', 'method' => 'POST')); ?>
<?php foreach ($product as $item): ?>
<div class="panel panel-primary">
	<div class="panel-heading">
		Show all vendors
	</div>
	<div class="panel-body">
		<p>

		<div class="form-group">
			<label class="col-sm-2 control-label">Product name</label>

			<div class="col-sm-8">
				<input type="text" class="form-control" name='txtname'
					   value="<?= set_value('txtname', $item['product_name']); ?>">
				<span id="helpBlock2" class="help-block"><?= form_error("txtname"); ?></span>

			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Product price</label>

			<div class="col-sm-8">
				<input type="number" class="form-control" name='intprice'
					   value="<?= set_value('intprice', $item['product_price']); ?>">
				<span id="helpBlock2" class="help-block"><?= form_error("intprice"); ?></span>

			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label">Product discount</label>

			<div class="col-sm-8">
				<input type="number" class="form-control" name='intdiscount'
					   value="<?= set_value('intdiscount', $item['product_discount']); ?>">
				<span id="helpBlock2" class="help-block"><?= form_error("intdiscount"); ?></span>

			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label">Vendor</label>

			<div class="col-sm-8">
				<select class="form-control" name='intvendor' id="intlevel">
					<?php
					foreach ($this->misc_model->simple_menu('vendors') as $item1):
						$select = $item['product_vendor'] == $item1['id'] ? 'selected' : '';
						echo "<option value='$item1[id]' $select>$item1[vendor_name]</option>";
					endforeach;
					?>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Cate</label>

			<div class="col-sm-8">
				<select class="form-control" name='intcate' id="intlevel">
					<?php
					foreach ($this->misc_model->simple_menu('cates') as $item2):
						$select = $item['product_cate'] == $item2['id'] ? 'selected' : '';
						echo "<option value='$item2[id]' $select>$item2[cate_name]</option>";
					endforeach;
					?>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Date</label>

			<div class="col-sm-8">
				<input type="text" class="form-control" id="datepicker" name='txtdate'
					   value="<?= set_value('txtdate', $item['product_date']); ?>"
					   id="txtdate">
				<span id="helpBlock2" class="help-block"><?= form_error("txtdate"); ?></span>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Info</label>

			<div class="col-sm-8">
				<span id="helpBlock2" class="help-block"><?= form_error("txtinfo"); ?></span>
				<textarea name="txtinfo"><?= set_value('txtinfo', $item['product_info']); ?></textarea>
				<script>
					fileman = '<?=base_url('public/js/ckeditor/fileman/index.html');?>';
					CKEDITOR.replace('txtinfo', {
						filebrowserImageBrowseUrl: fileman,
						filebrowserImageBrowseUrl: fileman + '?type=image',
						removeDialogTabs: 'link:upload;image:upload'
					});
				</script>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Product image</label>

			<div class="col-sm-8">
				<img src="<?= base_url("public/images/products/$item[id]/thumbs/$item[product_img]") ?>">
				<input type="file" class="form-control" name="userfile" size="20"/>
			</div>
		</div>
		<input type="hidden" name="txtoldimg" value="<?= $item['product_img']; ?>">

		<div class="form-group">
			<label class="col-sm-2 control-label">Product detail</label>

			<div class="col-sm-8">
				<div id="detailbox"><a href="javascript:void()" class="btn btn-success" id="product_btn_detailpopup">Open
						detail window</a></div>
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label"></label>

			<div class="col-sm-8">
				<table class="table table-bordered">
					<thead>
					<th>Spec</th>
					<th>Value</th>
					<th>Unit</th>
					</thead>
					<tbody id="detailtable">
					<?php
					$hidekeys = $hidevalues = '';
					if (isset($details)) {
						foreach ($details as $detail) {
							echo "<tr>";
							echo "<td>" . $detail['spec_name'] . "</td>";
							echo "<td>" . $detail['detail_value'] . "</td>";
							echo "<td>" . $detail['spec_unit'] . "</td>";
							echo "</tr>";
							$speckeys[] = $detail['detail_spec'];
							$specvalues[] = $detail['detail_value'];
						}
						$hidekeys = implode(',', $speckeys);
						$hidevalues = implode(',', $specvalues);
					}

					?>
					</tbody>
				</table>
			</div>
		</div>
		<input type="hidden" name="speckeys" id="hidespeckey" value="<?= $hidekeys ?>">
		<input type="hidden" name="specvalues" id="hidespecvalue" value="<?= $hidevalues ?>">
		<?php endforeach; ?>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
			</div>
		</div>
		</p>
	</div>
	<div class="panel-footer">
		<div class="form-group">
			<div class="" style="text-align: center">
				<button type="submit" class="btn btn-success product_btn_submit">Edit</button>
				<a href="<?= base_url('product/show') ?>" class="btn btn-danger">Cancel</a>
			</div>
		</div>
	</div>
</div>
<?=
form_close() ?>
