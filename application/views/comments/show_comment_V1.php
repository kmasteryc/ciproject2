<br>

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
                        <strong class="primary-font info_comment_user">
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
                            <?= \Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $comment['comment_time'])->diffForHumans(); ?>
                        </small>
                    </div>
                    <p class="info_comment_content">
                        <?= $comment['comment_content'] ?>

                    <p class="comment-action">
                        <?php
                        if (@$this->auth->whoareyou('level') >= 2) {
                            echo '<a href="#" class="btn_comment_del" data-cid="' . $comment['cid'] . '" data-uid="' . $comment['uid'] . '">Delete</a>';
                        }

                        ?>
                        <a href="" class="btn_comment_rep" data-cid="<?= $comment['cid'] ?>">Reply</a>
                    </p>
                    </p>

                </div>
            </li>
            <?php
                if (isset($comment['comment_child'])):
                    foreach ($comment['comment_child'] as $child):
            ?>

            <li class="left list_reply">
                        <span class="comment-img pull-left">
                    		<img src="http://bootdey.com/img/Content/user_5.jpg" alt="User Avatar">
                    	</span>

                <div class="comment-body">
                    <div class="header">
                        <strong class="primary-font info_comment_user">
                            <?php
                            if ($child['user_level'] == 1) {
                                $label = '<span class="label label-primary">guest</span>';
                            } elseif ($child['user_level'] == 0) {
                                $label = '<span class="label label-default">guest</span>';
                            } else {
                                $label = '<span class="label label-danger">admin</span>';
                            }
                            if ($child['comment_guest']) {
                                echo $child['comment_guest'] . $label;
                            } else {
                                echo $child['user_name'] . $label;
                            }
                            ?>
                        </strong>
                        <small class="pull-right text-muted"><i class="fa fa-clock-o"></i>
                            <?= \Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $child['comment_time'])->diffForHumans(); ?>
                        </small>
                    </div>
                    <p class="info_comment_content">
                        <?= $child['comment_content'] ?>

                    <p class="comment-action">
                        <?php
                        if (@$this->auth->whoareyou('level') >= 2) {
                            echo '<a href="#" class="btn_comment_del" data-cid="' . $child['cid'] . '" data-uid="' . $child['uid'] . '">Delete</a>';
                        }

                        ?>
                        <a href="" class="btn_comment_rep" data-cid="<?= $child['cid'] ?>">Reply</a>
                    </p>
                    </p>

                </div>
            </li>
            <?php
            endforeach;
            endif;
            ?>
        </ul>

        <?php
    endforeach;
    echo "<div class='comment_pagi'>" . $this->pagination->create_links() . "</div>";
    ?>
</div>
