<html>
<head>
    <title><?php echo $title; ?></title>
    <link rel="stylesheet" type="text/css" href="<?php echo site_url("public/css/bootstrap.min.css"); ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo site_url("public/css/jquery-ui.min.css"); ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo site_url("public/css/font-awesome.min.css"); ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo site_url("public/css/lightslider.css"); ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo site_url("public/css/custom.css"); ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo site_url("public/css/jquery.dynatable.css"); ?>">
    <script>
        var base_url = '<?= base_url() ?>';
        var cate_menu = "<?php
foreach ($this->misc_model->simple_menu('cates') as $item):
  echo "<option value='$item[id]'>$item[cate_name]</option>";
endforeach;
?> ";
    </script>
<!--    <script type="text/javascript" src="https://www.google.com/recaptcha/api.js"></script>-->
    <script type="text/javascript" src="<?= site_url("public/js/jquery.min.js"); ?>"></script>
    <script type="text/javascript" src="<?= site_url("public/js/jquery-ui.min.js"); ?>"></script>
    <script type="text/javascript" src="<?= site_url("public/js/lightslider.js"); ?>"></script>
    <script type="text/javascript" src="<?= site_url("public/js/ckeditor/ckeditor.js"); ?>"></script>
    <script type="text/javascript" src="<?= site_url("public/js/bootstrap.min.js"); ?>"></script>
    <script type="text/javascript" src="<?= site_url("public/js/jquery.dynatable.js"); ?>"></script>
    <script type="text/javascript" src="<?= site_url("public/js/custom.js"); ?>"></script>
    <script type="text/javascript" src="<?= site_url("public/js/effect.js"); ?>"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">
</head>
<body>
<div class="container" id="top">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Logo</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="#">Home</a>
                    </li>
                    <?php foreach ($this->cate_model->do_get() as $cate): ?>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true" aria-expanded="false"><?= $cate['cate_name'] ?> <span
                                    class="caret"></span></a>
                            <ul class="dropdown-menu">
                                </a>
                                <li><a href="<?=base_url('product/'.$cate['cate_slug'])?>">All <?= $cate['cate_name'] ?> products</a></li>
                                <li role="separator" class="divider"></li>
                                <?php
                                foreach ($this->vendor_model->do_get(array('vendor_cate' => $cate['id'])) as $vendor) {
                                    echo "<li><a href='".base_url('product/'.$cate['cate_slug'].'/'.$vendor['vendor_slug'])."'>$vendor[vendor_name]</a></li>";
                                }
                                ?>
                            </ul>
                        </li>

                    <?php endforeach ?>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <?php
                    if ($this->auth->check(FALSE, 0)) {
                        echo '<li><a href="#">Hello guest </a></li>';
                        echo '<li><a href="' . base_url('user/register') . '"><span class="glyphicon glyphicon-user"></span> Register</a></li>';
                        echo '<li><a href="' . base_url('user/login') . '"><i class="fa fa-sign-in"></i></span> Log in</a></li>';
                    }
                    if ($this->auth->check(FALSE, 1)) {
                        echo '<li><a href="#">Hello. ' . $this->session->userdata['user'] . '</a></li>';
                        echo '<li><a href="' . base_url('admin/index') . '"><span class="glyphicon glyphicon-user"></span> Manage</a></li>';
                        echo '<li><a href="' . base_url('user/logout') . '"><i class="fa fa-sign-out"></i> Log out</a></li>';
                    }
                    if ($this->auth->check(FALSE, 2)) {
                        echo '<li><a href="#">Hello. ' . $this->session->userdata['user'] . '</a></li>';
                        echo '<li><a href="' . base_url('admin/index') . '"><span class="glyphicon glyphicon-user"></span> Manage</a></li>';
                        echo '<li><a href="' . base_url('user/logout') . '"><i class="fa fa-sign-out"></i> Log out</a></li>';
                    }
                    if ($this->auth->check(FALSE, 3)) {
                        echo '<li>Hello. ' . $this->session->userdata['user'] . '</li>';
                        echo '<li><a href="#"><span class="glyphicon glyphicon-user"></span>Manage</a></li>';
                        echo '<li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Log out</a></li>';
                    };
                    ?>
                    <li><a href="#" class="btn_show_cart"><i class="fa fa-shopping-cart"></i> Show cart</a></li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
        <!--/.container-fluid -->
    </nav>
<?= $dialog ?>