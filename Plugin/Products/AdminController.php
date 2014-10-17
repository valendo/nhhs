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
        $config = array(
            'title' => 'Product List',
            'table' => 'product',
            'deleteWarning' => 'Are you sure?',
            'createPosition' => 'top',
            'pageSize' => 5,
            'fields' => array(
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
                   'values' => array(
                       array(1, 'Category 1'),
                       array(2, 'Category 2')
                   )
                ),
//                array(
//                    'label' => 'Date Modified',
//                    'field' => 'DateModified',
//                ),
                array(
					'type' => 'richtext',
                    'label' => 'Content',
                    'field' => 'content',
					'preview' => false
                ),
                array(
                    'type' => 'Checkbox',
                    'label' => 'Option 1',
                    'showInList' => true,
                    'field' => 'option1'
                ),
                array(
                    'type' => 'RepositoryFile',
                    'label' => 'Picture',
                    'showInList' => true,
                    'field' => 'picture'
                )

            )
        );
		return ipGridController($config);
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
            'pageSize' => 5,
            'fields' => array(
                array(
                    'label' => 'Name',
                    'field' => 'name',
                ),
                array(
                    'type' => 'Select',
                    'label' => 'Parent',
                    'field' => 'parentId',
                    'values' => array(
                        array(1, 'Category 1'),
                        array(2, 'Category 2')
                    )
                )
            )
        );
        return ipGridController($config);
    }
}