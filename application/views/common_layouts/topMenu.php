  <?php $u_info = get_user_info_by_slug($slug); ?>
  <?php $language = shop_languages($id); ?>
  <?php $glang = glang($id); ?>
  <?php $settings = settings(); ?>
  <?php $shop_info = restaurant($id); ?>
  <?php $page_list = $this->common_m->get_my_page_by($shop['id']); ?>
  <?php $reservations = get_reservations_by_shop_id($shop['user_id']); ?>
  <?php $dayNames = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']; ?>

  <?php if (isset($u_info['menu_style'])) : ?>
    <?php include "include/style_{$u_info['menu_style']}.php"; ?>
  <?php else : ?>
    <?php include "include/style_1.php"; ?>
  <?php endif; ?>
  <!-- style 1 -->






  <!-- cart right sidebar -->
  <div class="shopping_cart style_2">
    <div class="shopping_cart_content">
      <?php include APPPATH . "views/common_layouts/cart_sidebar.php"; ?>
    </div>
  </div>
  <!-- glang -->
  <?php if ($shop['is_language'] == 1) : ?>
    <?php if (isset($glang['is_glang']) && $glang['is_glang'] == 1) : ?>
      <ul class="shopGlang allow-lg">
        <li class="gLanguage  menuStyle_<?= $u_info['menu_style']; ?>">
          <div class="gtranslate_wrapper glanguageList"></div>
        </li>
      </ul>
    <?php endif; ?>
  <?php endif; ?>

  <?php if (isset($page) && $page == 'Profile') : ?>
    <!-- cart notify / cart added msg -->
    <div class="cartNotify_wrapper <?= $this->cart->total_items() > 0 ? "active" : ""; ?> ">
      <?php include VIEWPATH . 'layouts/ajax_add_to_cart_notify.php' ?>
    </div>
    <!-- cart notify -->
  <?php endif; ?>


  <!-- Modal topMenu-->
  <div class="modal fade itemPopupModal" id="itemModal" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document" id="item_details">

    </div>
  </div>




  <!-- Modal -->
  <div class="modal fade" id="orderModal" data-backdrop="static">
    <div class="modal-dialog  modal-lg" role="document">
      <div class="modal-content" id="showOrderModal">

      </div>
    </div>
  </div>

  <!--  -->
  <div class="modal" id="closeModal">
    <div class="modal-dialog">
      <div class="modal-content">

        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title"><?= lang('alert'); ?></h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>

        <!-- Modal body -->
        <div class="modal-body">
          <div class="closeShop">
            <i class="fa fa-frown fa-2x"></i>
            <div class="mt-10">
              <h4><?= !empty(lang('sorry_we_are_closed')) ? lang('sorry_we_are_closed') : "Sorry We are closed"; ?></h4>
              <p class="mt-5"><?= !empty(lang('please_check_the_available_list')) ? lang('please_check_the_available_list') : "please check the available list"; ?> <a href="#availableDays" class="f-color ml-10" data-toggle="modal"> <i class="fa fa-calendar-minus-o fz-20"></i></a></p>
            </div>
          </div>
        </div>

        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal"><?= lang('close'); ?></button>
        </div>

      </div>
    </div>
  </div>

  <?php include APPPATH . "views/layouts/waiterModal.php"; ?>


  <!-- Bottom Navbar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-bottom d-lg-none" id="mobileNav">
    <ul class="navbar-nav mx-auto d-flex flex-row justify-content-between" style="gap:43px;position: relative;top: -3px;">
      <li class="nav-item">
        <a class="nav-link" href="<?= url($slug); ?>"><i class="icofont-home iconBottom" style="font-size:24px;"></i></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?= url('specialities/' . $slug); ?>"><i class="icofont-sale-discount iconBottom" style="font-size:24px;"></i></a>
      </li>

      <li class="nav-item navCart" data-slug="<?= $slug; ?>">
        <a class="nav-link" href="javascript:;"><i class="fa-solid fa-bag-shopping iconBottom" style="font-size:24px;color:#fff !Important;"><span class="total_price" style="padding-left: 2px;
    border-radius: 4px;
    color: #000;
    position:relative;
    left:3px;
    background: #fff;
    border: 1px solid #ffffff;
    font-size: 12px;"><?= currency_position($this->cart->total(), $shop['id']); ?></span></i></a>
      </li>

      <li class="nav-item">
        <a class="nav-link whatsappIconBtnMobile"> <i class="icofont-brand-whatsapp iconBottom" style="font-size:20px;"></i></a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="<?= url('track-order/' . $slug); ?>"> <i class="icofont-delivery-time iconBottom" style="font-size:27px;"></i></a>
      </li>


    </ul>
  </nav>

  <script>
    $(document).on('click', '.menuToggle', function() {
      $('.customNavsideBar, .commonNav').toggleClass('activeNav');
    });
  </script>