<?php
$restaurant_color = isset($u_info['colors']) ? $u_info['colors'] : '';
?>
<style>
    .mobileSocialIcons {
        display: none;
    }

    .restaurantTiming {
        display: none;
    }

    .topHeader {
        box-shadow: 0 0 0px #eee;
    }

    .numberBackground i,
    .numberBackground p {
        color: #<?= $restaurant_color ?> !important;
    }

    .hideItem {
        display: none !important;
    }

    .socialIcons {
        display: none;
    }

    .mobileSocialIcons {
        display: block;
        margin-top: 22px;
    }

    .mobileSocialIcons ul {
        gap: 18px;
    }

    .socialDivider {
        display: flex;
        flex-direction: column;
        gap: 18px;
    }

    .socialDivider li {
        border-radius: 6px;
        padding: 7px 34px;
        border: 1px solid #<?= $restaurant_color ?> !important;
        background-color: #<?= $restaurant_color ?> !important;
    }

    .socialDivider li i {
        color: #fff !important;
    }

    .numberBackground {
        display: flex;
        position: relative;
        top: 17px;
        gap: 12px;
        border: 1px solid #<?= $restaurant_color ?> !important;
        border-radius: 9px;
        padding: 7px 16px;
        background-color: #<?= $restaurant_color ?> !important;
        left: 35px;
    }

    .restaurantNumber {
        width: max-content;
    }

    .address {
        position: absolute;
        bottom: 75px;
        display: flex;
        justify-content: center;
        margin-left:18px;
        margin-top:40px;
    }

    .address p {
        text-align: center;
        width: 80%;
    }

    .numberBackground i,
    .numberBackground p {
        color: #fff !important;
    }

    .socialDivider li a {
        padding: 0 0 !important;
    }

    /* .sidebarMainImage {
         margin-left: 16px;
         margin-top: 14px;
         border: 1px solid #fa8263;
     } */




    @media (max-width: 768px) {
        .customNavsideBar {
            left: -379px;
            width: 378px;
        }

        .activeNav {
            width: 390px;
        }

        .topHeader {
            justify-content: flex-end;
            height: 20%;
            box-shadow: 0 0 0px #eee;
        }

        .hideItem {
            display: none !important;
        }

        .socialIcons {
            display: none;
        }

        .mobileSocialIcons {
            justify-content: center;
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 22px;
        }

        .mobileSocialIcons ul {
            gap: 18px;
        }

        .mobileSocialIcons ul li a {
            padding: 0 0 !important;
        }

        .socialDivider {
            display: flex;
            flex-direction: column;
            gap: 18px;
        }

        .socialDivider li {
            border-radius: 6px;
            padding: 7px 34px;
            border: 1px #<?= $restaurant_color ?> solid;
            background-color: #<?= $restaurant_color ?> !important;
        }

        .socialDivider li i {
            color: #fff !important;
        }

        .address {
            width: 100%;
            position: absolute;
            bottom: 75px;
            display: flex;
            margin-top: 70px;
            justify-content: center;
        }

        .address p {
            text-align: center;
            width: 80%;
        }

        .restaurantNumber {
            margin-top: 26px;
            justify-content: center;
            display: flex;
        }

        .numberBackground {
            display: flex;
            position: inherit;
            gap: 12px;
            border: 1px solid #<?= $restaurant_color ?>;
            border-radius: 9px;
            padding: 7px 16px;
            background-color: #<?= $restaurant_color ?> !important;

        }

        .restaurantTiming {
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            top: 40px;
        }

        .schedule {
            position: relative;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 5px;
            font-family: Arial, sans-serif;
            color: #666;
            font-size: 14px;
        }

        .day {
            text-align: left;
            font-weight: bold;
        }

        .time {
            text-align: left;
        }

        .cartNotify_wrapper.active {
            bottom: 0 !important;
        }

    }

    @media (max-width: 430px) and (min-width:414px) {
        .activeNav {
            width: 430px;
        }
    }

    @media (max-width: 414px) and (min-width:400px) {
        .activeNav {
            width: 414px;
        }
    }
