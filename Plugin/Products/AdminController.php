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
     * @ipSubmenu Thực đơn
     */
    public function index(){
        $rootCategories = ipDb()->selectAll('productCategory', '*', array('parentId' => null));
        $categoriesSelect = array();
        foreach ($rootCategories as $rootCategory) {
            array_push($categoriesSelect, array($rootCategory['id'], $rootCategory['name']));
        }

        $config = array(
            'title' => 'Thực đơn',
            'table' => 'product',
            'deleteWarning' => 'Are you sure?',
            'createPosition' => 'top',
            'pageSize' => 100,
            'fields' => array(
                array(
                    'label' => 'Thông tin',
                    'type' => 'Tab',
                    'preview' => false
                ),
                array(
                    'type' => 'RepositoryFile',
                    'label' => 'Hình',
                    'showInList' => true,
                    'field' => 'picture',
                    'preview' => __CLASS__ . '::previewPicture'
                ),
                array(
                    'label' => 'Tên món ăn',
                    'field' => 'name',
                    'validators' => array('Required')
                ),
//                array(
//					'type' => 'textarea',
//                    'label' => 'Summary',
//                    'field' => 'summary',
//					'preview' => false
//                ),
               array(
                   'type' => 'Select',
                   'label' => 'Loại',
                   'field' => 'categoryID',
                   'values' => $categoriesSelect
                ),
                array(
                    'type' => 'Checkbox',
                    'label' => 'Món mới',
                    'showInList' => true,
                    'field' => 'option1'
                ),
                array(
                    'type' => 'Checkbox',
                    'label' => 'Món đặc sản',
                    'showInList' => true,
                    'field' => 'option2'
                ),
                array(
                    'label' => 'Nội dung',
                    'type' => 'Tab',
                    'preview' => false
                ),
                array(
                    'type' => 'RichText',
                    'label' => 'Nội dung',
                    'field' => 'content',
                    'preview' => false
                )
            )
        );
		return ipGridController($config);
        //return $html;
    }
	
	/**
     * @ipSubmenu Phân loại
     */
	public function submenu()
    {
		$config = array(
            'title' => 'Các loại món',
            'table' => 'productCategory',
            'createPosition' => 'top',
            'pageSize' => 50,
            'fields' => array(
                array(
                    'label' => 'Tên loại món ăn',
                    'field' => 'name',
                    'validators' => array('Required')
                )
            )
        );
        return ipGridController($config);
    }

    public static function previewPicture($value, $recordData)
    {
        $options = array(
            'type' => 'width',
            'width' => 100,
            'forced' => true
        );
        $picture = esc($recordData['picture']);
        if($picture !== '' && $picture !== null)
        {
            $picture = ipFileUrl(ipReflection($picture, $options));
        }
        else
        {
            $picture = ipThemeUrl("assets/img/no-image.png");
        }

        return '<img style="width:100px;" src="' . $picture . '" />' ;
    }

}