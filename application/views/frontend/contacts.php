<?php $contacts = get_by_section_name('contacts'); ?>
<?php $settings = settings(); ?>

<?php if (!empty($contacts) && $contacts['status'] == 1): ?>
  <!-- <section class="profile home_contact homeSection" id="contacts">
    <div class="container">
      <div class="contact_content">
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
                <button type="submit" class="btn btn-info c_btn mail_send_btn custom_btn"> <?= !empty(lang('send')) ? lang('send') : "send"; ?> &nbsp;<i class="fas fa-angle-double-right"></i></button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section> -->
  <style>
    .homeTopBanner{
      min-height: 75vh !important;
    }
  </style>
  <div class="homeTopBanner"  id="contacts">
    <div class="container mt-5">
      <div class="row mt-3">
        <div class="col-5 mt-5 topSectionImg">
          <div class="homeLeftImg">
            <img src="<?= base_url('uploads/site_banners/flyerImage.png')  ?>" alt="home banner">
          </div>
        </div>
        <div class="col-7 mt-5 topSectionText">
          <div class="bannerTextArea text-center">
            <h1 class="bannerTitle"><?= html_escape($contacts['heading']); ?><span> <?= html_escape($settings['site_name']); ?></span></h1>
            <p class="bannerHeadline mt-3"><?= html_escape($contacts['sub_heading']); ?></p>
          </div>
          <div class="formDiv mt-3">
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
                    <button type="submit" class="btn btn-info c_btn mail_send_btn custom_btn w-100"> <?= !empty(lang('send')) ? lang('send') : "send"; ?> &nbsp;<i class="fas fa-angle-double-right"></i></button>
                  </div>
                </div>
              </form>
            </div>
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
<?php endif; ?>