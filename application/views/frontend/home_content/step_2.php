<style>
	.review-card {
		width: 80%;
		border: 1px solid #ddd;
		border-radius: 10px;
		padding: 20px;
		background-color: #f8f9fa;
		box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	}

	.review-card img {
		border-radius: 50%;
		width: 50px;
		height: 50px;
		object-fit: cover;
	}

	.star-rating {
		color: #ffc107;
		/* Gold color for the stars */
		margin-bottom: 10px;
	}

	.review-text {
		font-style: italic;
		margin-bottom: 10px;
	}

	.review-author {
		font-weight: bold;
	}

	.review-restaurant {
		color: #6c757d;
		font-size: 0.9rem;
	}

	.restaurantImages img {
		box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
		border-radius: 10px;
		transition: transform 0.3s, box-shadow 0.3s;

	}

	.qrCodeImage {
		max-width: 15%;
		position: relative;
		bottom: -100px;
	}

	.restaurantImages {
		margin-left: 27px;
		max-width: 40%;

	}

	.page_accordion_header,
	.accordion_content {
		background-color: gainsboro;
	}
</style>

<?php $pricing = section_name('pricing'); ?>
<?php if (!empty($pricing) && $settings['is_registration'] == 1) : ?>
	<section class="home_pricing teamSections" id="pricing">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 features-heading">
					<h2 class="heading-text"><?= html_escape($pricing['heading']); ?></h2>
					<p><?= html_escape($pricing['sub_heading']); ?></p>
				</div>
			</div>
			<?php include VIEWPATH . "frontend/inc/pricing_" . $settings['pricing_layout'] . ".php"; ?>
		</div>
	</section>
<?php endif; ?>

<!-- app interface section section -->
<!-- App Interface Section -->
<div class="moduleSection mb-5">
	<div class="container mt-2">
		<div class="row">
			<div class="col-12">
				<div class="interfaceHeading">
					<h2 class="interfaceHeading mt-5 mb-5">Features of OrientFood</h2>
				</div>
				<div class="d-flex justify-content-center featureSectionDiv">
					<div class="interfaceImg">
						<img id="interfaceImage" src="<?= base_url('uploads/site_banners/app_layout.png') ?>" alt="interface image">
					</div>
					<div class="interfaceBtn d-flex flex-column">
						<button class="btn btnTabs" data-image="uploads/site_banners/app_layout.png">Our App</button>
						<button class="btn btnTabs" data-image="uploads/site_banners/driver_app.png">Driver App</button>
						<button class="btn btnTabs" data-image="uploads/site_banners/store_app.png">Store App</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- restaurant list -->
<div class="section-padding-top section-padding-bottom">
	<div class="container py-5">
		<div class="d-flex" style="justify-content:center;margin-bottom:24px;">
			<h2 class="mb-5 ">Our Top Restaurants</h2>
		</div>
		<div class="row">
			<ul class="d-flex flex-wrap justify-content-center restaurantLists" style="row-gap: 41px;column-gap: 22px;">
				<?php foreach ($users as $key => $row) : ?>
					<?php include VIEWPATH . "frontend/inc/restaurant_list.php"; ?>
				<?php endforeach; ?>
			</ul>
		</div>
	</div>
</div>


<?php $features = section_name('features'); ?>
<?php if (!empty($features) && $features['status'] == 1) : ?>
	<section class="default feature_area">
		<div class="container">
			<?php if (count($left_features) > 0 && count($right_features) > 0) : ?>
				<div class="row">
					<div class="col-md-12 col-sm-12 features-heading top_heading">
						<h2 class="heading-text"><?= html_escape($features['heading']); ?></h2>
						<p><?= html_escape($features['sub_heading']); ?></p>
					</div>
					<!--col-md-12-->
					<div class="col-lg-4 col-sm-12 features-text mr-0 pr-0">
						<?php foreach ($left_features as $key => $left) : ?>
							<div class="features_warp_content" data-aos="fade-right" data-aos-delay="<?= $key + 1; ?>0">
								<div class="features-wrap left_wrap">
									<div class="features-content">
										<h4><?= html_escape($left['title']); ?></h4>
										<p><?= character_limiter(html_escape($left['details']), 120); ?> </p>
									</div>
									<!--features-content-->
									<?php if (!empty($left['icon'])) : ?>
										<?= $left['icon']; ?>
									<?php else : ?>
										<img src="<?= html_escape(base_url($left['thumb'])); ?>" alt="<?= html_escape($left['title']); ?>">
									<?php endif; ?>
								</div>
							</div>
						<?php endforeach; ?>

					</div>
					<!--col-md-6-->
					<div class=" col-lg-3 col-sm-6">
						<div class="features-img" data-aos="zoom-in" data-aos-delay="100">
							<img src="<?= !empty($features['images']) ? base_url($features['images']) : ""; ?>" alt="features-img">
						</div>
						<!--features-img-->
					</div>

					<!--col-md-4-->
					<div class="col-lg-4 col-sm-12  features-text ml-0 pl-0">
						<?php foreach ($right_features as $key => $right) : ?>
							<div class="features_warp_content" data-aos="fade-left" data-aos-delay="<?= $key + 1; ?>0">
								<div class="features-wrap right_wrap">
									<?php if (!empty($right['icon'])) : ?>
										<?= $right['icon']; ?>
									<?php else : ?>
										<img src="<?= base_url($right['thumb']); ?>" alt="<?= html_escape($right['title']); ?>">
									<?php endif; ?>
									<div class="features-content">
										<h4><?= html_escape($right['title']); ?></h4>
										<p><?= character_limiter(html_escape($right['details']), 120); ?> </p>
									</div>
									<!--features-content-->
								</div>
							</div>
						<?php endforeach; ?>

					</div>
					<!--col-md-6-->
				</div>
				<!--row-->
			<?php else : ?>
				<div class="row">
					<div class="empty_area">
						<div class="empty_text">
							<i class="fa fa-frown fa-2x"></i>
							<h4>Sorry! Data Not found</h4>
							<code>Admin-> settings -> Home settings -> Add Section Banners</code>
						</div>
					</div>
				</div>
			<?php endif; ?>
		</div>
	</section>
