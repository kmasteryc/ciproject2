<script type="text/javascript" src="https://www.google.com/recaptcha/api.js"></script>
<div id="comment_form">
	<?php
	if (isset($this->session->userdata['user'])) {
		$name = $this->session->userdata['user'];
		$disable = 'disabled';
	} elseif (isset($this->session->userdata['guest'])) {
		$name = $this->session->userdata['guest'];
		$disable = 'disabled';
	} else {
		$disable = '';
		$name = '';
	}
	?>
	<div class="panel panel-primary">
		<div class="panel-heading">
		<span class="pull-right">
			<i class="fa fa-inbox fa-2x"></i>
		</span>
		<span class="pull-left panel-title">
			Form
		</span>

			<div class="clearfix"></div>
		</div>
		<div class="panel-body">


			<div class="row">
				<div class="form-group">
					<label class="col-md-3 control-label">Comment as </label>

					<div class="col-md-6">

						<input type="text" class="form-control" name='txtguest'
							   value="<?= $name ?>" <?= $disable ?>>

						<span class="help-block"><?= form_error("txtguest"); ?></span>
					</div>
				</div>
			</div>

			<div class="row" id="reply_to" style="display: none">
				<div class="form-group">
					<label class="col-md-3 control-label">
						<b>Reply for</b><br />
						<a id="btn_reply_close"><b>Cancel</b></a>
					</label>

					<div class="col-md-6" id="">
						<p type="text" class="" id="rep_content"></p>
					</div>
				</div>
				<input type="hidden" name="intparent" value="">
			</div>

			<!--			<div class="row" id="reply_to" style="display: none">-->
			<!--				<div class="col-md-3">-->
			<!--					<b>Reply to</b>-->
			<!--					<a id="btn_reply_close"><b>Cancel</b></a>-->
			<!--				</div>-->
			<!--				<div class="col-md-6">-->
			<!--					<div class="panel panel-default">-->
			<!--						<div class="panel-heading"></div>-->
			<!--						<div class="panel-body"></div>-->
			<!--					</div>-->
			<!--				</div>-->
			<!---->
			<!--			</div>-->


			<div class="row">
				<div class="form-group">
					<label class="col-md-3 control-label">Comment content</label>

					<div class="col-md-6">
						<span class="help-block"><?= form_error("txtcontent"); ?></span>
							<textarea id="txtcontent" name="txtcontent" class="form-control" cols="20"
									  rows="3"><?= set_value('txtcontent'); ?></textarea>
					</div>
				</div>
			</div>

			<div class="row">
				<label class="col-md-3 control-label"></label>

				<div class="col-md-6" id="recaptcha_box">
					<div class="g-recaptcha" data-sitekey="6LcXSR8TAAAAAC7eL2x08seAtNIAM0fwZG_WB0NV"
						 style="transform:scale(0.8);-webkit-transform:scale(0.8);transform-origin:0 0;-webkit-transform-origin:0 0;"></div>
				</div>
			</div>

			<div class="row">
				<label class="col-md-3 control-label"></label>

				<div class="col-md-6">
					<button id="btn_comment" type="submit" class="btn btn-default">Comment</button>
				</div>
			</div>

		</div>
	</div>
</div>

<div id="comment_section">

</div>
