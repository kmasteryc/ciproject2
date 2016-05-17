<?php
if (isset($this->session->userdata['user'])) {
    ?>
    <div class="col-md-12">
        <div class="form-group">
            <label class="col-md-2 control-label">Comment as </label>

            <div class="col-md-4">
                <input type="text" class="form-control" name='txtguest' value="<?= $this->session->userdata['user'] ?>"
                       disabled>
            </div>
        </div>
    </div>
    <?php
} else {
    ?>
    <div class="col-md-12">
        <div class="form-group">
            <label class="col-md-2 control-label">Your name </label>

            <div class="col-md-4">
                <input type="text" class="form-control" name='txtguest' value="<?php echo set_value('txtguest'); ?>">
                <span id="helpBlock2" class="help-block"><?= form_error("txtguest"); ?></span>
            </div>
        </div>
    </div>
<?php } ?>
<div class="col-md-12">
    <div class="form-group">
        <label class="col-md-2 control-label">Comment content</label>

        <div class="col-md-8">
            <span id="helpBlock2" class="help-block"><?= form_error("txtcontent"); ?></span>
        <textarea id="txtcontent" name="txtcontent" class="form-control" cols="20" rows="3"><?php echo set_value('txtcontent'); ?></textarea>
        </div>
    </div>
</div>
<div class="col-md-12">
    <div class="form-group">
        <label class="col-md-2 control-label"></label>

        <div class="col-md-8" id="recaptcha_box">
            <div class="g-recaptcha" data-sitekey="6LcXSR8TAAAAAC7eL2x08seAtNIAM0fwZG_WB0NV"></div>
        </div>
    </div>
</div>
<div class="col-md-12">
    <div class="form-group">
        <label class="col-md-2 control-label"></label>

        <div class="col-md-4">
            <button id="btn_comment" class="btn btn-default">Create</button>
        </div>
    </div>
</div>