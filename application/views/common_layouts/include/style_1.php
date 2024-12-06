<?php
$restaurant_color = isset($u_info['colors']) ? $u_info['colors'] : '';
?>
<style>
    .menuBar {
        margin-right: 20px;
    }

    @media only screen and (max-width: 767px) {
        .customNav {
            background-color: #<?= $restaurant_color ?> !important;
        }

        #mobileNav {
            background-color: #<?= $restaurant_color ?> !important;
            height: 48px;
        }

        .iconBottom,
        .mobileLang {
            color: #fff;
        }

        .fab,
        .fa-bag-shopping {
            color: #<?= $restaurant_color ?> !important;
        }

        .address p {
            color: #<?= $restaurant_color ?> !important;
        }

        .menuBar {
            color: #fff;
            position: relative;
            font-size: 30px;
            left: 10px;

        }

        .restaurantName p {
            color: #fff;
        }

        .btn {
            background-color: #<?= $restaurant_color ?> !important;
            border-color: #<?= $restaurant_color ?> !important;
        }

        .addToCartBtn {
            background-color: #<?= $restaurant_color ?> !important;
            border-color: #<?= $restaurant_color ?> !important;
        }

    }
</style>
<div class="customNavBar">
    <div class="customNav">
        <div class="container restaurant-container">
            <div class="menuArea">
                <div class="navLeftMenu">
                    <ul>
                        <li><a href="javascript:;" class="menuToggle"><i class="fas fa-bars menuBar"></i></a></li>
                    </ul>

                    <div class="customMenu nwStyleNav">
                        <ul class="navbar-nav">
                            <?php if (is_feature($id, 'welcome') == 1 && is_active($id, 'welcome')) : ?>
                                <li class="nav-item <?= isset($page_title) && $page_title == "Profile" ? "active" : ""; ?>">
                                    <a class="nav-link" href="<?= url($slug); ?>"><?= lang('home'); ?> <span class="sr-only">(current)</span></a>
                                </li>
                            <?php endif; ?>

                            <?php if (is_feature($id, 'menu') == 1 && is_active($id, 'menu')) : ?>
                                <li class="nav-item <?= isset($page_title) && $page_title == "Menus" ? "active" : ""; ?>">
                                    <a class="nav-link" href="<?= url('menu/' . $slug); ?>"><?= get_features_name('menu'); ?></a>
                                </li>
                            <?php endif; ?>

                            <?php if (is_feature($id, 'packages') == 1 && is_active($id, 'packages')) : ?>
                                <li class="nav-item <?= isset($page_title) && $page_title == "Packages" ? "active" : ""; ?>">
                                    <a class="nav-link" href="<?= url('packages/' . $slug); ?>"><?= get_features_name('packages'); ?></a>
                                </li>
                            <?php endif; ?>
                            <?php if (is_feature($id, 'specialities') == 1 && is_active($id, 'specialities')) : ?>
                                <li class="nav-item <?= isset($page_title) && $page_title == "Specialties" ? "active" : ""; ?>">
                                    <a class="nav-link" href="<?= url('specialities/' . $slug); ?>"> <?= get_features_name('specialities'); ?></a>
                                </li>
                            <?php endif; ?>
                        </ul>
                    </div>
                    <a class="navbar-brand <?= imgRation(restaurant($id)->thumb ?? '') ?> ml-10 restaurantName" href="<?= url($slug); ?>">
                        <p
                            id="restaurant-name"
                            title="<?= htmlspecialchars(!empty(restaurant($data)->name) ? restaurant($data)->name : restaurant($id)->name) ?>">
                            <?= (!empty(restaurant($data)->name) ? restaurant($data)->name : restaurant($id)->name); ?>
                        </p>
                    </a>
                </div>
                <?php $_p = ['payment gateway', 'checkout'] ?>
                <?php if (isset($page_title) && in_array(strtolower($page_title), $_p) == 0) : ?>
                    <div class="navRightMenu">
                        <ul>
                            <?php if ($shop['is_language'] == 1) : ?>
                                <?php if (sizeof($language) > 1) : ?>
                                    <li class="navDropdownMenu menuDropdown"><a class="nav-link p-r" href="javascript:;"><i class="fi fi-<?= !empty(auth('site_lang')) && auth('site_lang') === 'english' ? 'gb' : (auth('site_lang') === 'fa' ? 'ir' : (auth('site_lang') === 'ar' ? 'sa' : auth('site_lang') ?? ((isset($settings['language']) && $settings['language'] == 'english') ? 'gb' : '')))?>"></i>&nbsp;
                                            <span class="allow mobileLang"><?= lang_slug(!empty(auth('site_lang')) ? auth('site_lang') : $settings['language']); ?> <i class="icofont-rounded-down"></i></span></a>
                                        <div class="navDropdownList" id="mainLang" style="display: none;">
                                            <ul>
                                                <?php foreach ($language as $index => $ln) : ?>
                                                    <li>
                                                        <a href="<?= base_url('home/lang_switch/' . $ln->slug); ?>">
                                                            <span class="mr-2 <?=
                                                                                $ln->slug === 'ar' ? 'fi fi-sa' : ($ln->slug === 'fa' ? 'fi fi-ir' : ($index === 0 ? 'fi fi-gb' : 'fi fi-' . $ln->slug)) ?>"></span>
                                                            <?= $ln->lang_name; ?>
                                                        </a>
                                                    </li>
                                                <?php endforeach; ?>

                                            </ul>

                                        </div>
                                    </li>
                                <?php endif; ?> <!-- sizeof -->
                            <?php endif; ?><!-- is_langauge -->
                            <?php if ($shop['is_call_waiter'] == 1) : ?>
                                <li> <a href="javascript:;" data-toggle="modal" data-target="#waiterModal"><i class="icofont-bell-alt text-light"></i></a></li>
                            <?php endif; ?>

                            <li class="navCart" id="mediumCart" data-slug="<?= $slug; ?>"><a href="javascript:;"><i class="fa fa-shopping-bag"></i> <span class="ajaxQty"><?php include  APPPATH . "views/common_layouts/cartCount.php"; ?></span></a></li>

                        </ul>
                    </div>
                <?php endif; ?>
            </div>
            <!-- top menubar -->
        </div>





        <?php include '__navSidebar.php'; ?>
    </div>
</div>
<script>
    const truncateText = () => {
        const nameElement = document.getElementById("restaurant-name");
        const fullName = nameElement.getAttribute("title");
        nameElement.textContent = window.innerWidth <= 768 && fullName.length > 9 ?
            fullName.slice(0, 9) + "..." :
            fullName;
    };

    window.addEventListener("resize", truncateText);
    truncateText(); // Initial call
</script>