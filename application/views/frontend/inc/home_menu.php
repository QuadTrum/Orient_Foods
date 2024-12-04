<?php $settings = settings(); ?>
<?php $home_setting = isJson($settings['social_sites']) ? json_decode($settings['social_sites'], TRUE) : ''; ?>
<!-- <div id="preloader"></div> -->
<div class="home_page_navbar" id="headers">
    <div class="homeTopMenu">
        <ul class="left_top_menu">
            <?php if (!empty($settings['site_name'])) : ?>
                <li><a href="<?= base_url(); ?>"><i class="icofont-web"></i>
                        <?= isset($settings['site_name']) && !empty($settings['site_name']) ? html_escape($settings['site_name']) : ""; ?></a>
                </li>
            <?php endif; ?>
            <?php if (!empty($home_setting['phone'])) : ?>
                <li><a href="<?= redirect_url(html_escape($home_setting['phone']), 'phone'); ?>"><i class="icofont-phone"></i>
                        <?= isset($home_setting['phone']) && !empty($home_setting['phone']) ? html_escape($home_setting['phone']) : ""; ?></a>
                </li>
            <?php endif; ?>
            <?php if (!empty($settings['smtp_mail'])) : ?>
                <li><a href="<?= redirect_url(html_escape($settings['smtp_mail']), 'email'); ?>"><i class="icofont-email"></i>
                        <?= isset($settings['smtp_mail']) && !empty($settings['smtp_mail']) ? html_escape($settings['smtp_mail']) : ""; ?></a>
                </li>
            <?php endif; ?>
        </ul>
        <ul class="right_top_menu">
            <?php if (!empty($home_setting['facebook'])) : ?>
                <li><a href="<?= redirect_url($home_setting['facebook'], 'facebook'); ?>"><i class="fa fa-facebook"></i></a>
                </li>
            <?php endif; ?>

            <?php if (!empty($home_setting['instagram'])) : ?>
                <li><a href="<?= redirect_url($home_setting['instagram'], 'instagram'); ?>"><i class="fa fa-instagram "></i></a></li>
            <?php endif; ?>

            <?php if (!empty($home_setting['whatsapp'])) : ?>
                <li><a href="<?= redirect_url($home_setting['whatsapp'], 'whatsapp'); ?>"><i class="fa fa-whatsapp "></i></a>
                </li>
            <?php endif; ?>

            <?php if (!empty($home_setting['linkedin'])) : ?>
                <li><a href="<?= redirect_url($home_setting['linkedin'], 'linkedin'); ?>"><i class="fa fa-linkedin "></i></a>
                </li>
            <?php endif; ?>
        </ul>
    </div>

    <nav class="navbar navbar-expand-lg navbar-light bg-light homeMenuNav">
        <div class="container">
            <a class="navbar-brand" href="<?= base_url(); ?>"><img src="<?= base_url(!empty($settings['logo']) ? $settings['logo'] : "assets/frontend/images/logo-example.png"); ?>" class="logo" alt=""></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <?php $ref_id = isset($_GET['ref']) && !empty($_GET['ref']) ? '?ref=' . $_GET['ref'] : ''; ?>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <div class="custom_menu">
                    <ul class="navbar-nav">
                        <li class="nav-item <?= isset($page_title) && $page_title == 'Home' ? 'active' : ''; ?>">
                            <a class="nav-link" href="<?= base_url($ref_id); ?>"><?= !empty(html_escape(lang('home'))) ? html_escape(lang('home')) : "Home"; ?>
                                <span class="sr-only">(current)</span></a>
                        </li>
                        <?php if (!empty(section_name('pricing')) && section_name('pricing')['status'] == 1 && $settings['is_registration'] == 1) : ?>
                            <li class="nav-item <?= isset($page_title) && $page_title == 'Pricing' ? 'active' : ''; ?>">
                                <a class="nav-link" href="<?= base_url('pricing') . $ref_id; ?>"><?= !empty(html_escape(lang('pricing'))) ? html_escape(lang('pricing')) : "pricing"; ?></a>
                            </li>
                        <?php endif; ?>
                        <?php if (!empty(section_name('reviews')) && section_name('reviews')['status'] == 1) : ?>
                            <?php if ($this->common_m->total_rating() > 0) : ?>
                                <li class="nav-item <?= isset($page_title) && $page_title == 'Reviews' ? 'active' : ''; ?> hidden">
                                    <a class="nav-link" href="<?= base_url('reviews'); ?>"><?= !empty(html_escape(lang('reviews'))) ? html_escape(lang('reviews')) : "reviews"; ?></a>
                                </li>
                            <?php endif; ?>
                        <?php endif; ?>


                        <?php if ($settings['is_user'] == 1) : ?>
                            <?php if ($this->common_m->count_total_user() > 0) : ?>
                                <li class="nav-item <?= isset($page_title) && $page_title == 'Users' ? 'active' : ''; ?>">
                                    <a class="nav-link" href="<?= base_url('users'); ?>"><?= !empty(html_escape(lang('users'))) ? html_escape(lang('users')) : "users"; ?></a>
                                </li>
                            <?php endif; ?>
                        <?php endif; ?>

                        <?php if (isset($settings['restaurant_demo'])  && !empty($settings['restaurant_demo']) == 1) : ?>
                            <li class="nav-item <?= isset($page_title) && $page_title == 'Demo' ? 'active' : ''; ?>">
                                <a class="nav-link" href="<?= url($settings['restaurant_demo']); ?>"><?= lang('demo'); ?></a>
                            </li>
                        <?php endif; ?>

                        <?php if (!empty(section_name('contacts')) && section_name('contacts')['status'] == 1) : ?>
                            <li class="nav-item <?= isset($page_title) && $page_title == 'Contacts' ? 'active' : ''; ?>">
                                <a class="nav-link" href="<?= base_url('contacts') . $ref_id; ?>"><?= !empty(html_escape(lang('contacts'))) ? html_escape(lang('contacts')) : "contacts"; ?></a>
                            </li>
                        <?php endif; ?>

                        <?php if (isset($settings['language_type']) && $settings['language_type'] == 'google') : ?>
                            <li class="gLanguage p-r nav-link">
                                <div class="admin_gtranslate_wrapper glanguageList"></div>
                            </li>
                        <?php else : ?>

                            <?php if (isset($settings['is_lang_list']) && $settings['is_lang_list'] == 1) : ?>
                                <?php $languages = $this->admin_m->select_with_status('languages'); ?>
                                <?php if (sizeof($languages) > 1) : ?>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fi fi-<?= !empty(auth('site_lang')) && auth('site_lang') === 'english' ? 'gb' : (auth('site_lang') === 'fa' ? 'ir' : (auth('site_lang') === 'ar' ? 'sa' : auth('site_lang'))) ?>"></i>&nbsp;
                                            <?php foreach ($languages as $language) : ?>
                                                <?php if (auth('site_lang') === $language['slug']): ?>
                                                    <?= ucfirst($language['lang_name']); ?>
                                                    <?php break; ?>
                                                <?php endif; ?>
                                            <?php endforeach; ?>

                                        </a>
                                        <div class="dropdown-menu languageDropdown" aria-labelledby="navbarDropdown">

                                            <?php foreach ($languages as $key => $language) : ?>
                                                <a class="dropdown-item" href="<?= base_url('home/website_lang/' . $language['slug']) . $ref_id; ?>">
                                                    <span class="mr-2 <?= $language['slug'] === 'ar' ? 'fi fi-sa' : ($language['slug'] === 'fa' ? 'fi fi-ir' : ($key === 0 ? 'fi fi-gb' : 'fi fi-' . $language['slug']))
                                                                        ?>"></span><?= $language['lang_name']; ?>
                                                </a>
                                            <?php endforeach ?>

                                        </div>
                                    </li>
                                <?php endif ?>
                            <?php endif; ?>
                        <?php endif ?>
                    </ul>
                    <div class="right_bar my-2 my-lg-0">
                        <div class="login_signup">
                            <?php if ($settings['is_registration'] == 1) : ?>
                                <?php if ($settings['is_signup'] == 1) : ?>

                                    <?php if (empty($ref_id)) : ?>
                                        <a href="<?= base_url('sign-up') . $ref_id; ?>"><i class="fa fa-user-plus"></i>
                                            &nbsp;<?= !empty(html_escape(lang('sign-up'))) ? html_escape(lang('sign-up')) : "Signup"; ?></a>
                                    <?php else : ?>
                                        <a href="<?= base_url('pricing') . $ref_id; ?>"><i class="fa fa-user-plus"></i>
                                            &nbsp;<?= !empty(html_escape(lang('sign-up'))) ? html_escape(lang('sign-up')) : "Signup"; ?></a>
                                    <?php endif; ?>

                                <?php endif; ?>

                            <?php endif; ?>

                            <?php if (auth('is_login') == TRUE && (auth('user_role') == 0 || auth('user_role') == 1)) : ?>
                                <a href="<?= base_url('dashboard'); ?>" class="create_profile"> <i class="icofont-dashboard "></i>
                                    &nbsp;<?= !empty(html_escape(lang('dashboard'))) ? html_escape(lang('dashboard')) : "Dashboard"; ?></a>
                            <?php else : ?>
                                <a href="<?= base_url('login'); ?>" class="create_profile"> <i class="fa fa-sign-in"></i>
                                    &nbsp;<?= !empty(html_escape(lang('login'))) ? html_escape(lang('login')) : "Login"; ?></a>
                            <?php endif; ?>
                        </div>

                    </div>
                </div>
            </div>
        </div><!-- container -->
    </nav>
    <button onclick="scrollToTop()" id="scrollToTopBtn" title="Go to top">
        <a href="javascript:;" class="bounce"><i class="fa fa-chevron-up"></i></a>
    </button>
    <?php if (!empty($home_setting['whatsapp'])): ?>
        <!-- WhatsApp Floating Button -->
        <a href="<?= redirect_url($home_setting['whatsapp'], 'whatsapp', admin()->dial_code, base_url()); ?>" target="_blank"
            style="position: fixed; bottom: 20px; right: 20px; background-color: #25D366; color: white; border-radius: 50%; width: 60px; height: 60px; display: flex; align-items: center; justify-content: center; box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2); z-index: 1000;">
            <i class="fab fa-whatsapp" style="font-size: 30px;"></i>
        </a>
    <?php endif; ?>


</div>