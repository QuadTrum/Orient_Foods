<!DOCTYPE html>
<html lang="<?= site_lang() ?? 'en'; ?>" dir="<?= direction(); ?>">

<head>
    <?php $settings = settings(); ?>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />


    <?php if (isset($slug) && isset($id)) : ?>
        <?php $seo =  seo_settings($id); ?>
        <?php $logo = isset(restaurant($id)->thumb) ? restaurant($id)->thumb : $settings['logo']; ?>
        <meta property="og:type" content="article" />
        <meta property="og:title" content="<?= isset($seo['title']) ? html_escape($seo['title']) : ''; ?>" />
        <meta property="og:description" content="<?= isset($seo['description']) ? html_escape($seo['description']) : ''; ?>" />
        <meta property="og:url" content="<?= url($slug); ?>" />
        <meta name="keywords" content="<?= isset($seo['keywords']) ? html_escape($seo['keywords']) : ''; ?>">
        <meta property="og:image" content="<?= base_url($logo) ?>" />
    <?php else : ?>
        <?php $seo =  isJson($settings['seo_settings']) ? json_decode($settings['seo_settings'], true) : ''; ?>
        <meta property="og:type" content="article" />
        <meta property="og:title" content="<?= isset($seo['title']) ? html_escape($seo['title']) : ''; ?>" />
        <meta property="og:description" content="<?= isset($seo['description']) ? html_escape($seo['description']) : ''; ?>" />
        <meta property="og:url" content="<?= base_url(); ?>" />
        <meta name="keywords" content="<?= isset($seo['keywords']) ? html_escape($seo['keywords']) : ''; ?>">
        <meta property="og:site_name" content="<?= isset($settings['site_name']) ? html_escape($settings['site_name']) : ''; ?>" />
    <?php endif; ?>




    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?= base_url(); ?>assets/frontend/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/frontend/plugins/jquery-ui/jquery-ui.main.css">

    <?php if (direction() == 'rtl') : ?>
        <link rel="stylesheet" href="<?= base_url() ?>assets/frontend/css/bootstrap-rtl.css?v=<?= $settings['version']; ?>&time=<?= time(); ?>">
    <?php endif ?>
    <!-- Bootstrap CSS -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans|Montserrat|Poppins|Josefin+Sans|Roboto+Condensed&display=swap" rel="stylesheet">


    <?php if (isset($settings['system_fonts']) && !empty($settings['system_fonts'])) : ?>
        <!-- google fonts -->
        <link href="https://fonts.googleapis.com/css?family=<?= $settings['system_fonts']; ?>&display=swap" rel="stylesheet">
        <!-- google fonts -->
    <?php endif; ?>

    <!-- slick slider -->
    <link rel="stylesheet" href="<?= base_url(); ?>assets/frontend/plugins/slickSlider/slick.css">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/frontend/plugins/swiper/swiper.css" />
    <!-- slick slider -->


    <!-- animate css 3.7.2 -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/frontend/plugins/animate/animate.css">
    <!-- animate -->

    <!-- lightbox css lightbox css 2.11.1 -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/frontend/plugins/venobox/venobox.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/frontend/plugins/editableSelect/editableSelect.css">
    <!-- lightbox lightbox css 2.11.1-->

    <!--aos-animation -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/frontend/plugins/animation/aos-animation.css">
    <!-- animate -->

    <!--intlinput -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/frontend/plugins/country/intelinput.css">
    <!-- intlinput -->

    <!-- select2 style -->
    <link rel="stylesheet" href="<?= base_url() ?>assets/admin/bower_components/select2/dist/css/select2.min.css">

    <!-- fontawsome 4.7 and 5.8.1 -->

    <link href="<?php echo base_url(); ?>assets/frontend/icon6/css/all.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>assets/frontend/css/font-awesome-5.8.1.main.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>assets/frontend/css/font-awesome.min.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>assets/frontend/css/icofont.css" rel="stylesheet">
    <!-- fontawsome 4.7 and 5.8.1 -->

    <!-- datetimepicker css -->

    <link rel="stylesheet" href="<?= base_url() ?>assets/frontend/plugins/sweetalert/sweet-alert.css">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/frontend/plugins/datetime_picker/datetime.css">

    <!-- custom loader css -->
    <link rel="stylesheet" href="<?= base_url(); ?>assets/frontend/plugins/loader.css?v=<?= $settings['version']; ?>&time=<?= time(); ?>">
    <!-- custom loader css -->



    <!-- custom css -->
    <link rel="stylesheet" href="<?= base_url(); ?>assets/frontend/plugins/mockup/device-mockups.min.css">

    <link rel="stylesheet" href="<?= base_url('public/frontend/css/item.css'); ?>?t=<?= time(); ?>">
    <link rel="stylesheet" href="<?= base_url(); ?>public/frontend/css/frontend.css?v=<?= $settings['version']; ?>&time=<?= time(); ?>">
    <link rel="stylesheet" href="<?= base_url(); ?>public/frontend/css/style.css?v=<?= $settings['version']; ?>&time=<?= time(); ?>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icons/7.2.3/css/flag-icons.min.css" integrity="sha512-bZBu2H0+FGFz/stDN/L0k8J0G8qVsAL0ht1qg5kTwtAheiXwiRKyCq1frwfbSFSJN3jooR5kauE0YjtPzhZtJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- custom css -->


    <style>
        .toggleTheme {
            z-index: 1;
            right: 35px;
            position: fixed;
            top: 16rem;
        }

        /* Light mode */
        body.light-mode {
            background-color: #ffffff;
            color: #000000 !important;
        }

        /* Dark mode */
        body.dark-mode {
            background-color: #333333 !important;
            color: #ffffff !important;
        }

        body.dark-mode .bannerTitle,
        body.dark-mode .bannerHeadline {
            color: #ffffff !important;
        }

        body.dark-mode .moduleHeading,
        body.dark-mode .introTitle,
        body.dark-mode .introSubHeadline,
        body.dark-mode .heading-text,
        body.dark-mode .features-heading p,
        body.dark-mode .page_accordion_header,
        body.dark-mode .accordion_content,
        body.dark-mode .nav-item a,
        body.dark-mode .singleCatItem h4
        {
            color: #ffffff !important;
        }

        body.dark-mode .teamSections,
        body.dark-mode .newPriceLayout .card,
        body.dark-mode .review-card,
        body.dark-mode .features-wrap,
        body.dark-mode .page_accordion_header,
        body.dark-mode .accordion_content,
        body.dark-mode .dropdown-menu,
        body.dark-mode .customNav,
        body.dark-mode .categorySection,
        body.dark-mode .singleHome_item,
        body.dark-mode .homeItemDetails,
        body.dark-mode .customNavsideBar
        {
            background-color: #333333 !important;
        }

        body.dark-mode .homeMenuNav {
            box-shadow: 0 0 0px #0c0c0c;
            background-color: #333 !important;
        }

        body.dark-mode .form-control {
            background-color: #3333 !important;
            color: #fff !important;
        }

        body.dark-mode .shopTopper {
            color: #fff;
            background-color: #333;
        }

        body.dark-mode .singleShop .cardFooter{
            background-color: #333;
        }

        body.dark-mode .singleShop .cardFooter li a{
            color: #fff;
        }
        body.dark-mode .singleShop:hover {
            box-shadow: 2px 2px 2px #fff ;
            transition: 0.5s all ease-in-out;
        }

        body.dark-mode .singleCatItem{
            background: #333 !important;
        }

        body.dark-mode .homeSingle_item{
            background: #333 !important;
            box-shadow:0 0.3rem 1.525rem -0.375rem rgb(0 0 0 / 74%) !important;
        }
        body.dark-mode ul.gallery_sort li button{
            background: #333 !important;
            box-shadow: 0 4px 6px rgb(50 50 93 / 27%), 0 1px 3px rgb(0 0 0);
        }
        body.dark-mode .top_footer,
        body.dark-mode .footer_bottom,
        body.dark-mode .search-box-2,
        body.dark-mode .homeBanner_left
        {
            background-color: #333 !important;
        }

        /* light mode button desgin */
        #lightModeButton {
            border: 1px;
            padding: 7px;
            background-color: transparent;
            border-radius: 100%;
        }

        #lightModeButton:hover {
            border: 1px;
            padding: 7px;
            border-radius: 100%;
            transition: 0.5s all ease-in-out;
        }

        /* dark mode button  */
        #darkModeButton {
            border: 1px;
            padding: 7px;
            background-color: transparent;
            border-radius: 100%;
        }

        #darkModeButton:hover {
            border: 1px;
            color: #333;
            padding: 7px;
            border-radius: 100%;
            transition: 0.5s all ease-in-out;
        }
    </style>


    <?php include 'pwa_header_config.php' ?>


    <!-- custom css -->
    <?php if (isset($settings['custom_css']) && !empty($settings['custom_css'])) : ?>
        <style>
            <?= $settings['custom_css'];
            ?>
        </style>
    <?php endif; ?>
    <!-- custom css -->

    <?php if (isset($id)) : ?>
        <?php $u_info = user_info_by_id($id); ?>

        <style>
            .homeItemDetails {
                background-color: <?= isset($u_info['menu_card_color']) ? $u_info['menu_card_color'] : '#4b566b'; ?> !important;
            }

            .item_images {
                background-color: <?= isset($u_info['menu_items_bg']) ? $u_info['menu_items_bg'] : ''; ?> !important;
            }
        </style>
        <?php if (isset($u_info['menu_style']) && $u_info['menu_style'] == 3) : ?>
            <style>
                @media only screen and (max-width: 767px) {
                    .UserMobileMenu {
                        display: block !important;
                    }

                    .userMenu {
                        display: none !important;
                    }
                }
            </style>
        <?php else : ?>
            <style>
                @media only screen and (max-width: 767px) {
                    .userMenu {
                        display: block !important;
                    }

                    .allow-sm {
                        display: block
                    }

                    .UserMobileMenu,
                    .rightMenu {
                        display: none !important;
                    }
                }
            </style>
        <?php endif; ?>

        <style>
            :root {
                --color: #<?= $u_info['colors']; ?>;
            }
        </style>

        <!-- custom css -->
        <link rel="stylesheet" href="<?= base_url(); ?>public/frontend/css/default.php?themes=<?= $u_info['theme']; ?>&theme_color=<?= $u_info['theme_color']; ?>&color=<?= $u_info['colors']; ?>">
    <?php endif; ?>

    <?php if (isset($settings['system_fonts']) && !empty($settings['system_fonts'])) : ?>
        <link href="https://fonts.googleapis.com/css2?family=<?= $settings['system_fonts']; ?>:wght@200;300;400;600;700;900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="<?= base_url(); ?>public/frontend/css/fonts.php?name=<?= $settings['system_fonts']; ?>">
    <?php endif; ?>

    <!-- responsive css -->
    <link rel="stylesheet" href="<?= base_url(); ?>public/frontend/css/responsive.css?v=<?= $settings['version']; ?>&time=<?= time(); ?>">
    <!-- responsive css-->

    <?php if (direction() == 'rtl') : ?>
        <link rel="stylesheet" href="<?= base_url() ?>public/frontend/css/custom_rtl.css?v=<?= $settings['version']; ?>&time=<?= time(); ?>">
    <?php endif ?>


    <link rel="icon" href="<?= !empty($settings['favicon']) ? base_url(html_escape($settings['favicon'])) : ''; ?>" type="image/*" sizes="16x16">

    <?php if (isset($id)) : ?>
        <?php $seo =  seo_settings($id); ?>
        <title><?= !empty($seo['title']) ? $seo['title'] : (!empty($settings['site_name']) ? $settings['site_name'] : '') ?> |
            <?= isset($_title) && $_title != '' ? $_title : (isset($page_title) && $page_title != '' ? $page_title : ''); ?></title>
    <?php else : ?>
        <title><?= !empty($settings['site_name']) ? $settings['site_name'] : ''; ?> |
            <?= isset($_title) && $_title != '' ? $_title : (isset($page_title) && $page_title != '' ? $page_title : ''); ?></title>
    <?php endif; ?>

    <?php include 'pixel_analytics.php'; ?>

    <!-- google recaptcha -->
    <script src='https://www.google.com/recaptcha/api.js'></script>

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="<?= base_url(); ?>assets/frontend/js/modernizr-3.5.0.min.js"></script>

    <script src="<?= base_url(); ?>assets/frontend/js/jquery-3.4.1.min.js"></script>

    <script src="<?= base_url() ?>assets/frontend/plugins/jquery-ui/jquery-ui.main.js"></script>


    <script src="<?php echo base_url() ?>public/plugins/utilities.js"></script>



    <!-- admin onSignal Notification -->
    <?php if (isset($page) && $page == "Home") : ?>
        <?php $onesignal = !empty($settings['notifications']) ? json_decode($settings['notifications']) : ''; ?>

        <?php if (isset($onesignal->is_active_onsignal) && $onesignal->is_active_onsignal == 1) : ?>
            <?= $this->load->view('frontend/inc/onesignal_header', ['appID' => $onesignal->onsignal_app_id], true); ?>

        <?php endif; ?>
    <?php endif; ?>
    <!-- admin onSignal Notification -->

    <?php if (isset($id)) : ?>
        <?php $user_settings = $this->common_m->get_user_settings($id); ?>

        <?php if (is_feature($id, 'pwa-push') == 1 && is_active($id, 'pwa-push') && check() == 1) : ?>
            <!-- user onSignal Notification -->
            <?php $oneSignal = !empty($user_settings['onesignal_config']) ? json_decode($user_settings['onesignal_config']) : ''; ?>
            <?php if (isset($oneSignal->is_active_onsignal) && $oneSignal->is_active_onsignal == 1) : ?>

                <?= $this->load->view('frontend/inc/onesignal_header', ['appID' => $oneSignal->onsignal_app_id], true); ?>
                <!-- user onSignal Notification -->
            <?php endif; ?>
        <?php endif; ?>

    <?php endif; ?>


    <?php if (isset($page) && in_array($page, ['Home', 'Login'])) : ?>
        <?php include "custom_color.php"; ?>
    <?php endif; ?>

    <?php if (isset($settings['custom_js']) && !empty($settings['custom_js'])) : ?>
        <!-- custom js -->

        <?= $settings['custom_js']; ?>

        <!-- custom js -->
    <?php endif; ?>


