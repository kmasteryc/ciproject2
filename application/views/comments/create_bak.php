<script type="text/javascript" src="https://www.google.com/recaptcha/api.js"></script>
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
            <label class="col-md-2 control-label">Name</label>

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
            <textarea id="txtcontent" name="txtcontent" class="form-control" cols="20"
                      rows="3"><?php echo set_value('txtcontent'); ?></textarea>
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
<div id="comment_section">
    <div class="clr"></div>
    <?php foreach ($comments as $comment): ?>

        <ul class="comment">
            <li class="left">
                    	<span class="comment-img pull-left">
                    		<img src="http://bootdey.com/img/Content/user_3.jpg" alt="User Avatar">
                    	</span>

                <div class="comment-body">
                    <div class="header">
                        <strong class="primary-font">
                            <?php
                            if ($comment['user_level'] == 1) {
                                $label = '<span class="label label-primary">guest</span>';
                            } elseif ($comment['user_level'] == 0) {
                                $label = '<span class="label label-default">guest</span>';
                            } else {
                                $label = '<span class="label label-danger">admin</span>';
                            }
                            if ($comment['comment_guest']) {
                                echo $comment['comment_guest'] . $label;
                            } else {
                                echo $comment['user_name'] . $label;
                            }
                            ?>
                        </strong>
                        <small class="pull-right text-muted"><i class="fa fa-clock-o"></i>
                            <?=\Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $comment['comment_time'])->diffForHumans();?>
                        </small>
                    </div>
                    <p>
                        <?= $comment['comment_content'] ?>
                    </p>
                </div>
            </li>
        </ul>

        <!--    <div class="comment_section_child">-->
        <!--        <div class="row_user">-->
        <!--            --><? //=$comment['user_name'].': '.$comment['comment_guest']?>
        <!--        </div>-->
        <!--        <div class="row_question">--><? //=$comment['comment_content']?><!--</div>-->
        <!--        <div class="row_action">action</div>-->
        <!--    </div>-->
    <?php endforeach ?>
</div>
