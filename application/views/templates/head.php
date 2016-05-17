<html>
<head>
    <title><?php echo $title; ?></title>
    <link rel="stylesheet" type="text/css" href="<?php echo site_url("public/css/bootstrap.min.css"); ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo site_url("public/css/bootstrap_flat.css"); ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo site_url("public/css/jquery-ui.min.css"); ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo site_url("public/css/font-awesome.min.css"); ?>">

    <link rel="stylesheet" type="text/css" href="<?php echo site_url("public/css/jquery.dynatable.css"); ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo site_url("public/css/lightslider.css"); ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo site_url("public/css/custom.css"); ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo site_url("public/css/jasny-bootstrap.min.css"); ?>">
    <script>
        var base_url = '<?= base_url() ?>';
    </script>
    <!--    <script type="text/javascript" src="https://www.google.com/recaptcha/api.js"></script>-->
    <script type="text/javascript" src="<?= site_url("public/js/jquery.min.js"); ?>"></script>
    <script type="text/javascript" src="<?= site_url("public/js/jquery-ui.min.js"); ?>"></script>
    <script type="text/javascript" src="<?= site_url("public/js/jasny-bootstrap.min.js"); ?>"></script>
    <script type="text/javascript" src="<?= site_url("public/js/lightslider.js"); ?>"></script>
    <script type="text/javascript" src="<?= site_url("public/js/bootstrap.min.js"); ?>"></script>
    <script type="text/javascript" src="<?= site_url("public/js/custom.js"); ?>"></script>
    <script type="text/javascript" src="<?= site_url("public/js/effect.js"); ?>"></script>
    <?php
    if (isset($my_js)){
        echo '<script type="text/javascript" src="'.site_url("public/js/$my_js").'"></script>';
    }
    if (isset($customjs)){
        echo '<script>'.$customjs.'</script>';
    }
    ?>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">
</head>
<body>
    <?php
        if (!isset($is_welcome)){
            echo '<div class="container" id="top">';
            echo $this->load->view('templates/nav');
        }
        echo $dialog;
    ?>
