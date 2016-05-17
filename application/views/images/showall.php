        <div class="table-responsive">
            <table class="table table-hover table-bordered">
                <tr>
                    <td>ID</td>
                    <td>Action</td>
                    <td>Cate name</td>
                </tr>
                <?php foreach ($cates as $cate): ?>
                    <tr>
                        <td>
                            <?php echo $cate['id']; ?>
                        </td>
                        <td>
                            <a href='javasciprt:void()' class='cate_lnk_edit' id='<?php echo $cate['id'] ?>'>Edit</a> - 
                            <a href='javasciprt:void()' class='cate_lnk_del' id='<?php echo $cate['id'] ?>'>Delete</a>
                        </td>
                        <td><?php echo $cate['cate_name']; ?></td>
                    </tr>
                <?php endforeach; ?>
            </table>
            <center><?php echo $pagination; ?></center>
        </div>
