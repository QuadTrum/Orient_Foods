  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.19/css/intlTelInput.css">
  <style>
  	.loader {
  		border: 16px solid #f3f3f3;
  		border-radius: 50%;
  		border-top: 16px solid #3498db;
  		width: 120px;
  		height: 120px;
  		animation: spin 2s linear infinite;
  		position: absolute;
  		top: 50%;
  		left: 50%;
  		transform: translate(-50%, -50%);
  		display: none;
  	}

  
  	@keyframes spin {
  		0% {
  			transform: rotate(0deg);
  		}

  		100% {
  			transform: rotate(360deg);
  		}
  	}
  </style>
  <div class="home_wrapper">
  	<?php $settings = settings(); ?>
  	<?php $social = isJson($settings['social_sites']) ? json_decode($settings['social_sites'], TRUE) : ''; ?>
  	<?php $home = section_name('home'); ?>
  	<?php if ($home['status'] == 1) : ?>

  		<div class="homeTopBanner">
  			<div class="container mt-5">
  				<div class="row mt-3">
  					<div class="col-7 mt-5 topSectionImg">
  						<div class="homeLeftImg">
  							<img src="<?= base_url('uploads/site_banners/flyerImage.png')  ?>" alt="home banner">
  						</div>
  					</div>
  					<div class="col-5 mt-5 topSectionText">
  						<div class="bannerTextArea">
  							<h1 class="bannerTitle"><?= !empty($home) ? html_escape($home['heading']) : 'Create Your space  With '; ?><span> <?= html_escape($settings['site_name']); ?></span></h1>
  							<p class="bannerHeadline mt-3"><?= !empty($home) ? html_escape($home['sub_heading']) : 'Create The Great First Impression'; ?></p>
  							<p class="bannerHeadline mt-3"><strong>Their mobile is your menu now!</strong></p>
  						</div>
  						<div class="formDiv mt-3">
  							<form action="<?= base_url('Home/storeLead'); ?>" method="post">
  								<?= csrf(); ?>
  								<div class="form-group">
  									<input type="text" class="form-control inputFields" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Restaurant name" name="restaurant_name">
  								</div>
  								<div class="form-group">
  									<input type="email" class="form-control inputFields" id="email" name="email" placeholder="your email">
  									<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  								</div>
  								<div class="form-group">
  									<input type="tel" class="form-control inputFields" id="phoneNumber" name="phone" placeholder="121-3434-45">
  								</div>
  								<div class="actionBtn mt-1">
  									<button type="submit" class="btn btnFirst">
  										join now
  									</button>
  									<!-- <a class="btn btnFirst" href="#">Join now</a> -->
  								</div>
  							</form>
  						</div>

  					</div>
  				</div>


  				<!-- another section  -->

  				<?php if (isset($settings['restaurant_demo'])  && !empty($settings['restaurant_demo'])) : ?>
  					<a href="<?= base_url($settings['restaurant_demo']); ?>" class="resaurantDemo" style="position: absolute;
						    bottom: -30px;
						    z-index: 999;
						    display: inline-block;
						    background: #007bff;
						    color: #fff;
						    padding: 8px 20px;
						    border-radius: 8px; margin-bottom: 15px;"><?= lang('restaurant_demo'); ?></a>
  				<?php endif; ?>
  			</div>
  		</div>

  		<!-- modules section -->
  		<div class="moduleSection mb-5">
  			<div class="container mt-2">
  				<div class="row">
  					<div class="col-12 mt-2 ">
  						<h1 class="moduleHeading ">Modules to Automate your Restaurant!</h1>
  						<ul class="d-flex moduleMain mt-5">
  							<div class="modulePart firstDiv">
  								<li class="d-flex">
  									<i class="icofont-dice-multiple"></i>
  									<p class="moduleName">Multiple Branches Options</p>
  								</li>
  								<li class="d-flex">
  									<i class="icofont-credit-card"></i>
  									<p class="moduleName">Easy Payment System</p>
  								</li>
  								<li class="d-flex">
  									<i class="icofont-globe"></i>
  									<p class="moduleName">Multi Language supported</p>
  								</li>
  								<li class="d-flex">
  									<i class="icofont-page"></i>
  									<p class="moduleName">Unlimited Page Builder</p>
  								</li>
  								<li class="d-flex">
  									<i class="icofont-chart-bar-graph"></i>
  									<p class="moduleName">Cookies and Social Analytics</p>
  								</li>
  							</div>
  							<div class="modulePart">
  								<li class="d-flex">
  									<i class="icofont-dashboard-web"></i>
  									<p class="moduleName">Powerful Admin Panel</p>
  								</li>
  								<li class="d-flex">
  									<i class="icofont-gift"></i>
  									<p class="moduleName">Coupon & Voucher Functionality</p>
  								</li>
  								<li class="d-flex">
  									<i class="icofont-penalty-card"></i>
  									<p class="moduleName">Multiple Payment Gateway</p>
  								</li>
  								<li class="d-flex">
  									<i class="icofont-dashboard-web"></i>
  									<p class="moduleName">Restaurant Point of Sale</p>
  								</li>
  								<li class="d-flex">
  									<i class="icofont-ui-messaging"></i>
  									<p class="moduleName">Push Notification</p>
  								</li>
  							</div>
  							<div class="modulePart">
  								<li class="d-flex">
  									<i class="icofont-dashboard-web"></i>
  									<p class="moduleName">Powerful Admin Panel</p>
  								</li>
  								<li class="d-flex">
  									<i class="icofont-gift"></i>
  									<p class="moduleName">Coupon & Voucher Functionality</p>
  								</li>
  								<li class="d-flex">
  									<i class="icofont-penalty-card"></i>
  									<p class="moduleName">Multiple Payment Gateway</p>
  								</li>
  								<li class="d-flex">
  									<i class="icofont-dashboard-web"></i>
  									<p class="moduleName">Restaurant Point of Sale</p>
  								</li>
  								<li class="d-flex">
  									<i class="icofont-ui-messaging"></i>
  									<p class="moduleName">Push Notification</p>
  								</li>
  							</div>
  						</ul>
  					</div>
  				</div>
  			</div>
  		</div>


  		<!-- another section -->
  		<div class="homeTopBanner section-2">
  			<div class="container mt-2">
  				<div class="row mt-3 gap-2 ">
  					<div class="col-7 topSectionImg">
  						<div class="bannerImages">
  							<img src="<?= base_url('uploads/site_banners/frame.png'); ?>" alt="section banner">
  						</div>
  					</div>

  					<div class="col-5 topSectionText">
  						<div class="introSection">
  							<h1 class="introTitle">launch your Restaurant with us !</h1>
  							<p class="introSubHeadline mt-3">Efficient and Easy Digital Menu Ordering and Contactless Payment System for In-House Dining.</p>
  							<p class="introSubHeadline mt-3">Efficient and Easy Digital Menu Ordering and Contactless Payment System for In-House Dining.</p>
  							<p class="introSubHeadline mt-3">Efficient and Easy Digital Menu Ordering and Contactless Payment System for In-House Dining.</p>
  						</div>
  					</div>
  				</div>
  			</div>
  		</div>

  		<!-- middle section  -->
  		<div class="homeTopBanner section-2">
  			<div class="container mt-2">
  				<div class="row mt-3 gap-2 " id="middleSectionAbout">
  					<div class="col-5 middleSectionText">
  						<div class="introSection2 ml-4">
  							<h1 class="introTitle">Contactless Table Ordering System</h1>
  							<p class="introSubHeadline mt-3">Customers can use their smartphones to scan the QR code on their table, which directs them to the digital menu.</p>
  							<p class="introSubHeadline mt-3">The digital menu allows customers to browse through items, select their choices, and place orders directly from their devices.</p>
  							<p class="introSubHeadline mt-3">Orders are sent to the kitchen or bar, reducing the need for physical menus, paper order slips, and direct interaction with waitstaff.</p>
  						</div>
  					</div>
  					<div class="col-7 topSectionImg">
  						<div class="bannerImages">
  							<img src="<?= base_url('uploads/site_banners/sideFrame.png'); ?>" alt="section banner">
  						</div>
  					</div>
  				</div>
  			</div>
  		</div>

  		<!-- another section -->
  		<div class="homeTopBanner section-2">
  			<div class="container mt-1">
  				<div class="row mt-3 gap-2 ">
  					<div class="col-6 topSectionImg">
  						<div class="bannerImages">
  							<img src="<?= base_url('uploads/site_banners/pos_int.png'); ?>" alt="section banner">
  						</div>
  					</div>

  					<div class="col-6 mt-5 endSectionText">
  						<div class="introSection ml-5">
  							<h1 class="introTitle">Restaurant POS Integration!</h1>
  							<p class="introSubHeadline mt-3">Integration with the restaurant's POS system ensures that orders placed through the contactless system are seamlessly processed.</p>
  							<p class="introSubHeadline mt-3">The POS system may also handle payment processing, allowing customers to pay through the app or other contactless methods.</p>
  						</div>
  					</div>

  				</div>
  			</div>
  		</div>

  	<?php endif; ?>
  </div>

  <!-- <div class="step_1 p-r"> -->
  <!-- <div class="loader"></div> -->
  <!-- popular shop -->
  <!-- popular item -->
  <!-- how it works -->
  <!-- </div> -->

  <div class="step_2 p-r">
  	<div class="loader"></div>
  	<!-- left/right features -->
  	<!-- FAQ -->
  	<!-- services -->
  	<!-- team -->
  	<!-- pricing -->
  </div>


  <script>
  	$(document).ready(function() {

  		// Show the loader
  		$('.loader').show();

  		// Load step_1
  		$.ajax({
  			url: '<?php echo site_url('home/step_1'); ?>',
  			type: 'GET',
  			dataType: 'json',
  			success: function(response) {
  				if (response.st === 1) {
  					$('.step_1').html(response.load_data);
  					console.log('step_1 loaded');
  					$.ajax({
  						url: '<?php echo site_url('home/step_2'); ?>',
  						type: 'GET',
  						dataType: 'json',
  						success: function(response) {
  							if (response.st === 1) {
  								$('.step_2').html(response.load_data);
  							}
  							console.log('step_2 loaded');
  							$('.loader').hide();
  						},
  						error: function(xhr, status, error) {
  							console.error('Error loading step_2:', error);
  							$('.loader').hide();
  						}
  					});
  				} else {
  					$('.loader').hide();
  				}


  				init();


  			},
  			error: function(xhr, status, error) {
  				console.error('Error loading step_1:', error);
  				$('.loader').hide();
  			}


  		});
  	});

  	function init() {

  		$(document).on("click", ".page_accordion_header", function() {
  			$(this).toggleClass("active").next().slideToggle(300);
  			$(this).toggleClass('arrow_up').toggleClass('arrow_down');
  		});




  	}
  </script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.19/js/intlTelInput.min.js"></script>
  <script>
  	$(document).ready(function() {
  		const phoneInput = document.querySelector("#phoneNumber");
  		const iti = window.intlTelInput(phoneInput, {
  			initialCountry: "tr",
  			separateDialCode: true,
  			geoIpLookup: function(callback) {
  				fetch("https://ipinfo.io/json")
  					.then((response) => response.json())
  					.then((data) => callback(data.country))
  					.catch(() => callback("US"));
  			},
  			utilsScript: "https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.19/js/utils.js"
  		});
  	});
  </script>