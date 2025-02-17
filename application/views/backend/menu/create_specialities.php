<div class="row">
	<div class="col-md-6">
		<?php
		$total = $this->admin_m->count_packages_user_id('item_packages', $is_special = 1);;
		$limit = limit(auth('id'), 1);
		?>
		<?php if ($limit == 0) : ?>
			<div class="single_alert alert alert-info alert-dismissible">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
				<div class="d_flex_alert ">
					<h4><i class="fas fa-exclamation-triangle"></i> <?= lang('info'); ?></h4>
					<div class="double_text">
						<div class="text-left">
							<h5><?= lang('you_can_add'); ?> <b class="underline"> <?= lang('unlimited'); ?> </b> <?= lang('items'); ?></h5>
						</div>

					</div>
				</div>
			</div>
			<?php $active = 1; ?>
		<?php elseif ($total >= $limit) : ?>
			<div class="single_alert alert alert-danger alert-dismissible">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
				<div class="d_flex_alert ">
					<h4> <i class="fas fa-exclamation-triangle"></i> <?= lang('alert'); ?></h4>
					<div class="double_text">
						<div class="text-left">
							<h5> <b><?= lang('sorry'); ?></b></h5>
							<p><?= lang('you_reached_max_limit'); ?>: <?= $limit; ?></p>
						</div>

					</div>
				</div>
			</div>
			<?php $active = 0; ?>
		<?php else : ?>
			<div class="single_alert alert alert-info alert-dismissible">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
				<div class="d_flex_alert ">
					<h4><i class="fas fa-exclamation-triangle"></i> <?= lang('info'); ?></h4>
					<div class="double_text">
						<div class="text-left">
							<h5><?= lang('you_have_remaining'); ?> <b class="underline"> &nbsp; <?= ($limit - $total); ?> &nbsp;</b> <?= lang('out_of'); ?> <b class="underline"> &nbsp; <?= ($limit); ?> &nbsp;</b></h5>
						</div>

					</div>
				</div>
			</div>
			<?php $active = 1; ?>
		<?php endif; ?>
	</div>
</div>

