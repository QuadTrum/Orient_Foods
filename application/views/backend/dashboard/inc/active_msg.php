<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 col-md-offset-4">
<!-- Widget: user widget style 1 -->
	<div class="box box-widget widget-user-2">
		<!-- Add the bg color to the header using any of the bg-* classes -->
		<div class="widget-user-header profile profile_flex" style="background-color: #<?= trim($this->my_info['colors']) ;?>">
			<div class="widget-user-image profile-img-2">
				<img class="img-circle" src="<?= avatar($this->my_info['thumb']) ;?>" alt="User Avatar">
			</div>
			<div class="right_details">
				<div class="right_left">
					<!-- /.widget-user-image -->
					<h3 class="widget-user-username"><?= isset($this->my_info['name'])?$this->my_info['name']:$this->my_info['username'];?></h3>
					<h5 class="widget-user-desc">
						<?php if($this->my_info['account_type']==0): ?>
							<?= ucfirst(!empty(lang('trial'))?lang('trial'):"trial")?>
							<?php else: ?>
								<?= isset($active_package['package_name'])? html_escape($active_package['package_name']):"";?>
							<?php endif;?>
						</h5>
						<h5 class="widget-user-desc"><?= cl_format($this->my_info['created_at']) ;?></h5>
					</div>
					<div class="right_right">

					</div>
				</div>
			</div>
			<div class="box-footer no-padding">
				<div class="text-center subscrip_option">
					<h4><?= lang('account_not_active'); ?></h4>
					<div class="mt-15">
						<a href="<?= base_url('admin/auth/deactive_account/0/'.html_escape($this->my_info['username'])); ?>" data-msg="Want to active your account?" class="btn btn-info c_btn action_btn"><i class="fa fa-check"></i> &nbsp; <?= lang('active_now'); ?></a>
					</div>
				</div>
			</div>
		</div>
	<!-- /.widget-user -->
</div>