<?php $offline = isJson($shop['offline_config']) ? json_decode($shop['offline_config'], true) : ''; ?>
<?php if (!empty($offline['offline_details'])) : ?>
	<div class="payment_content text-center <?= $pay['slug']; ?>">
		<!-- imge area -->
		<div class="payment_icon payment">
			<img src="<?php echo base_url('assets/frontend/images/payout/offline.png'); ?>" alt="">
		</div>
		<!-- img area -->
		<div class="payment_details">
			<div class="userInfo">
				<h4> <?= isset($payment['name']) ? html_escape($payment['name']) : ''; ?></h4>
				<p><?= lang('phone'); ?>: <?= isset($payment['phone']) ? html_escape($payment['phone']) : ''; ?></p>
			</div>
			<div class="">

				<h2> <?= isset($total_amount) ? currency_position($total_amount, $shop['id']) : ''; ?> </h2>

			</div>
		</div><!-- payment_details -->

		<div class="text-center">
			<pre class="pre-code">
				<?= $offline['offline_details']; ?>
			</pre>
		</div>

		<?php if (isset($offline['is_transaction_field'], $offline['is_document_field']) && ($offline['is_transaction_field'] == 1 || $offline['is_document_field'] == 1)) : ?>
			<div class="offlinePayment">
				<form action="<?= base_url("user_payment/offline_payment_request/{$slug}"); ?>" method="post" enctype='multipart/form-data'>
					<?= csrf(); ?>
					<div class="row d-flex-center flex-column">
						<div class="col-md-6 form-group text-left">
							<label for=""><?= lang('transaction_id'); ?></label>
							<input type="text" name="transaction_id" class="form-control" placeholder="<?= lang('transaction_id'); ?>" required>

						</div>
						<?php if (isset($offline['is_document_field']) && $offline['is_document_field'] == 1) : ?>
							<div class="form-group ">
								<label class="label btn-secondary d-flex-center pointer"><i class="fa fa-camera"></i> <?= lang('upload_payment_document'); ?> <input type="file" name="file[]" class="opacity_0" style="width:0;"></label>
							</div>
						<?php endif; ?>
						<div class="col-md-6 form-group">
							<input type="hidden" name="order_id" value="<?= $payment['uid']; ?>">
							<input type="hidden" name="shop_id" value="<?= $payment['shop_id']; ?>">
							<input type="hidden" name="username" value="<?= $slug ?? ''; ?>">
							<input type="hidden" name="is_txn_required" value="1">
							<button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> <?= lang('verify_payment'); ?></button>
						</div>

					</div>
				</form>
			</div>
		<?php endif; ?>


		<?php if (isset($offline['is_transaction_field']) && $offline['is_transaction_field'] == 0) : ?>
			<?php if (is_demo() == 0) : ?>
				<a href="<?php echo base_url('profile/offline-payment/' . html_escape($payment['shop_id']) . '/' . html_escape($payment['uid'])); ?>" class="btn btn-success pay_now"><?= lang('verify_payment'); ?></a>
			<?php endif; ?>
		<?php endif; ?>

	</div>
<?php endif; ?>