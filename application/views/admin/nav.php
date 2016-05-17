<?php
$this->load->model(['product_model', 'vendor_model', 'cate_model', 'user_model', 'spec_model', 'bill_model','gift_model']);
?>
<div class="navbar navbar-inverse">
    <div class="adjust-nav">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" id="show_menu_admin">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<?= base_url('admin/dash') ?>">
                <i class="fa fa-modx fa-1x"> Admin CP</i>
            </a>
<span class="logout-spn  hidden-sm hidden-md hidden-lg">
                  <a href="<?= base_url('product/phone') ?>" style="color:#fff;"><i class="fa fa-home fa-1x"></i></a>
                  <a href="<?= base_url('user/logout') ?>" style="color:#fff;"><i class="fa fa-sign-out fa-1x"></i></a>
                </span>
        </div>
<span class="logout-spn hidden-xs">
                  <a href="<?= base_url('product/phone') ?>" style="color:#fff;"><i class="fa fa-home fa-1x"></i></a>
                  <a href="<?= base_url('user/logout') ?>" style="color:#fff;"><i class="fa fa-sign-out fa-1x"></i></a>
                </span>

    </div>
</div>
<!-- /. NAV TOP  -->
<!--<p class="hidden-md hidden-lg hidden-sm" style="text-align: right">-->
<!--    <a href="#" id="show_menu_admin"><i class="fa fa-diamond fa-1x"></i> Show menu</a>-->
<!--</p>-->
<nav class="navbar-default navbar-side hidden-xs" id="menu_admin" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav" id="main-menu">
            <!--            <li>-->
            <!--                <a href="" ><i class="fa fa-desktop "></i>Dashboard <span class="badge">5</span></a>-->
            <!--            </li>-->

            <li>
                <a href="<?= base_url('bill/show') ?>"><i class="fa fa-money"></i>Manage Bills <span
                        class="badge"><?= $this->bill_model->do_count() ?></span></a>
            </li>

            <li>
                <a href="<?= base_url('product/show') ?>"><i class="fa fa-table "></i>Manage Products <span
                        class="badge"><?= $this->product_model->do_count() ?></span></a>
            </li>

            <li>
                <a href="<?= base_url('gift/show') ?>"><i class="fa fa-gift"></i>Manage Gifts <span
                        class="badge"><?= $this->gift_model->do_count() ?></span></a>
            </li>

            <li>
                <a href="<?= base_url('vendor/show') ?>"><i class="fa fa-edit "></i>Manage Vendors <span
                        class="badge"><?= $this->vendor_model->do_count() ?></span></a>
            </li>


            <li>
                <a href="<?= base_url('cate/show') ?>"><i class="fa fa-qrcode "></i>Manage Categories <span
                        class="badge"><?= $this->cate_model->do_count() ?></span></a>
            </li>
            <li>
                <a href="<?= base_url('spec/show') ?>"><i class="fa fa-qrcode "></i>Manage Specification <span
                        class="badge"><?= $this->spec_model->do_count() ?></span></a>
            </li>
            <li>
                <a href="<?= base_url('user/show') ?>"><i class="fa fa-bar-chart-o"></i>Manage Users <span
                        class="badge"><?= $this->user_model->do_count() ?></span></a>
            </li>


        </ul>
    </div>

</nav>

<div id="page-wrapper">

    <div id="page-inner">
        <?= $dialog ?>
