<?php
$total_rating = $this->common_m->total_shop_rating($row['shop_id']);
$total_review = $this->common_m->total_shop_rating($row['shop_id'], 'total');
$time = $this->common_m->get_single_appoinment(__week(), $row['shop_id']);
$total_order = $this->admin_m->get_total_completed_order_by_shop($row['shop_id']);
if ($total_review == 0) {
	$avg = 0;
} else {
	$avg = @number_format($total_rating / $total_review, 1);
}


?>
<li style="width:33%;">
	<a href="<?= url($row['shop_username']); ?>" class="shopUrl" target="blank">
		<div class="d-flex justify-content-center align-items-start">
			<div class="restaurantImages">
				<img src="<?= base_url(!empty($row['thumb']) ? $row['thumb'] : IMG_PATH . 'empty.jpg'); ?>" alt="Restaurant Image">
			</div>

			<div class="qrCodeImage">
				<?php if (isset($row['qr_link']) && !empty($row['qr_link'])) : ?>
					<img src="<?= $row['qr_link'] ?>" alt="" width="20px" height="20px">
				<?php endif; ?>
			</div>
		</div>
		<h5 class="mt-3 text-center"><?= $row['shop_name'] ?? $row['name']; ?></h5>
	</a>
</li>
<!-- First Review Card -->