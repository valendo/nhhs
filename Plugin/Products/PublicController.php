<?php


namespace Plugin\Products;


class PublicController extends \Ip\Controller
{
    public function category($category = null, $id = null)
    {
        // Uncomment to include assets
        // ipAddJs('assets/application.js');
        // ipAddCss('assets/application.css');

        $products = ipDb()->selectAll('product', '*', array('categoryId' => $id));
        $category = ipDb()->selectRow('productCategory', '*', array('id' => $id));

        $data = array(
            'category' => $category['name'],
            'products' => $products
        );

        //change the layout if you like
        //ipSetLayout('home.php');

        return ipView('view/category.php', $data);
    }

    public function product($id = null)
    {
        // Uncomment to include assets
        // ipAddJs('assets/application.js');
        // ipAddCss('assets/application.css');
        $product = ipDb()->selectRow('product', '*', array('id' => $id));
        $data = array(
            'product' => $product
        );

        //change the layout if you like
        //ipSetLayout('home.php');

        return ipView('view/product.php', $data);
    }



}
