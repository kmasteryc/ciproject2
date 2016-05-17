<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><?php echo $title; ?></title>
    <link rel="stylesheet" type="text/css" href="<?php echo site_url("public/css/bootstrap.min.css"); ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo site_url("public/css/bootstrap_flat.css"); ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo site_url("public/css/jquery-ui.min.css"); ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo site_url("public/css/font-awesome.min.css"); ?>">

    <link rel="stylesheet" type="text/css" href="<?php echo site_url("public/css/jquery.dynatable.css"); ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo site_url("public/css/custom.css"); ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo site_url("public/css/jasny-bootstrap.min.css"); ?>">
    <link href="<?=base_url('public/css/custom_admin.css')?>" rel="stylesheet" type="text/css"/>
    <?php
    if (isset($my_css)){
        echo '<link rel="stylesheet" type="text/css" href="'.site_url("public/css/$my_css").'">';
    }
    ?>

    <script>
        var base_url = '<?= base_url() ?>';
    </script>
    <!--    <script type="text/javascript" src="https://www.google.com/recaptcha/api.js"></script>-->
    <script type="text/javascript" src="<?= site_url("public/js/jquery.min.js"); ?>"></script>
    <script type="text/javascript" src="<?= site_url("public/js/jquery-ui.min.js"); ?>"></script>
    <script type="text/javascript" src="<?= site_url("public/js/ckeditor/ckeditor.js"); ?>"></script>
    <script type="text/javascript" src="<?= site_url("public/js/bootstrap.min.js"); ?>"></script>
    <script type="text/javascript" src="<?= site_url("public/js/jquery.dynatable.js"); ?>"></script>
    <script type="text/javascript" src="<?= site_url("public/js/jasny-bootstrap.min.js"); ?>"></script>
    <script type="text/javascript" src="<?= site_url("public/js/custom.js"); ?>"></script>
    <script type="text/javascript" src="<?= site_url("public/js/jquery.canvasjs.min.js"); ?>"></script>
    <?php
    if (isset($my_js)){
        echo '<script type="text/javascript" src="'.site_url("public/js/$my_js").'"></script>';
    }
    if (isset($customjs)){
        echo '<script>'.$customjs.'</script>';
    }
    ?>
    <meta charset="UTF-8">
</head>
<body>