<?php
if (isset($_GET['action']) && $_GET['action'] == "clone") {
	$url = base_url('admin/menu/add_specialties?action=clone');
} else {
	$url = base_url('admin/menu/add_specialties');
}
?>
<div class="row">
	<div class="col-md-5">
		<div class="box box-primary">
			<div class="box-header with-border">
				<h3 class="box-title"> <?= lang('specialties'); ?> - <small class="text-purple fz-14"><i class="fa fa-language"></i> <?= __language($data ?? ''); ?></small></h3>
				<div class="box-tools pull-right">
					<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
					<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
				</div>
			</div>
			<!-- /.box-header -->
			<form action="<?= $url ?>" method="post" class="skill_form" enctype="multipart/form-data">
				<div class="box-body">

					<!-- csrf token -->
					<input type="hidden" name="<?= $this->security->get_csrf_token_name(); ?>" value="<?= $this->security->get_csrf_hash(); ?>">

					<div class="row">
						<?php restaurant()->stock_status == 1 ? $is_stock = 1 : $is_stock = 0; ?>
						<div class="form-group <?= $is_stock == 1 ? "col-md-6" : "col-md-12"; ?>">
							<label for="title"><?= !empty(lang('name')) ? lang('name') : "name"; ?></label>
							<input type="text" name="package_name" id="name" class="form-control" placeholder="<?= !empty(lang('name')) ? lang('name') : "Name"; ?>" value="<?= !empty($data['package_name']) ? html_escape($data['package_name']) : set_value('package_name'); ?>">
						</div>
						<?php if ($is_stock == 1) : ?>
							<div class="form-group <?= $is_stock == 1 ? "col-md-6" : "col-md-12"; ?>">
								<label><?= !empty(lang('set_stock')) ? lang('set_stock') : "Set stock"; ?> <span class="error">*</span></label>

								<input type="text" name="in_stock" class="form-control" placeholder="<?= !empty(lang('in_stock')) ? lang('in_stock') : "in stock"; ?>" value="<?= !empty($data['in_stock']) ? html_escape($data['in_stock']) : 0; ?>">
							</div>
						<?php endif; ?>
					</div>

					<div class="row">
						<div class="form-group col-md-6">
							<label for="price"><?= !empty(lang('price')) ? lang('price') : "Price"; ?> *&nbsp; &nbsp;
								<label data-toggle="tooltip" data-placement="top" title="If you set discount" class="pointer p-5 label label-info discount_label label_input"><input type="checkbox" name="is_discount" class="is_discount" value="1" <?= isset($data['is_discount']) && $data['is_discount'] == 1 ? 'checked' : '';; ?>> &nbsp; <?= lang('is_discount'); ?></label>
							</label>
							<div class="input-group">
								<input type="text" name="price" id="price" class="form-control number" placeholder="<?= !empty(lang('price')) ? lang('price') : "Price"; ?>" value="<?= !empty($data['price']) ? html_escape($data['price']) : set_value('price'); ?>" required>
								<span class="input-group-addon"><?= restaurant()->icon; ?></span>
							</div>
						</div>

						<div class="form-group col-md-6 discount_field <?= isset($data['is_discount']) && $data['is_discount'] == 1 ? '' : 'dis_none';; ?> ">

							<label for="price" class="p-5"><?= !empty(lang('discount')) ? lang('discount') : "discount"; ?></label>
							<div class="input-group">
								<input type="text" name="discount" class="form-control only_number" value="<?= !empty($data['discount']) ? html_escape($data['discount']) : set_value('discount'); ?>">
								<span class="input-group-addon">%</span>
							</div>
						</div>
					</div>


					<?php if (isset(restaurant()->is_tax) && restaurant()->is_tax == 1) : ?>
						<div class="row">
							<div class="form-group col-md-12 ml-0">
								<label><?= lang('tax_fee'); ?></label>
								<div class="row">

									<div class="col-md-6">
										<div class="input-group">
											<span class="input-group-addon">
												<select name="tax_status" class="" id="">
													<option value="+" <?= isset($data['tax_status']) && $data['tax_status'] == '+' ? "selected" : ""; ?>>+</option>
													<option value="-" <?= isset($data['tax_status']) && $data['tax_status'] == '-' ? "selected" : ""; ?>>-</option>
												</select>
											</span>
											<input type="number" name="tax_fee" id="tax_fee" class="form-control" placeholder="<?= !empty(lang('tax_fee')) ? lang('tax_fee') : "tax_fee"; ?>" value="<?= !empty($data['tax_fee']) ? html_escape($data['tax_fee']) : restaurant()->tax_fee; ?>">
											<span class="input-group-addon">%</span>
										</div>

									</div>
									<div class="col-md-12 ">
										<small><?= lang('price_tax_msg'); ?></small>
									</div>
								</div>
							</div>
						</div>
					<?php endif ?>

					<div class="row">

						<div class=" form-group col-md-12">
							<label><?= !empty(lang('overview')) ? lang('overview') : "overview"; ?></label>
							<textarea name="overview" id="" cols="5" rows="5" class="form-control" placeholder=" <?= !empty(lang('overview')) ? lang('overview') : "Overview"; ?>"><?= !empty($data['overview']) ? html_escape($data['overview']) : set_value('overview'); ?></textarea>
						</div>

						<div class=" form-group col-md-12">
							<label><?= !empty(lang('details')) ? lang('details') : "details"; ?></label>
							<textarea name="details" id="" cols="5" rows="5" class="form-control textarea" placeholder=" <?= !empty(lang('details')) ? lang('details') : "Details"; ?>"><?= !empty($data['details']) ? html_escape($data['details']) : set_value('details'); ?></textarea>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-6 hidden">
							<label><?= lang('language'); ?></label>
							<?php languageDropdown($data ?? '', true) ?>
						</div>

						<div class="form-group col-md-12">
							<label class="label label-info pointer label_input custom-checkbox"><input type="checkbox" class="" name="is_home" <?= isset($data['is_home']) && $data['is_home'] == 1 ? 'checked' : ""; ?> value="1"> <?= lang('show_in_homepage'); ?></label>
						</div>
					</div>

					<div class="row">
						<div class="col-md-6">
							<label class="defaultImg">
								<img src="<?= isset($data['thumb']) && !empty($data['thumb']) ? base_url($data['thumb']) : "" ?>" alt="" id="preview_load_image" class="<?= isset($data['thumb']) && !empty($data['thumb']) ? "" : "opacity_0" ?>">
								<div class="view_img <?= isset($data['thumb']) && !empty($data['thumb']) ? "opacity_0" : "" ?>">
									<i class="fa fa-upload"></i>
									<h4><?= lang('upload_image'); ?></h4>
								</div>
								<input type="file" name="file[]" class="opacity_0" id="load_image">
							</label>
						</div>
					</div>

					<input type="hidden" name="id" value="<?= isset($data['id']) && $data['id'] != 0 ? html_escape($data['id']) : 0 ?>">
				</div><!-- /.box-body -->
				<div class="box-footer">
					<?php if (isset($data['id']) && $data['id'] != 0) { ?>
						<div class="pull-left">
							<a href="<?= base_url('admin/menu/specialties'); ?>" class="btn btn-default btn-block btn-flat"><?= !empty(lang('cancel')) ? lang('cancel') : "cancel"; ?></a>
						</div>
					<?php } ?>
					<?php if (isset($active) && $active == 1) : ?>
						<div class="pull-right">
							<?php if (is_access('update') == 1 && isset($data['id']) && $data['id'] != 0) : ?>
								<button type="submit" name="register" class="btn btn-primary btn-block btn-flat"><?= !empty(lang('submit')) ? lang('submit') : "submit"; ?></button>

							<?php elseif (is_access('add') == 1) : ?>
								<button type="submit" name="register" class="btn btn-primary btn-block btn-flat"><?= !empty(lang('submit')) ? lang('submit') : "submit"; ?></button>
							<?php endif; ?>
						</div>
					<?php endif; ?>
				</div>
			</form>
		</div>
	</div>
</div>