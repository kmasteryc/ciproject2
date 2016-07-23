<div class="row">
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<?=base_url()?>"><i class="glyphicon glyphicon-home"></i></a>

            <form class="navbar-form navbar-left" id="myformtop" role="search" autocomplete="off">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search product" id="txt_nav_search">
                    <p id="ajax_search_box"></p>
                </div>

            </form>


        </div>

        <div id="navbar" class="navbar-collapse collapse">

            <ul class="nav navbar-nav">

                <?php foreach ($this->cate_model->do_get() as $cate): ?>
                    <li class="dropdown topicon">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-haspopup="true" aria-expanded="false"><?= $cate['cate_name'] ?> <span
                                class="caret"></span></a>
                        <ul class="dropdown-menu">
                            </a>
                            <li><a href="<?= base_url('product/' . $cate['cate_slug']) ?>">All <?= $cate['cate_slug'] ?>
                                    products</a></li>
                            <li role="separator" class="divider"></li>
                            <?php
                            foreach ($this->vendor_model->do_get(array('vendor_cate' => $cate['id'])) as $vendor) {
                                echo "<li><a href='" . base_url('product/' . $cate['cate_slug'] . '/' . $vendor['vendor_slug']) . "'>$vendor[vendor_name]</a></li>";
                            }
                            ?>
                        </ul>
                    </li>
                <?php endforeach ?>

<!--                <li id="myformtop">-->
<!--                    <form autocomplete="off">-->
<!--                        <input type="text" class="form-control" placeholder="Search product" id="txt_nav_search">-->
<!--                        <p id="ajax_search_box"></p>-->
<!--                    </form>-->
<!--                </li>-->
            </ul>



            <ul class="nav navbar-nav navbar-right">

                <?php
                if ($this->auth->check(FALSE, 0)) {
//                    echo '<li><a href="' . base_url('user/register') . '"><span class="glyphicon glyphicon-user"></span> Register</a></li>';
//                    echo '<li><a href="' . base_url('user/login') . '"><i class="fa fa-sign-in"></i></span> Log in</a></li>';
                }
                if ($this->auth->check(FALSE, 1)) {
                    echo '<li><a href="' . base_url('user/logout') . '"><i class="fa fa-sign-out"></i> Log out ('.$this->session->userdata['user'].')</a></li>';
                }
                if ($this->auth->check(FALSE, 2)) {
                    echo '<li><a href="'.base_url('admin/dash').'"><span class="glyphicon glyphicon-user"></span> Manage</a></li>';
                    echo '<li><a href="' . base_url('user/logout') . '"><i class="fa fa-sign-out"></i> Log out ('.$this->session->userdata['user'].')</a></li>';
                }
                if ($this->auth->check(FALSE, 3)) {
                    echo '<li><a href="'.base_url('admin/dash').'"><span class="glyphicon glyphicon-user"></span> Manage</a></li>';
                    echo '<li><a href="' . base_url('user/logout') . '"><i class="fa fa-sign-out"></i> Log Out ('.$this->session->userdata['user'].')</a></li>';
                };
                ?>
                <li><a href="#" class="btn_show_cart"><i class="fa fa-shopping-cart"></i> Show cart</a></li>
            </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
    <!--/.container-fluid -->
</nav>
</div>
