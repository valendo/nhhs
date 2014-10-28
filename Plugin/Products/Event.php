<?php

namespace Plugin\Products;

class Event
{
    public static function ipBeforeController()
    {
        ipAddCss('assets/style.css');
        ipAddCss('assets/slick/slick.css');

        ipAddJs('assets/slick/slick.js');
    }
}
