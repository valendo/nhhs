<?php


namespace Plugin\Products;


class PublicController extends \Ip\Controller
{
    public function category( $id = null)
    {
        // Uncomment to include assets
        // ipAddJs('assets/application.js');
        // ipAddCss('assets/application.css');

        $data = array(
            'id' => $id
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

        $data = array(
            'id' => $id
        );

        //change the layout if you like
        //ipSetLayout('home.php');

        return ipView('view/product.php', $data);
    }



}