<?php endif; ?>


<?php $faq = section_name('faq'); ?>
<?php if (!empty($faq) && $faq['status'] == 1) : ?>
	<section class=" default services_area">
		<div class="container">
			<?php if (count($faqs) > 0) : ?>
				<div class="row">
					<div class="col-md-12 col-sm-12 features-heading">
						<h2 class="heading-text"><?= html_escape($faq['heading']); ?></h2>
						<p><?= $faq['sub_heading']; ?></p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="accordion_area">
							<div class="row">
								<div class="col-md-6">
									<div class="accordions">
										<?php foreach ($faqs as $key => $home_faq) : ?>
											<?php if ($key % 2 === 0) : ?>
												<div class="single_accordion" dir="<?= direction(); ?>" data-aos="fade-up" data-aos-delay="<?= ($key + 1) * 100; ?>">
													<div class="page_accordion_header arrow_down"><?= html_escape($home_faq['title']); ?></div>
													<div class="accordion_content">
														<?= $home_faq['details']; ?>
													</div>
												</div>
											<?php endif; ?>
										<?php endforeach; ?>
									</div>
								</div>

								<div class="col-md-6">
									<div class="accordions">
										<?php foreach ($faqs as $key => $home_faq) : ?>
											<?php if ($key % 2 !== 0) : ?>
												<div class="single_accordion" dir="<?= direction(); ?>" data-aos="fade-up" data-aos-delay="<?= ($key + 1) * 100; ?>">
													<div class="page_accordion_header arrow_down"><?= html_escape($home_faq['title']); ?></div>
													<div class="accordion_content">
														<?= $home_faq['details']; ?>
													</div>
												</div>
											<?php endif; ?>
										<?php endforeach; ?>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			<?php else : ?>
				<div class="row">
					<div class="empty_area">
						<div class="empty_text">
							<i class="fa fa-frown fa-2x"></i>
							<h4>Sorry! Data Not found</h4>
							<code>Admin-> Home -> FAQ -> Add FAQ</code>
						</div>
					</div>
				</div>
			<?php endif; ?>
		</div>
	</section>
<?php endif; ?>

<div class="section-padding-top section-padding-bottom">
	<div class="container py-5">
		<div class="row reviewsRow">
			<!-- First Review Card -->
			<div class="col-md-6 mb-4">
				<div class="d-flex align-items-start review-card"style="position:relative;left:80px">
					<img src="https://via.placeholder.com/50" alt="Reviewer Image" class="mr-3">
					<div>
						<div class="star-rating">
							★★★★★
						</div>
						<p class="review-text">
							"We use FoodTiger to protect our visitors. Dirty old menus are a thing from the past. So far clients report no issues. And they love our new online menu."
						</p>
						<p class="review-author">- James Curran</p>
						<p class="review-restaurant">Brooklyn Taco</p>
					</div>
				</div>
			</div>
			<!-- Second Review Card -->
			<div class="col-md-6 mb-4 " style="margin-top:5rem;">
				<div class="d-flex align-items-start review-card secondReviewCards">
					<img src="https://via.placeholder.com/50" alt="Reviewer Image" class="mr-3">
					<div>
						<div class="star-rating">
							★★★★★
						</div>
						<p class="review-text">
							"No more printing and reprinting for some small mistake in our menu or price change. We love what FoodTiger have provided."
						</p>
						<p class="review-author">- Jessica Evans</p>
						<p class="review-restaurant">Awang Italian Restaurant</p>
					</div>
				</div>
			</div>
			<!-- first Review Card -->
			<div class="col-md-6 mb-4">
				<div class="d-flex align-items-start review-card" style="position:relative;left:80px">
					<img src="https://via.placeholder.com/50" alt="Reviewer Image" class="mr-3">
					<div>
						<div class="star-rating">
							★★★★★
						</div>
						<p class="review-text">
							"No more printing and reprinting for some small mistake in our menu or price change. We love what FoodTiger have provided."
						</p>
						<p class="review-author">- Jessica Evans</p>
						<p class="review-restaurant">Awang Italian Restaurant</p>
					</div>
				</div>
			</div>

			<div class="col-md-6 mb-4" style="margin-top:5rem;">
				<div class="d-flex align-items-start review-card secondReviewCards">
					<img src="https://via.placeholder.com/50" alt="Reviewer Image" class="mr-3">
					<div>
						<div class="star-rating">
							★★★★★
						</div>
						<p class="review-text">
							"No more printing and reprinting for some small mistake in our menu or price change. We love what FoodTiger have provided."
						</p>
						<p class="review-author">- Jessica Evans</p>
						<p class="review-restaurant">Awang Italian Restaurant</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<?php $contacts = get_by_section_name('contacts'); ?>
