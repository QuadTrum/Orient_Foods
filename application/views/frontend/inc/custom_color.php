<?php
$colors = $settings['site_color'];
$hex_color = hex2rgb($settings['site_color']);
function hex2rgb($color)
{
    list($r, $g, $b) = array(
        $color[0] . $color[1],
        $color[2] . $color[3],
        $color[4] . $color[5]
    );
    $r = hexdec($r);
    $g = hexdec($g);
    $b = hexdec($b);
    return $r . ',' . $g . ',' . $b;
}

function rgbColor($colors, $opacity)
{
    return "rgba({$colors},{$opacity})";
}




?>
<style>
    .home_page_navbar nav li.active a,
    .home_page_navbar nav li a:hover,
    .learn_more_link,
    .features-wrap i {
        color: <?= rgbColor($hex_color, 1);
                ?> !important;
    }

    .right_bar a {
        background: <?= rgbColor($hex_color, .1);
                    ?>;
        color: <?= rgbColor($hex_color, 1);
                ?>;
        border: 1px solid <?= rgbColor($hex_color, 1);
                            ?>;
        border-radius: .5rem;
    }

    .right_bar a.create_profile,
    #hero .btn-get-started:hover {
        background: <?= rgbColor($hex_color, 1);
                    ?>;
        color: #fff;
        border-radius: .5rem;
    }

    .right_bar a.create_profile:hover {
        background: <?= rgbColor($hex_color, .1);
                    ?>;
        color: <?= rgbColor($hex_color, 1);
                ?>;
        border: 1px solid <?= rgbColor($hex_color, 1);
                            ?>;
    }

    .right_bar a:hover {
        background: <?= rgbColor($hex_color, 1);
                    ?>;
        border-color: <?= rgbColor($hex_color, 1);
                        ?>;
        color: #fff;
    }

    #hero .btn-get-started {
        background: <?= rgbColor($hex_color, .4);
                    ?>;
        border: 1px solid <?= rgbColor($hex_color, .4);
                            ?>;
    }

    .home_button .video_play_btn .play-btn {
        background: radial-gradient(<?= rgbColor($hex_color, 1); ?> 50%, <?= rgbColor($hex_color, .4); ?> 52%);
    }

    .home_button .video_play_btn .play-btn::before {
        border: 5px solid <?= rgbColor($hex_color, .7);
                            ?>;
    }

    .home_button .video_play_btn:hover {
        border: 1px solid <?= rgbColor($hex_color, .7);
                            ?>;
    }

    button.btn.btn-primary.c_btn {
        background: <?= rgbColor($hex_color, 1);
                    ?>;
        border-color: <?= rgbColor($hex_color, 1);
                        ?>;
    }

    .form-group.resturant_name button {
        background: <?= rgbColor($hex_color, 1);
                    ?>;
    }

    h2.heading-text::before,
    .slider-nav .slick-arrow {
        background: <?= rgbColor($hex_color, 1);
                    ?>;
    }

    .single_serivce_area:hover {
        box-shadow: 0px 5px 0px <?= rgbColor($hex_color, 1);
                                ?>;
    }

    .arrow_down::after,
    .arrow_up::after,
    .left_footer p a,
    ul.row_ul li a i {
        color: <?= rgbColor($hex_color, 1);
                ?>;
    }

    .pricing_3 .btn.price_btn {
        background: <?= rgbColor($hex_color, 1);
                    ?>;
        border-color: <?= rgbColor($hex_color, 1);
                        ?>;
        border-radius: 10rem !important;
    }

    .resaurantDemo,
    .topSigin .btn-info,
    .login_wrapper .btn-info {
        background: <?= rgbColor($hex_color, 1);
                    ?> !important;
        border-color: <?= rgbColor($hex_color, 1);
                        ?>;
    }

    body::-webkit-scrollbar-thumb {
        background-color: <?= rgbColor($hex_color, 1);
                            ?>;
        ;
    }

    a,
    .othersLogin ul li a:hover,
    .left_footer ul li a:hover {
        color: <?= rgbColor($hex_color, 1);
                ?>;
    }

    .pricing-divider,
    .home_pricing .btn-custom,
    button.btn.btn-info.c_btn.mail_send_btn.custom_btn {
        background: <?= rgbColor($hex_color, 1);
                    ?> !important;
    }

    /* dynamic color  */

    .btnFirst:hover,
    .btnTabs:hover {
        background: <?= rgbColor($hex_color, 0.1); ?>;
        color: <?= rgbColor($hex_color, 1); ?>;
        border: 1px solid <?= rgbColor($hex_color, 1); ?>;
    }

    .newPriceCard {
        border-top-left-radius: .5rem !important;
        border-top-right-radius: .5rem !important;
        background-color: <?= rgbColor($hex_color, 1); ?>;
    }

    .btnFirst {
        width: 100%;
        font-size: 16px;
        margin-right: 11px;
        padding: 17px 32px !important;
        border-radius: 4px;
        font-weight: 600;
        line-height: 17px;
        text-transform: capitalize;
        transition: all linear .3s;
        color: #fff;
        border-radius: .5rem;
        background-color: <?= rgbColor($hex_color, 1); ?>;
    }

    .form_btn {
        border-radius: .5rem;
        background: <?= rgbColor($hex_color, 1); ?>;
        width: 100%;
        border: 1px solid <?= rgbColor($hex_color, 1); ?>;
    }

    .modulePart li i {
        font-size: 22px;
        color: <?= rgbColor($hex_color, 1); ?>;
    }

    .btnTabs {
        font-weight: 600;
        color: #fff;
        background-color: <?= rgbColor($hex_color, 1); ?>;
        border-radius: 30px;
        border: 1px solid <?= rgbColor($hex_color, 1); ?>;
        padding: 16px 25px;
        font-size: 24px;
    }

    .form_btn:hover {
        background: <?= rgbColor($hex_color, 0.1); ?> !important;
        color: <?= rgbColor($hex_color, 1); ?>;
        border: 1px solid <?= rgbColor($hex_color, 1); ?>;
    }

    .custom_btn {
        border-radius: .5rem;
        border: 1px solid <?= rgbColor($hex_color, 1); ?>;
    }

    .teamSections {
        background-color: #fff !important;
        padding-bottom: 0 !important;
    }

    .section-padding-top {
        padding-top: 12px;
    }

    .section-padding-bottom{
        padding-bottom: 20px;
    }

    section.default {
        padding: 10px 0 !important;
    }

    .page_accordion_header{
        background-color: #fff !important;
    }
    .accordion_content{
        background-color: #fff !important;
    }

    .custom_btn:hover {
        border: 1px solid <?= rgbColor($hex_color, 1); ?>;
    }

    .sction_title::before {
        background: <?= rgbColor($hex_color, 1); ?> !important;
    }


    .newPriceCard h5 {
        color: #fff !important;
        opacity: 16 !important;
    }

    .bannerTitle {
        font-size: 2.5rem;
        font-weight: 600;
        font-family: sans-serif;
        color: #343f52 !important;
        line-height: 1.30;
        word-break: break-word;
    }

    .bannerHeadline {
        font-size: 1.1rem;
        font-family: sans-serif;
        color: gray !important;
        line-height: 1.30;
        word-break: break-word;
    }

    .bannerTextArea {
        text-align: left;
        display: block;
    }

    .homeLeftImg {
        height: 100%;
    }

    .actionBtn {
        width: 100%;
        display: inline-flex;
        gap: 14px;
    }

    .introSection {
        width: 85%;
    }

    .introSection2 {
        width: 100%;
    }

    .introTitle {
        font-size: 2.5rem;
        font-weight: 600;
        font-family: sans-serif;
        color: #343f52 !important;
        line-height: 1.30;
        word-break: break-word;
        margin-bottom: 3rem;
    }

    .introSubHeadline {
        word-spacing: 3px;
        font-size: 1.2rem;
        font-family: sans-serif;
        color: gray !important;
        word-break: break-word
    }

    .section-2 {
        margin-top: 34px;
    }

    .bannerImages {
        margin-right: 20px;
    }

    .moduleMain {
        justify-content: space-evenly;
        align-items: center;
    }

    .moduleHeading {
        text-align: center;
        font-size: 2.5rem;
        font-weight: 600;
        font-family: sans-serif;
        color: #343f52 !important;
        line-height: 1.30;
        word-break: break-word;
        margin-bottom: 4rem;
    }

    .moduleName {
        font-size: 16px;
    }

    .modulePart {
        gap: 25px;
        display: flex;
        flex-direction: column;
    }

    .modulePart li {
        margin-bottom: 28px;
        gap: 12px;
    }

    .modulePart li {
        font-size: 15px;
    }


    .homeLeftImg {
        max-width: 80%;
    }

    .interfaceImg {
        max-width: 70%;
    }

    #phoneNumber {
        width: 100%;
    }

    .iti {
        width: 100%;
    }

    .formDiv {
        max-width: 90%;
    }

    .inputFields {
        background-color: #fff;
        height: 3em;
    }

    .interfaceBtn {
        padding-left: 20px;
        justify-content: center;
        gap: 54px;
    }

    .facebook,
    .whatsapp,
    .linkedin,
    .phone{
        color: #fff !important;
    }
</style>