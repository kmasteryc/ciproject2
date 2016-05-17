<link rel="stylesheet" type="text/css" href="<?= site_url("public/css/bootstrap.min.css") ?>">
<script src="<?= site_url("public/js/jquery.min.js") ?>"></script>
<script src="<?= site_url("public/js/popup.js") ?>"></script>
<div class="table-responsive">
    <table class="table table-hover table-bordered">
        <tr>
            <td></td>
            <td>Spec</td>
            <td>Preset</td>
            <td>Unit</td>
            <td>New Value</td>
        </tr>
        <?php
        foreach ($specs as $spec) {
            echo "<tr>";
            echo "<td><input type='checkbox' name='specs[]' value='$spec[spec_name]' id='$spec[id]'></td>";
            echo "<td>$spec[spec_name]</td>";
            echo "<td><select name='$spec[id]' class='slc_presetvalue'>";
            foreach (to_array($spec['spec_presetvalue']) as $vl) {
                echo "<option value='$vl' class='preset_option'>$vl</option>";
            }
            echo "</select></td>";
            echo "<td>$spec[spec_unit]</td>";
            echo "<td><input type='text' placeholder='Enter your own value'></td>";
            echo "</tr>";
        }
        ?>
    </table>
</div>
<div align="center">
    <button class='btn btn-success' id='done'>Update</button>
    <button class='btn btn-warning' id='close'>Close</button>
</div>