<?php $settings = settings(); ?>
<?php if (!empty($contacts) && $contacts['status'] == 1): ?>
	<section class="profile home_contact" id="contacts">
		<div class="container">
			<div class="contact_content mb-5">
				<div class="sction_title">
					<h4 class="heading-text"><?= html_escape($contacts['heading']); ?></h4>
					<p><?= html_escape($contacts['sub_heading']); ?></p>
				</div>
				<div class=" contacts_area col-md-8 offset-md-2">
					<form action="<?= base_url('home/send_mail/'); ?>" method="post" id="home_contact">
						<span class="reg_msg"></span>
						<?= csrf(); ?>
						<div class="row">
							<div class="form-group col-md-6">
								<input type="text" name="name" class="form-control" placeholder="<?= !empty(lang('name')) ? lang('name') : "Name"; ?>" value="">
							</div>

							<div class="form-group col-md-6">
								<input type="text" name="email" class="form-control" placeholder="<?= !empty(lang('email')) ? lang('email') : "email"; ?>" value="">
							</div>
						</div>

						<div class="form-group">
							<input type="text" name="subjects" class="form-control" placeholder="<?= !empty(lang('subject')) ? lang('subject') : "subject"; ?>" value="">
						</div>

						<div class="form-group">
							<textarea name="msg" class="form-control" placeholder="<?= !empty(lang('message')) ? lang('message') : "message"; ?>" cols="5" rows="5"></textarea>
						</div>
						<div class="form-group">
							<?php if (isset($settings['is_recaptcha']) && $settings['is_recaptcha'] == 1): ?>
								<?php if (isset($this->settings['recaptcha']->site_key) && !empty($this->settings['recaptcha']->site_key)): ?>
									<div class="g-recaptcha" data-sitekey="<?= $this->settings['recaptcha']->site_key; ?>"></div>
								<?php endif; ?>
							<?php endif; ?>
						</div>
						<div class="form-group">
							<div class="download_btn_area p-0 text-center">
								<button type="submit" class="btn btn-info c_btn mail_send_btn form_btn"> <?= !empty(lang('send')) ? lang('send') : "send"; ?> &nbsp;<i class="fas fa-angle-double-right"></i></button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
<?php endif; ?>
<script>
	$(document).ready(function() {
		$('.btnTabs').on('click', function() {
			var imagePath = $(this).data('image');
			$('#interfaceImage').attr('src', '<?= base_url(); ?>/' + imagePath);
		});
	});
</script>
<script>
	$(document).ready(function() {
		var get_rtl = $('#rtl').data('id');

		if (get_rtl == 'rtl') {
			var rtl = true;
		} else {
			var rtl = false;
		}

		$('.team_slider').slick({
			slidesToShow: 3,
			slidesToScroll: 1,
			rtl: rtl,
			autoplay: false,
			prevArrow: '<div class="slick-prev"><i class="fa fa-angle-left" aria-hidden="true"></i></div>',
			nextArrow: '<div class="slick-next"><i class="fa fa-angle-right" aria-hidden="true"></i></div>',
			autoplaySpeed: 2000,
			dots: false,
			arrows: true,
			focusOnSelect: true,
			responsive: [{
					breakpoint: 1024,
					settings: {
						slidesToShow: 2,
						slidesToScroll: 1,
					}
				},
				{
					breakpoint: 600,
					settings: {
						slidesToShow: 2,
						slidesToScroll: 2
					}
				},
				{
					breakpoint: 480,
					settings: {
						slidesToShow: 1,
						slidesToScroll: 1
					}
				}
			]
		});
	})
</script>