</style>
<div class="customNavsideBar">
    <div class="customNavContent">
        <div class="topHeader">
            <a class="navbar-brand sidebarMainImage" href="<?= url($slug); ?>"><img src="<?= !empty(restaurant($id)->thumb) ? base_url(restaurant($id)->thumb) : base_url("assets/frontend/images/logo-example.png") ?>" alt="shopLogo" class="shopLogo"> </a>
            <a href="javascript:;" class="menuToggle closenav"><i class="icofont-close-line"></i></a>
        </div>
        <div class="navBarBody">
            <ul class="navbar-nav">
                <?php if (is_feature($id, 'welcome') == 1 && is_active($id, 'welcome')) : ?>
                    <li class="nav-item hideItem <?= isset($page_title) && $page_title == "Profile" ? "active" : ""; ?>">
                        <a class="nav-link" href="<?= url($slug); ?>"><?= lang('home'); ?> <span class="sr-only">(current)</span></a>
                    </li>
                <?php endif; ?>

                <?php if (is_feature($id, 'menu') == 1 && is_active($id, 'menu')) : ?>
                    <li class="nav-item hideItem<?= isset($page_title) && $page_title == "Menus" ? "active" : ""; ?>">
                        <a class="nav-link hideItem" href="<?= url('menu/' . $slug); ?>"><?= get_features_name('menu'); ?></a>
                    </li>
                <?php endif; ?>

                <?php if (is_feature($id, 'packages') == 1 && is_active($id, 'packages')) : ?>
                    <li class="nav-item hideItem<?= isset($page_title) && $page_title == "Packages" ? "active" : ""; ?>">
                        <a class="nav-link" href="<?= url('packages/' . $slug); ?>"><?= get_features_name('packages'); ?></a>
                    </li>
                <?php endif; ?>
                <?php if (is_feature($id, 'specialities') == 1 && is_active($id, 'specialities')) : ?>
                    <li class="nav-item hideItem<?= isset($page_title) && $page_title == "Specialties" ? "active" : ""; ?>">
                        <a class="nav-link" href="<?= url('specialities/' . $slug); ?>"> <?= get_features_name('specialities'); ?></a>
                    </li>
                <?php endif; ?>

                <?php if (is_feature($id, 'reservation') == 1 && is_active($id, 'reservation')) : ?>
                    <li class="hideItem"><a href="<?= url('reservation/' . $slug); ?>"><?= get_features_name('reservation'); ?></a></liccl>
                    <?php endif; ?>

                    <?php if (sizeof($page_list) > 0) : ?>
                    <li class="navDropdownMenu"><a href="javascript:;" class="nav-link"><?= lang('pages'); ?> <i class="icofont-rounded-down"></i></a>
                        <div class="navDropdownList" style="display:none;">
                            <ul class="pt-0 mt-0">
                                <?php foreach ($page_list as $key => $pg) : ?>
                                    <li class="nav-item"><a class="nav-link" href="<?= url('page/' . $slug . '/' . $pg->slug); ?>"> <?= $pg->title; ?></a></li>
                                <?php endforeach ?>
                            </ul>
                        </div>
                    </li>
                <?php endif; ?>

                <li class="navDropdownMenu hideItem"><a href="javascript:;" class=""><?= lang('more'); ?> <i class="icofont-rounded-down"></i></a>

                    <div class="navDropdownList" style="display:none;">
                        <ul class="pt-0">

                            <li class="nav-item"><a class="" href="<?= url('track-order/' . $slug); ?>"> <?= lang('track_order'); ?></a></li>


                            <?php if (is_feature($id, 'contacts') == 1 && is_active($id, 'contacts')) : ?>
                                <li class="nav-item"><a class="" href="<?= url('shop-contacts/' . $slug); ?>"><?= get_features_name('contacts'); ?></a></li>
                            <?php endif; ?>

                            <li class="nav-item"><a class="" href="<?= url('about-us/' . $slug); ?>"><?= lang('about_us'); ?></a></li>
                            <?php if (isset($shop['is_login']) && $shop['is_login'] == 1) : ?>
                                <li class="nav-item"><a class="" href="<?= base_url("staff-login/customer"); ?>"><?= lang('login'); ?></a></li>
                            <?php endif; ?>

                        </ul>
                    </div>
                </li>

                <?php if (isset($glang['is_glang']) && $glang['is_glang'] == 1) : ?>
                    <li class="gLanguage p-r allow-sm ">
                        <div class="gtranslate_wrapper glanguageList"></div>
                    </li>
                <?php else : ?>
                    <?php if (isset($shop['is_language']) && $shop['is_language'] == 1) : ?>
                        <li class="navDropdownMenu hideItem"><a class="nav-link p-r" href="javascript:;"> <?= lang_slug(!empty(auth('site_lang')) ? auth('site_lang') : $settings['language']); ?> <i class="fi fi-<?=
                                                                                                                                                                                                                    !empty(auth('site_lang')) && auth('site_lang') === 'english' ? 'gb' : (auth('site_lang') === 'fa' ? 'ir' : (auth('site_lang') === 'ar' ? 'sa' : auth('site_lang')))
                                                                                                                                                                                                                    ?>"></i>&nbsp;
                            </a>
                            <div class="navDropdownList" style="display: none;">
                                <ul>
                                    <?php foreach ($language as $index => $ln) : ?>
                                        <li>
                                            <a href="<?= base_url('home/lang_switch/' . $ln->slug); ?>">
                                                <span class="mr-4 <?= $ln->slug === 'ar' ? 'fi fi-sa' : ($ln->slug === 'fa' ? 'fi fi-ir' : ($index === 0 ? 'fi fi-gb' : 'fi fi-' . $ln->slug)) ?>"></span><?= $ln->lang_name; ?>
                                            </a>
                                        </li>
                                    <?php endforeach; ?>

                                </ul>
                            </div>
                        </li>
                    <?php endif; ?>
                <?php endif; ?>
                <!-- <span id="timeNow" style="margin-left: 12px;margin-top: 12px;font-family: 'FontAwesome';margin-top:10px;"></span> -->
                <?php $socialSetting = !empty(restaurant($data)->social_list) ? json_decode(restaurant($data)->social_list, true) : (!empty(restaurant($id)->social_list) ? json_decode(restaurant($id)->social_list, true) : ''); ?>
                <div class="socialIcons">
                    <ul class="d-flex flex-row" style="gap:12px;margin-left:12px;margin-top:10px;">
                        <li><a href="<?= redirect_url($socialSetting['facebook'], 'facebook'); ?>"><i class="fab fa-facebook" style="font-size:25px;"></i></a></li>
                        <li><a href="<?= redirect_url($socialSetting['instagram'], 'instagram'); ?>"><i class="fab fa-instagram" style="font-size:25px;"></i></a></li>
                        <li><a href="<?= redirect_url($socialSetting['whatsapp'], 'whatsapp'); ?>"><i class="fab fa-whatsapp" style="font-size:25px;"></i></a></li>
                        <li><i class="fab fas fa-map-marker-alt" style="font-size:25px;"></i></li>
                    </ul>
                </div>
                <div class="mobileSocialIcons">
                    <ul class="d-flex flex-row justify-content-center">
                        <div class="socialDivider">
                            <li><a href="<?= redirect_url($socialSetting['facebook'], 'facebook'); ?>"><i class="fab fa-facebook" style="font-size:25px;"></i></a></li>
                            <li><a href="<?= redirect_url($socialSetting['instagram'], 'instagram'); ?>"><i class="fab fa-instagram" style="font-size:25px;"></i></a></li>
                        </div>

                        <div class="socialDivider">
                            <li><a href="<?= redirect_url($socialSetting['whatsapp'], 'whatsapp'); ?>"><i class="fab fa-whatsapp" style="font-size:25px;"></i></a></li>
                            <li> <a href="<?= redirect_url(restaurant($id)->location, 'google'); ?>"><i class="fab fas fa-map-marker-alt" style="font-size:25px;"></i></a></li>
                        </div>
                    </ul>

                    <!-- restaurant phone number -->
                    <div class="restaurantNumber">
                        <div class="numberBackground">
                            <i class="fas fa-phone h4 text-light" style="transform: rotate(90deg);"></i>
                            <p class="h4 text-light"><?= !empty(restaurant($data)->phone) ? restaurant($data)->phone : restaurant($id)->phone ?></p>
                        </div>
                    </div>
                </div> <!--new change -->
                <!-- restaurant timing -->
                <div class="restaurantTiming">
                    <div class="schedule">
                        <?php foreach ($reservations as $reservation) : ?>
                            <div class="day"><?= $dayNames[$reservation['days']] ?></div> <!-- 'days' should match your database column -->
                            <div class="time"><?= $reservation['start_time'] ?> to <?= $reservation['end_time'] ?></div>
                        <?php endforeach; ?>
                    </div>
                </div>
                <!-- restaurant address -->
                <div class="address">
                    <p><?= !empty(restaurant($data)->address) ? restaurant($data)->address : restaurant($id)->address ?></p>
                </div>

                <?php __menu(restaurant($id)->id, '', false, $is_sidebar = true); ?>
            </ul><!-- navBar -->
        </div><!-- topbarbody -->
    </div>
    <div class="topFooter">
        <ul class="mt-0 pt-0 text-right ">
            <?php if ($shop['is_call_waiter'] == 1) : ?>
                <li><a href="javascript:;" data-toggle="modal" data-target="#waiterModal"><i class="icofont-bell-alt"></i> <?= lang('call_waiter'); ?></a></li>

            <?php endif; ?>
            <?php if (isset($shop['is_login']) && $shop['is_login'] == 1) : ?>
                <li><a href="<?= base_url('staff-login/customer') ?>"><i class="fa fa-sign-in"></i> <?= __('login') ?></a></li>
            <?php endif; ?>
        </ul>
    </div>
</div>