<?php

namespace Plugin\TinyMceComplete;


class Event
{

    public static function ipBeforeController()
    {
        if (ipAdminId()) {
            ipAddJs('assets/tinymcecomplete.js');
        }
    }

}