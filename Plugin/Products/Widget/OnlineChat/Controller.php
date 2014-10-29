<?php
namespace Plugin\Products\Widget\OnlineChat;

class Controller extends \Ip\WidgetController
{
    public function getTitle()
    {
        return 'Online Chat';
    }

    public function generateHtml($revisionId, $widgetId, $data, $skin)
    {
        return parent::generateHtml($revisionId, $widgetId, $data, $skin);
    }

    public function adminHtmlSnippet()
    {
        return ipView('snippet/edit.php')->render();
    }
}