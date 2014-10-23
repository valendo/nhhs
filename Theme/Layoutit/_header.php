<!DOCTYPE html>
<html<?php echo ipHtmlAttributes(); ?>>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--link rel="stylesheet/less" href="less/bootstrap.less" type="text/css" /-->
    <!--link rel="stylesheet/less" href="less/responsive.less" type="text/css" /-->
    <!--script src="js/less-1.3.3.min.js"></script-->
    <!--append ‘#!watch’ to the browser URL, then refresh the page. -->

    <?php ipAddCss('css/bootstrap.min.css'); ?>
    <?php ipAddCss('css/style.css'); ?>

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <?php echo ipAddJs('js/html5shiv.js'); ?>
    <![endif]-->

    <link rel="shortcut icon" href="img/favicon.png">


    <?php echo ipAddJs('js/bootstrap.min.js'); ?>
    <?php echo ipAddJs('js/scripts.js'); ?>

    <?php echo ipHead(); ?>
</head>

<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1"><span
                            class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                            class="icon-bar"></span><span class="icon-bar"></span></button>
                    <a class="logo" href="#"><img src="<?php echo ipHomeUrl() ?>/theme/layoutit/img/logo.png"/></a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="#">TRANG CHỦ</a>
                        </li>
                        <li>
                            <a href="#">GIỚI THIỆU</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">THỰC ĐƠN<strong
                                    class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">Action</a>
                                </li>
                                <li>
                                    <a href="#">Another action</a>
                                </li>
                                <li>
                                    <a href="#">Something else here</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">TIN TỨC</a>
                        </li>
                        <li>
                            <a href="#">HÌNH ẢNH</a>
                        </li>
                        <li>
                            <a href="#">LIÊN HỆ</a>
                        </li>
                    </ul>
                </div>

            </nav>
        </div>
    </div>
