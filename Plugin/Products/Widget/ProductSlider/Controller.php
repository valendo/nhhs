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
    	$newProducts = ipDb()->selectAll('product', '*', array('option1' => true));
        $featureProducts = ipDb()->selectAll('product', '*', array('option2' => true));

        $data = array ('newProducts' => $newProducts, 'featureProducts' => $featureProducts);
 
        return parent::generateHtml($revisionId, $widgetId, $data, $skin);
    }

//    public function adminHtmlSnippet()
//    {
//        return ipView('snippet/edit.php')->render();
//    }
}