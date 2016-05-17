<div class="panel panel-primary">
    <div class="panel-heading">
        Billifications manage
    </div>
    <div class="panel-body">
        <p>

        <div class="table-responsive">
            <table class="table table-hover table-bordered datatable">
                <thead>
                <tr>
                    <td>ID</td>
                    <td>Action</td>
                    <td>Bill name</td>
                    <td>Bill phone</td>
                    <td>Bill address</td>
                    <td>Note</td>
                    <td>Status</td>
                    <td>Last update</td>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($bills as $bill): ?>

                    <tr>

                            <td><?= $bill['id']; ?></td>
                            <td><a href="<?= base_url('bill/detail/' . $bill['id']) ?>">View</a></td>
                            <td><?= $bill['bill_name']; ?></td>
                            <td><?= $bill['bill_phone']; ?></td>
                            <td><?= $bill['bill_address']; ?></td>
                            <td><?= $bill['bill_note']; ?></td>
                                <?php
                                $states = json_decode($bill['bill_state'], TRUE);
                                foreach ($states as $k => $state):
                                    if ($state['state_time'] != 0) {
                                        switch ($k):
                                            case 1:
                                                $cur_state = "Requesting";
                                                break;
                                            case 2:
                                                $cur_state = "Validating";
                                                break;
                                            case 3:
                                                $cur_state = "Shipping";
                                                break;
                                            case 4:
                                                $cur_state = "Done";
                                                break;
                                            default:
                                                $cur_state = "<td>--</td>";
                                                break;
                                        endswitch;
                                        $last_update = $state['state_time'];
                                    }
                                endforeach;
                                echo "<td>$cur_state</td>";
                                echo "<td>$last_update</td>";
                                ?>
                    </tr>

                <?php endforeach; ?>
                </tbody>
            </table>
        </div>

        </p>
    </div>
<!--    <div class="panel-footer">-->
<!--        <div class="form-group" style="text-align: center">-->
<!--            <a href="--><?//= base_url('bill/create') ?><!--" class="btn btn-danger">Create billification</a>-->
<!--        </div>-->
<!--    </div>-->
</div>