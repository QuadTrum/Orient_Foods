<div class="row">
	<div class="col-md-5">
		<div class="box box-primary">
			<div class="box-header with-border">
				<h3 class="box-title"><?= !empty(lang('reviews')) ? lang('reviews') : "Reviews"; ?></h3>
				<div class="box-tools pull-right">
					<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
					<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
				</div>
			</div>
			<!-- /.box-header -->

			<!-- Language Tabs -->
			<ul class="nav nav-tabs">
				<?php $is_first = true; ?>
				<?php foreach ($languages as $lang): ?>
					<li class="<?= ($is_first || $lang['slug'] == $current_language) ? 'active' : ''; ?>">
						<a href="#<?= $lang['slug']; ?>" data-toggle="tab"><?= html_escape($lang['lang_name']); ?></a>
					</li>
					<?php $is_first = false; ?>
				<?php endforeach; ?>
			</ul>

			<form action="<?= base_url('admin/dashboard/add_reviews') ?>" method="post" class="skill_form" enctype="multipart/form-data">
				<div class="box-body">
					<!-- CSRF Token -->
					<input type="hidden" name="<?= $this->security->get_csrf_token_name(); ?>" value="<?= $this->security->get_csrf_hash(); ?>">

					<!-- Language Content -->
					<div class="tab-content">
						<?php $is_first = true; ?>
						<?php foreach ($languages as $lang): ?>
							<div class="tab-pane <?= ($is_first || $lang['slug'] == $current_language) ? 'active' : ''; ?>" id="<?= $lang['slug']; ?>">
								<div class="row">
									<!-- Title Field -->
									<div class="form-group col-md-12">
										<label for="rating_<?= $lang['slug']; ?>"><?= !empty(lang('ratings')) ? lang('ratings') : "Ratings"; ?></label>
										<input type="number"
											name="rating[<?= $lang['slug']; ?>]"
											id="rating_<?= $lang['slug']; ?>"
											class="form-control"
											placeholder="Ratings"
											value="<?= (isset($data['language_id']) && $data['language_id'] == $lang['id']) ? html_escape($data['rating']) : set_value('rating[' . $lang['slug'] . ']'); ?>">
										<span class="error"><?= form_error('rating[' . $lang['slug'] . ']'); ?></span>
									</div>

									<div class="form-group col-md-12">
										<label for="customerName_<?= $lang['slug']; ?>"><?= !empty(lang('customer_name')) ? lang('customer_name') : "Customer_name"; ?></label>
										<input type="text"
											name="customer_name[<?= $lang['slug']; ?>]"
											id="customerName_<?= $lang['slug']; ?>"
											class="form-control"
											placeholder="customer name"
											value="<?= (isset($data['language_id']) && $data['language_id'] == $lang['id']) ? html_escape($data['customer_name']) : set_value('customer_name[' . $lang['slug'] . ']'); ?>">
										<span class="error"><?= form_error('customer_name[' . $lang['slug'] . ']'); ?></span>
									</div>

									<div class="form-group col-md-12">
										<label for="restaurantName_<?= $lang['slug']; ?>"><?= !empty(lang('restaurant_name')) ? lang('restaurant_name') : "Restaurant_name"; ?></label>
										<input type="text"
											name="restaurant_name[<?= $lang['slug']; ?>]"
											id="restaurantName<?= $lang['slug']; ?>"
											class="form-control"
											placeholder="restaurant name"
											value="<?= (isset($data['language_id']) && $data['language_id'] == $lang['id']) ? html_escape($data['restaurant_name']) : set_value('restaurant_name[' . $lang['slug'] . ']'); ?>">
										<span class="error"><?= form_error('restaurant_name[' . $lang['slug'] . ']'); ?></span>
									</div>
									<!-- Details Field -->
									<div class="form-group col-md-12">
										<label for="details_<?= $lang['slug']; ?>"><?= !empty(lang('reviews')) ? lang('reviews') : "reviews"; ?></label>
										<textarea name="reviews[<?= $lang['slug']; ?>]"
											id="reviews_<?= $lang['slug']; ?>"
											class="form-control textarea"
											cols="30"
											rows="10"><?= (isset($data['language_id']) && $data['language_id'] == $lang['id']) ? html_escape($data['reviews']) : set_value('reviews[' . $lang['slug'] . ']'); ?></textarea>
										<span class="error"><?= form_error('reviews[' . $lang['slug'] . ']'); ?></span>
									</div>

									<div class="form-group col-md-12">
										<label for="profile_image"><?= !empty(lang('profile_image')) ? lang('profile_image') : "Profile Image"; ?></label>
										<input type="file" name="file[]" id="profile_image" class="form-control">
										<span class="error"><?= form_error('profile_image'); ?></span>
									</div>
								</div>
							</div>
							<?php $is_first = false; ?>
						<?php endforeach; ?>
					</div>


					<!-- Hidden ID Field -->
					<input type="hidden" name="default_language" id="default_language" value="<?= $languages[0]['slug']; ?>" />
					<input type="hidden" name="id" value="<?= isset($data['id']) && $data['id'] != 0 ? $data['id'] : 0; ?>">
				</div>

				<!-- Form Footer -->
				<div class="box-footer">
					<?php if (isset($data['id']) && $data['id'] != 0): ?>
						<div class="pull-left">
							<a href="<?= base_url('admin/dashboard/manual_reviews'); ?>" class="btn btn-default btn-block btn-flat"><?= !empty(lang('cancel')) ? lang('cancel') : "cancel"; ?></a>
						</div>
					<?php endif; ?>
					<div class="pull-right">
						<button type="submit" name="register" class="btn btn-primary btn-block btn-flat"><?= !empty(lang('submit')) ? lang('submit') : "submit"; ?></button>
					</div>
				</div>
			</form>
		</div>
	</div>

    <div class="col-md-7">
		<div class="box box-info">
			<div class="box-header with-border">
				<h3 class="box-title"><?= !empty(lang('reviews_list')) ? lang('reviews_list') : "Review List"; ?></h3>
				<div class="box-tools pull-right">
					<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
					<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
				</div>
			</div>
			<div class="box-body">
				<div class="tabbable">
					<ul class="nav nav-tabs">
						<?php $i = 0;
						foreach ($reviews_grouped_by_language as $language_id => $language_data): ?>
							<li class="<?= $i == 0 ? 'active' : ''; ?>">
								<a href="#language_<?= $language_id ?>" data-toggle="tab">
									<?= html_escape($language_data['name']); ?> <!-- Display language name -->
								</a>
							</li>
						<?php $i++;
						endforeach; ?>
					</ul>
					<div class="tab-content">
						<?php $i = 0;
						foreach ($reviews_grouped_by_language as $language_id => $language_data): ?>
							<div class="tab-pane <?= $i == 0 ? 'active' : ''; ?>" id="language_<?= $language_id ?>">
								<div class="upcoming_events">
									<div class="table-responsive">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th><?= !empty(lang('sl')) ? lang('sl') : "Sl"; ?></th>
													<th><?= !empty(lang('customer_name')) ? lang('customer_name') : "Customer_name"; ?></th>
													<th><?= !empty(lang('restaurant_name')) ? lang('restaurant_name') : "Details"; ?></th>
													<th><?= !empty(lang('ratings')) ? lang('ratings') : "Ratings"; ?></th>
													<th><?= !empty(lang('reviews')) ? lang('reviews') : "Reviews"; ?></th>
												</tr>
											</thead>
											<tbody>
												<?php $j = 1;
												foreach ($language_data['reviews'] as $review): ?>
													<tr>
														<td><?= $j; ?></td>
														<td><?= html_escape($review['customer_name']); ?></td>
														<td><?= html_escape($review['restaurant_name'], 80); ?></td>
                                                        <td><?= html_escape($review['ratings'], 10); ?></td>
                                                        <td><?= html_escape($review['reviews'], 80); ?></td>
														<td>
															<a href="<?= base_url('admin/dashboard/edit_reviews/' . html_escape($review['id'])); ?>" class="btn btn-info btn-sm"><i class="fa fa-edit"></i> <?= !empty(lang('edit')) ? lang('edit') : "Edit"; ?></a>
															<a href="<?= base_url('admin/dashboard/delete_reviews/' . html_escape($review['id']) . '/manual_reviews'); ?>" class="btn btn-danger btn-sm action_btn" data-msg="<?= !empty(lang('want_to_delete')) ? lang('want_to_delete') : "Want to delete"; ?>"><i class="fa fa-trash"></i> <?= !empty(lang('delete')) ? lang('delete') : "Delete"; ?></a>
														</td>
													</tr>
												<?php $j++;
												endforeach; ?>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						<?php $i++;
						endforeach; ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	$(document).ready(function() {
		// On tab change, update the hidden input field
		$('a[data-toggle="tab"]').on('shown.bs.tab', function(e) {
			var activeTab = $(e.target).attr("href").replace('#', ''); // Get the slug of the active tab
			$('#default_language').val(activeTab); // Set the active language as default
		});
	});
</script>