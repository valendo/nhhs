<?php

namespace Plugin\AsdBlog\Widget\AsdBlogSeperator;

class Controller extends \Ip\WidgetController
{
    public function getTitle() {
        return __('Seperator', 'AsdBlog', false);
    }

    public function generateHtml( $revisionId, $widgetId, $data, $skin )
    {
        return parent::generateHtml( $revisionId, $widgetId, $data, $skin );
    }
}
