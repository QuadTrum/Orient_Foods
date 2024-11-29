<div class="row">
    <div class="col-md-8">
        <div class="card">
            <div class="card-header space-between">
                <h4><?= lang('cities'); ?></h4>
                <div class="right">
                    <a href="#addNew" class="btn btn-secondary" data-toggle="modal"><i class="fa fa-plus"></i> <?= lang('add_new') ?></a>

                    <a href="#lnModal" data-toggle="modal" class="btn btn-success btn-sm ml-10"><i class="icofont-upload"></i> <?= lang('import'); ?> </a>
                    <a href="<?= base_url("admin/home/generate_csv_template/"); ?>" class="btn btn-secondary btn-sm"> <i class="icofont-download"></i> <?= lang('template'); ?></a>
                </div>
                
            </div>
            <div class="card-body">
                <div class='table-responsive'>
                    <table class='table table-bordered data_tables table-striped'>
                        <thead>
                            <tr>
                                <th>#</th>
                                <th><?= lang('city_name'); ?></th>
                                <th><?= lang('zip_code'); ?></th>
                                <th><?= lang('action'); ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($cityList as  $key => $row) : ?>
                                <tr>
                                    <td><?= $key+1;?></td>
                                    <td><?= $row['city_name'];?></td>
                                    <td><?= $row['zip_code'];?></td>
                                    <td>
                                        <a href="#update_<?= $row['id']?>" data-toggle="modal" class="btn btn-info btn-sm"><i class="fa fa-edit"></i> </a>
                                        <?= __deleteBtn($row['id'],'restaurant_city_list',false)?>
                                    </td>
                                </tr>
                            <?php endforeach; ?>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="addNew" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="<?= base_url("admin/home/add_city") ?>" method="post" class="form-submit">
                <?= csrf(); ?>
                <div class="modal-body">
                    <div class="form-group">
                        <label for=""><?= lang('city_name'); ?></label>
                        <input type="text" name="city_name" class="form-control" value="">
                    </div>

                    <div class="form-group">
                        <label for=""><?= lang('zip_code'); ?></label>
                        <input type="text" name="zip_code" class="form-control" value="">
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="pull-left">
                        <a href="javascript:;" data-dismiss="modal" class="btn btn-default"><?= lang('cancel'); ?></a>
                    </div>
                    <button type="submit" class="btn btn-secondary "><?= lang('submit'); ?></button>
                </div>
            </form>
        </div>
    </div>
</div>

<?php foreach ($cityList as  $key => $city) : ?>
    <div id="update_<?= $city['id']?>" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form action="<?= base_url("admin/home/add_city") ?>" method="post" class="form-submit">
                    <?= csrf(); ?>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for=""><?= lang('city_name'); ?></label>
                            <input type="text" name="city_name" class="form-control" value="<?= !empty($city["city_name"])?$city["city_name"]:''?>">
                        </div>

                        <div class="form-group">
                            <label for=""><?= lang('zip_code'); ?></label>
                            <input type="text" name="zip_code" class="form-control" value="<?= !empty($city["zip_code"])?$city["zip_code"]:''?>">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="hidden" name="id" value="<?= !empty($city["id"])?$city["id"]:0?>">
                        <div class="pull-left">
                            <a href="javascript:;" data-dismiss="modal" class="btn btn-default"><?= lang('cancel'); ?></a>
                        </div>
                        <button type="submit" class="btn btn-secondary "><?= lang('submit'); ?></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <?php endforeach;?>

    <div id="lnModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title"><?= __('import');;?> </h4>
                </div>
                <form action="<?= base_url("admin/home/import_city_cvs/"); ?>" enctype="multipart/form-data" method="post">
                    <?= csrf(); ?>
                    <div class="modal-body">
                        <input type="file" name="file" required accept=".csv,vnd.ms-excel">
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-success"><?= lang('submit'); ?></button>
                    </div>
                </div>
            </form>

        </div>
    </div>