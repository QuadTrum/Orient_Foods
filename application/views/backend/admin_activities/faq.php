<div class="row">
	<div class="col-md-5">
		<div class="box box-primary">
			<div class="box-header with-border">
				<h3 class="box-title"><?= !empty(lang('faq')) ? lang('faq') : "faq"; ?></h3>
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

			<form action="<?= base_url('admin/home/add_faq') ?>" method="post" class="skill_form" enctype="multipart/form-data">
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
										<label for="title_<?= $lang['slug']; ?>"><?= !empty(lang('title')) ? lang('title') : "Title"; ?></label>
										<input type="text"
											name="title[<?= $lang['slug']; ?>]"
											id="title_<?= $lang['slug']; ?>"
											class="form-control"
											placeholder="Enter Title"
											value="<?= (isset($data['language_id']) && $data['language_id'] == $lang['id']) ? html_escape($data['title']) : set_value('title[' . $lang['slug'] . ']'); ?>">
										<span class="error"><?= form_error('title[' . $lang['slug'] . ']'); ?></span>
									</div>

									<!-- Details Field -->
									<div class="form-group col-md-12">
										<label for="details_<?= $lang['slug']; ?>"><?= !empty(lang('details')) ? lang('details') : "Details"; ?></label>
										<textarea name="details[<?= $lang['slug']; ?>]"
											id="details_<?= $lang['slug']; ?>"
											class="form-control textarea"
											cols="30"
											rows="10"><?= (isset($data['language_id']) && $data['language_id'] == $lang['id']) ? html_escape($data['details']) : set_value('details[' . $lang['slug'] . ']'); ?></textarea>
										<span class="error"><?= form_error('details[' . $lang['slug'] . ']'); ?></span>
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
							<a href="<?= base_url('admin/home/faq'); ?>" class="btn btn-default btn-block btn-flat"><?= !empty(lang('cancel')) ? lang('cancel') : "cancel"; ?></a>
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
				<h3 class="box-title"><?= !empty(lang('faq_list')) ? lang('faq_list') : "Faq List"; ?></h3>
				<div class="box-tools pull-right">
					<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
					<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
				</div>
			</div>
			<div class="box-body">
				<div class="tabbable">
					<ul class="nav nav-tabs">
						<?php $i = 0;
						foreach ($faq_grouped_by_language as $language_id => $language_data): ?>
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
						foreach ($faq_grouped_by_language as $language_id => $language_data): ?>
							<div class="tab-pane <?= $i == 0 ? 'active' : ''; ?>" id="language_<?= $language_id ?>">
								<div class="upcoming_events">
									<div class="table-responsive">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th><?= !empty(lang('sl')) ? lang('sl') : "Sl"; ?></th>
													<th><?= !empty(lang('title')) ? lang('title') : "Title"; ?></th>
													<th><?= !empty(lang('details')) ? lang('details') : "Details"; ?></th>
													<th><?= !empty(lang('status')) ? lang('status') : "Status"; ?></th>
													<th><?= !empty(lang('action')) ? lang('action') : "Action"; ?></th>
												</tr>
											</thead>
											<tbody>
												<?php $j = 1;
												foreach ($language_data['faqs'] as $faq): ?>
													<tr>
														<td><?= $j; ?></td>
														<td><?= html_escape($faq['title']); ?></td>
														<td><?= character_limiter($faq['details'], 80); ?></td>
														<td>
															<a href="javascript:;" data-id="<?= html_escape($faq['id']); ?>" data-status="<?= html_escape($faq['status']); ?>" data-table="faq" class="label <?= $faq['status'] == 1 ? 'label-success' : 'label-danger' ?> change_status">
																<i class="fa <?= $faq['status'] == 1 ? 'fa-check' : 'fa-close' ?>"></i>&nbsp;
																<?= $faq['status'] == 1 ? (!empty(lang('live')) ? lang('live') : "Live") : (!empty(lang('hide')) ? lang('hide') : "Hide"); ?>
															</a>
														</td>
														<td>
															<a href="<?= base_url('admin/home/edit_faq/' . html_escape($faq['id'])); ?>" class="btn btn-info btn-sm"><i class="fa fa-edit"></i> <?= !empty(lang('edit')) ? lang('edit') : "Edit"; ?></a>
															<a href="<?= base_url('admin/home/item_delete/' . html_escape($faq['id']) . '/faq'); ?>" class="btn btn-danger btn-sm action_btn" data-msg="<?= !empty(lang('want_to_delete')) ? lang('want_to_delete') : "Want to delete"; ?>"><i class="fa fa-trash"></i> <?= !empty(lang('delete')) ? lang('delete') : "Delete"; ?></a>
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