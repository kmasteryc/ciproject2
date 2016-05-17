<div class="panel panel-primary">
    <div class="panel-heading">
        Show all gifts
    </div>
    <div class="panel-body">
        <p>

        <div class="table-responsive">
            <table class="table table-hover table-bordered datatable">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Action</th>
                    <th>Gift name</th>
                    <th>Gift time</th>
                    <th>Status</th>
                    <th>Products applied</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($gifts as $gift): ?>
                    <tr>
                        <td>
                            <?php echo $gift['id']; ?>
                        </td>
                        <td>
                            <a href='<?php echo base_url("gift/edit/$gift[id]"); ?>'
                               id='<?php echo $gift['id'] ?>'>Edit</a> -
                            <a href='#' class='gift_lnk_del'
                               data-id='<?php echo $gift['id'] ?>'>Delete</a>
                        </td>
                        <td><?=limit_text($gift['gift_content'],200)?></td>
                        <td><?php echo $gift['gift_startdate'].' to '.$gift['gift_enddate']; ?></td>

                        <td>
                        <?php
                        $now = date('Y-m-d');
                         if ($now < $gift['gift_startdate'])
                         {
                            echo "<span class='text-primary'>Up coming</span>";
                         }
                         elseif ($now > $gift['gift_enddate'])
                         {
                             echo "<span class='text-muted'>Expirated</span>";
                         }
                        else
                        {
                            echo "<span class='text-danger'>In progress</span>";
                        }
                        ?>
                        </td>
                        <td><?php echo count($gift['gift_products']); ?></td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>
        </p>
    </div>
    <div class="panel-footer">
        <div class="form-group" style="text-align: center">
            <a href="<?= base_url('gift/create') ?>" class="btn btn-danger">Create gift</a>
        </div>
    </div>
</div>
