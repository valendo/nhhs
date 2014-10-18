<?php
namespace Plugin\Products\Widget\CategoryList;

class Controller extends \Ip\WidgetController
{
    public function getTitle()
    {
        return 'Category List';
    }

    public function generateHtml($revisionId, $widgetId, $data, $skin)
    {
    	$rootCategories = ipDb()->selectAll('productCategory', '*', array('parentId' => -1));
        $categoriesList = array();
        foreach ($rootCategories as $rootCategory) {
            array_push($categoriesList, array('parentId' => $rootCategory['parentId'],'id' => $rootCategory['id'], 'name' => $rootCategory['name']));
            $categories = ipDb()->selectAll('productCategory', '*', array('parentId' => $rootCategory['id']));
            foreach ($categories as $category) {
                array_push($categoriesList, array('parentId' => $category['parentId'],'id' => $category['id'],'name' => $category['name']));
            }
        }
        $data = array ('categories' => $categoriesList);
 
        return parent::generateHtml($revisionId, $widgetId, $data, $skin);
    }
}