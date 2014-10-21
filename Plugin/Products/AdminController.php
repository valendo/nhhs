<?php
/**
 * Created by PhpStorm.
 * User: Marijus
 * Date: 3/20/14
 * Time: 11:22 AM
 */

namespace Plugin\Products;


class AdminController
{
	/**
     * @ipSubmenu Products
     */
    public function index(){
        $rootCategories = ipDb()->selectAll('productCategory', '*', array('parentId' => null));
        $categoriesSelect = array();
        foreach ($rootCategories as $rootCategory) {
            array_push($categoriesSelect, array($rootCategory['id'], $rootCategory['name']));
            $categories = ipDb()->selectAll('productCategory', '*', array('parentId' => $rootCategory['id']));
            foreach ($categories as $category) {
                array_push($categoriesSelect, array($category['id'], '----' . $category['name']));
            }
        }

        $config = array(
            'title' => 'Product List',
            'table' => 'product',
            'deleteWarning' => 'Are you sure?',
            'createPosition' => 'top',
            'pageSize' => 100,
            'fields' => array(
                array(
                    'label' => 'Info',
                    'type' => 'Tab',
                    'preview' => false
                ),
                array(
                    'type' => 'RepositoryFile',
                    'label' => 'Picture',
                    'showInList' => true,
                    'field' => 'picture',
                    'preview' => __CLASS__ . '::previewPicture'
                ),
                array(
                    'label' => 'Name',
                    'field' => 'name',
                    'validators' => array('Required')
                ),
                array(
					'type' => 'textarea',
                    'label' => 'Summary',
                    'field' => 'summary',
					'preview' => false
                ),
               array(
                   'type' => 'Select',
                   'label' => 'Category',
                   'field' => 'categoryID',
                   'values' => $categoriesSelect
                ),
//                array(
//                    'type' => 'Checkbox',
//                    'label' => 'Option 1',
//                    'showInList' => true,
//                    'field' => 'option1'
//                ),
                array(
                    'label' => 'Content',
                    'type' => 'Tab',
                    'preview' => false
                ),
                array(
                    'type' => 'richtext',
                    'label' => 'Content',
                    'field' => 'content',
                    'preview' => false
                )
            )
        );
		return ipGridController($config);
        //return $html;
    }
	
	/**
     * @ipSubmenu Categories
     */
	public function submenu()
    {
		$config = array(
            'title' => 'Category List',
            'table' => 'productCategory',
            'createPosition' => 'top',
            'pageSize' => 50,
            'fields' => array(
                array(
                    'label' => 'Name',
                    'field' => 'name',
                    'validators' => array('Required')
                )
            )
        );
        return ipGridController($config);
    }

    public static function previewPicture($value, $recordData)
    {
        $picture = esc($recordData['picture']);
        $options = array(
            'type' => 'width',
            'width' => 100,
            'forced' => true
        );
        $picture = ipFileUrl(ipReflection($picture, $options));

        return '<img src="' . $picture . '" />' ;
    }
}