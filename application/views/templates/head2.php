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
                <li class="active"><a href="#">Home</a></li>

                <?php foreach($this->cate_model->do_get() as $cate): ?>
                    <li class="dropdown">

                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?=$cate['cate_name']?> <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                        </a>
                            <li><a href="#">Separated link</a></li>
                            <li role="separator" class="divider"></li>
                            <?php
                            foreach ($this->vendor_model->do_get(array('vendor_cate'=>$cate['id'])) as $vendor){
                                echo "<li><a href=''>$vendor[vendor_name]</a></li>";
                            }
                            ?>
                        </ul>
                    </li>
                <?php endforeach?>



                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li class="dropdown-header">Nav header</li>
                        <li><a href="#">Separated link</a></li>
                        <li><a href="#">One more separated link</a></li>




            </ul>
            <ul class="nav navbar-nav navbar-right">
                <?php
                if ($this->auth->check(FALSE, 0)) {
                    echo '<li><a href="#">Hello guest </a></li>';
                    echo '<li><a href="' . base_url('user/register') . '"><span class="glyphicon glyphicon-user"></span> Register</a></li>';
                    echo '<li><a href="' . base_url('user/login') . '"><span class="glyphicon glyphicon-shopping-cart"></span> Log in</a></li>';
                }
                if ($this->auth->check(FALSE, 1)) {
                    echo '<li><a href="#">Hello. ' . $this->session->userdata['user'] . '</a></li>';
                    echo '<li><a href="' . base_url('admin/index') . '"><span class="glyphicon glyphicon-user"></span>Manage</a></li>';
                    echo '<li><a href="' . base_url('user/logout') . '"><span class="glyphicon glyphicon-shopping-cart"></span> Log out</a></li>';
                }
                if ($this->auth->check(FALSE, 2)) {
                    echo '<li><a href="#">Hello. ' . $this->session->userdata['user'] . '</a></li>';
                    echo '<li><a href="' . base_url('admin/index') . '"><span class="glyphicon glyphicon-user"></span>Manage</a></li>';
                    echo '<li><a href="' . base_url('user/logout') . '"><span class="glyphicon glyphicon-shopping-cart"></span> Log out</a></li>';
                }
                if ($this->auth->check(FALSE, 3)) {
                    echo '<li>Hello. ' . $this->session->userdata['user'] . '</li>';
                    echo '<li><a href="#"><span class="glyphicon glyphicon-user"></span>Manage</a></li>';
                    echo '<li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Log out</a></li>';
                };
                ?>
            </ul>
        </div><!--/.nav-collapse -->
    </div><!--/.container-fluid -->
</nav>