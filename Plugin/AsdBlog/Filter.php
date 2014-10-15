<?php

namespace Plugin\AsdBlog;

class Filter {
    public static function ipWidgetManagementMenu($optionsMenu,$widgetRecord)
    {
        if( $widgetRecord['name'] == 'AsdBlogList' ) {
            $optionsMenu[] = array(
                'title' => __( 'Settings', 'AsdBlogWidget', false ),
                'attributes' => array(
                    'class' => '_edit ipsWidgetEdit',
                )
            );
        }
        return $optionsMenu;
    }
}