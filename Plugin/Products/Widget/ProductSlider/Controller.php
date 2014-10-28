<?php
namespace Plugin\Products\Widget\ProductSlider;

class Controller extends \Ip\WidgetController
{
    public function getTitle()
    {
        return 'Product Slider';
    }

    public function generateHtml($revisionId, $widgetId, $data, $skin)
    {
    	$products = ipDb()->selectAll('product', '*', array('option1' => true));

        $data = array ('products' => $products);
 
        return parent::generateHtml($revisionId, $widgetId, $data, $skin);
    }
}