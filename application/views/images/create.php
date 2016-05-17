<?= form_open_multipart('', array('class' => 'form-horizontal')); ?>
    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">Image for product</label>

        <div class="col-sm-4">
            <select class="form-control" name='intproduct' id="intlevel">
                <?php
                foreach ($products as $product):
                    $select = ($product['id'] == set_value('intproduct')) ? 'selected' : '';
                    echo "<option value='$product[id]' $select>$product[product_name]</option>";
                endforeach;
                ?>
            </select>
        </div>
    </div>
    <div class="form-group">

        <label for="inputEmail3" class="col-sm-2 control-label">Choose img</label>

        <div class="col-sm-4" id="filearea">
            <p class="filebox">
            <input type="file" class="form-control" name="userfile[]" multiple size="20"/>
            </p>
        </div>
    </div>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label"></label>

        <div class="col-sm-4">
            <a class="btn btn-warning" id="image_btn_add">Add more boxes</a>
            <button type="submit" class="btn btn-success">Upload</button>
        </div>
<?= form_close(); ?>