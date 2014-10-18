<?php

namespace Plugin\Products;

class Event
{
    public static function ipBeforeController()
    {
        ipAddCss('assets/style.css');
        //ipAddJs('assets/application.js');
    }
}
