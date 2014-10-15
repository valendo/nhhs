<?php

namespace Plugin\AsdBlog;

class Event
{
    public static function ipBeforeController()
    {
        ipAddCss('Plugin/AsdBlog/assets/css/style.css');
    }
    
    public static function ipPageAdded( $row ) {
        ipPageStorage( $row['id'] )->set( 'asdBlog-date', date( 'Y-m-d', time() ) );
        ipPageStorage( $row['id'] )->set( 'asdBlog-time', date( 'H:i:s', time() ) );
    }
}
