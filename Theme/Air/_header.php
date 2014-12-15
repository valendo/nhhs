<?php echo ipDoctypeDeclaration(); ?>
<html<?php echo ipHtmlAttributes(); ?>>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta property="og:title"
          content="NHÀ HÀNG HOA SƠN" />
    <meta property="og:url"
          content="http://www.nhahanghoason.com" />
    <meta property="og:description"
          content="Địa chỉ : Đường 12C, khu Quèn Ổi, xã Ninh Hòa, huyện Hoa Lư, tỉnh Ninh Bình." />
    <?php ipAddCss('assets/theme.css'); ?>
    <?php ipAddCss('assets/style.css'); ?>
    <?php echo ipHead(); ?>
    <script src="<?php echo ipThemeUrl("assets/jquery-1.11.0.min.js"); ?>" ></script>
    <script src="https://apis.google.com/js/platform.js" async defer></script>
</head>
<body>
<div class="wrapper clearfix">
    <header class="clearfix col_12">
<!--        --><?php //echo ipSlot('logo'); ?>
        <div class="logo"><a href="<?php echo ipHomeUrl() ?>"><img src="<?php echo ipThemeUrl("assets/img/logo.png"); ?>"/></a></div>
        <div>
<!--            <div class="socials">-->
<!--                <a href="http://facebook.com" target="_blank" class="fa fa-facebook"></a>-->
<!--            </div>-->
            <span class="currentPage"><?php echo esc(ipContent()->getCurrentPage() ? ipContent()->getCurrentPage()->getTitle() : ''); ?></span>
<!--            <a href="#" class="topmenuToggle">&nbsp;</a>-->
            <div class="topmenu">
                <?php echo ipSlot('menu', 'menu1'); ?>
                <?php if (count(ipContent()->getLanguages()) > 1) { ?>
                    <div class="languages">
                        <?php echo ipSlot('languages'); ?>
                    </div>
                <?php } ?>
                <div class="hotline">Hotline: 0986 711 048</div>
                <div class="g_plus">
                    <div class="g-plusone" data-href="http://www.nhahanghoason.com"></div>
                </div>
                <div class="facebook">
                    <iframe src="//www.facebook.com/plugins/like.php?href=http%3A%2F%2Fwww.nhahanghoason.com&amp;width&amp;layout=button_count&amp;action=like&amp;show_faces=true&amp;share=true&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:150px; height:21px;" allowTransparency="true"></iframe>
                </div>
            </div>
        </div>
    </header>
