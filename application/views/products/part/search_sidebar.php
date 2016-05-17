<p class="" style="text-align: right">
    <a href="#" id="toggle_search" class="hidden-lg hidden-md"><i class="fa fa-search fa-1x"></i> <span>Advanced search</span></a>
</p>
<div class="clr"></div>
<form action="<?=base_url('product/search')?>" method="GET" id="sidebar_search" class="hidden-xs hidden-sm">
    <div class="form-group">
        <label>By vendor</label>
        <select type="text" name="intvendor" class="form-control">
            <option value="0">All vendor</option>
            <?php
            foreach ($vendors as $vendor):
                $select = $vendor['id'] == set_value('intvendor') ? 'selected' : '';
                echo "<option value='$vendor[id]' $select>$vendor[vendor_name]</option>";
            endforeach;
            ?>
        </select>
        <span id="helpBlock2" class="help-block"><?= form_error("intvendor"); ?></span>
    </div>
    <div class="form-group">
        <label>By name</label>
        <input type="text" name="txtname" class="form-control" value="<?= set_value('txtname') ?>"
               placeholder="Product name">
        <span id="helpBlock2" class="help-block"><?= form_error("txtname"); ?></span>

    </div>
    <div class="form-group">
        <label>By price</label>
        <input type="text" name="intprice_min" class="form-control" value="<?= set_value('intprice_min') ?>"
               placeholder="Min price">
        <span id="helpBlock2" class="help-block"><?= form_error("intprice_min"); ?></span>
        <input type="text" name="intprice_max" class="form-control" value="<?= set_value('intprice_max') ?>"
               placeholder="Max price">
        <span id="helpBlock2" class="help-block"><?= form_error("intprice_max"); ?></span>
    </div>

    <?php

    foreach ($specs as $spec):
        $temp_spec = set_value("spec[]");
        $presets = explode(';', $spec['spec_presetvalue']);
        ?>
        <div class="form-group">
            <label>By <?= $spec['spec_name'] ?></label>
            <select name="spec[<?= $spec['id'] ?>]" class="form-control">
                <option value="0">---</option>
                <?php
                foreach ($presets as $preset):
                    $select1 = $preset == $temp_spec ? 'selected' : '';
                    echo "<option value='$preset' $select1>$preset $spec[spec_unit]</option>";
                endforeach
                ?>
            </select>
            <span id="helpBlock2" class="help-block"><?= form_error('spec['.$spec['id'].']'); ?></span>

        </div>
        <?php
    endforeach;
    ?>
    <div class="form-group" style="text-align: center">
        <button class="btn btn-primary" type="submit" value="" class="form-control">Search</button>
        <button class="btn btn-danger" type="reset" value="" class="form-control">Reset</button>
    </div>
</form>