</head>
<?php if (isset($id)) : ?>

    <?php $u_info = user_info_by_id($id); ?>
    <?php $user_settings = $this->common_m->get_user_settings($id); ?>

    <?php $shop_info = restaurant($id); ?>



    <script>
        let numberFormat = `<?= isset($shop_info->number_formats) ? $shop_info->number_formats : 0; ?>`;
        let currencyPosition = '<?= isset($shop_info->currency_position) ? $shop_info->currency_position : 1; ?>';
        let currencyIcon = '<?= $shop_info->icon; ?>';
        let shopId = '<?= $shop_info->id; ?>';
        let returnPrice = 0;

        function showPrice(price) {
            if (currencyPosition == 1) {
                returnPrice = currencyFormat(price) + ' ' + currencyIcon
            } else {
                returnPrice = currencyIcon + ' ' + currencyFormat(price);
            }
            return returnPrice;
        }

        function currencyFormat(price) {
            if (numberFormat == 0) {
                return parseFloat(price).toFixed(0)
            } else {
                return parseFloat(price).toFixed(2)
            }
        }
    </script>



    <body style="Background-color:<?= isset($u_info['site_bg_color']) ? $u_info['site_bg_color'] : ''; ?>;">

        <?php if (isset($user_settings['preloader']) && $user_settings['preloader'] != 0) : ?>
            <div id="preloader">
                <div class="preloader_<?= $user_settings['preloader']; ?> loader_position"><span></span>
                    <span></span>
                </div>
            </div>
        <?php endif ?>
    <?php else : ?>

        <body>
            <div id="preloader">
                <div class="preloader_1 loader_position"><span></span>
                    <span></span>
                </div>
            </div>
        <?php endif; ?>

        <div class="mainWrapper">
            <div class="toggleTheme">
                <button id="lightModeButton" onclick="toggleDarkMode()"><i class="far fa-sun" style="color:orange;font-size:1.5em;"></i></button>
                <button id="darkModeButton" onclick="toggleDarkMode()" style="display:none;"><i class="fas fa-moon" style="color:dark;font-size:1.5em;transform: rotate(240deg);"></i></button>
            </div>