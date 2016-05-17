<?php if (isset($customjs)) echo "<script>" . $customjs . "</script>" ?>
<div class="col-md-6">
	<span id="comment_status" style="display: none"></span>
<div id="comment_box">

</div>
</div>
<div class="col-md-6">
	<div id="ajax_comment">

	</div>
</div>
<script>
	$("#comment_box").load(base_url + 'comment/create/' + product_id);
	$("#ajax_comment").load(base_url + 'comment/show_comment/'+ product_id );
</script>