<?= form_open_multipart('', array('class' => 'form-horizontal', 'method' => 'POST')); ?>
    <div class="panel panel-primary">
        <div class="panel-heading">
            Show all vendors
        </div>
        <div class="panel-body">
            <p>

            <div class="form-group">
                <label class="col-sm-2 control-label">Product name</label>

                <div class="col-sm-8">
                    <input type="text" class="form-control" name='txtname' value="<?= set_value('txtname'); ?>">
                    <span id="helpBlock2" class="help-block"><?= form_error("txtname"); ?></span>

                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Product price</label>

                <div class="col-sm-8">
                    <input type="number" class="form-control" name='intprice' value="<?= set_value('intprice'); ?>" >
                    <span id="helpBlock2" class="help-block"><?= form_error("intprice"); ?></span>

                </div>
            </div>


            <div class="form-group">
                <label class="col-sm-2 control-label">Product discount</label>

                <div class="col-sm-8">
                    <input type="number" class="form-control" name='intdiscount' value="<?= set_value('intdiscount',0); ?>">
                    <span id="helpBlock2" class="help-block"><?= form_error("intdiscount"); ?></span>

                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Vendor</label>

                <div class="col-sm-8">
                    <select class="form-control" name='intvendor' id="intlevel">
                        <?php
                        foreach ($this->misc_model->simple_menu('vendors') as $item):
                            echo "<option value='$item[id]'>$item[vendor_name]</option>";
                        endforeach;
                        ?>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Cate</label>

                <div class="col-sm-8">
                    <select class="form-control" name='intcate' id="intlevel">
                        <?php
                        foreach ($this->misc_model->simple_menu('cates') as $item):
                            echo "<option value='$item[id]'>$item[cate_name]</option>";
                        endforeach;
                        ?>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Date</label>

                <div class="col-sm-8">
                    <input type="text" class="form-control datepicker" name='txtdate'
                           value="<?= set_value('txtdate'); ?>"
                           id="txtdate">
                    <span id="helpBlock2" class="help-block"><?= form_error("txtdate"); ?></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Info</label>

                <div class="col-sm-8">
                    <span id="helpBlock2" class="help-block"><?= form_error("txtinfo"); ?></span>
                    <textarea name="txtinfo"></textarea>
                    <script>
                        fileman = '<?=base_url('public/js/ckeditor/fileman/index.html');?>';
                        CKEDITOR.replace('txtinfo', {
                            filebrowserImageBrowseUrl: fileman,
                            filebrowserImageBrowseUrl: fileman + '?type=image',
                            removeDialogTabs: 'link:upload;image:upload'
                        });
                    </script>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Product image</label>

                <div class="col-sm-8">
                    <input type="file" class="form-control" name="userfile" size="20"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Product detail</label>

                <div class="col-sm-8">
                    <div id="detailbox"><a href="javascript:void()" class="btn btn-success"
                                           id="product_btn_detailpopup">Open
                            detail window</a></div>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label"></label>

                <div class="col-sm-8">
                    <table class="table table-bordered">
                        <thead>
                        <th>Spec</th>
                        <th>Value</th>
                        <th>Unit</th>
                        </thead>
                        <tbody id="detailtable">

                        </tbody>
                    </table>
                </div>
            </div>
            <input type="hidden" name="speckeys" id="hidespeckey">
            <input type="hidden" name="specvalues" id="hidespecvalue">

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                </div>
            </div>
            </p>
        </div>
        <div class="panel-footer">
            <div class="form-group">
                <div class="" style="text-align: center">
                    <button type="submit" class="btn btn-success product_btn_submit">Create</button>
                    <a href="<?=base_url('product/show')?>" class="btn btn-danger">Cancel</a>
                </div>
            </div>
        </div>
    </div>
<?= form_close() ?>