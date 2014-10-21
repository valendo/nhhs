<div class="categories-menu">
	<?php 
		foreach ($categories as $category) {
            $products = ipDb()->selectAll('product', '*', array('categoryId' => $category["id"]));
            if(count($products) > 0)
            {
                $categoryUrl = ipHomeUrl() . "thuc-don/"
                    . Plugin\Products\Widget\CategoryList\Controller::url_slug($category["name"])
                    . "/" . $category["id"];
                echo "<div class='main-category'><a href='" . $categoryUrl . "'>" . $category["name"] . "</a></div>";
                foreach ($products as $product) {
                    $productUrl = ipHomeUrl() . "thuc-don/"
                        . Plugin\Products\Widget\CategoryList\Controller::url_slug($category["name"]) . "/"
                        . Plugin\Products\Widget\CategoryList\Controller::url_slug($product["name"])
                        . "/" . $product["id"];
                    echo "<div class='sub-category'><a href='" . $productUrl . "'>" . $product["name"] . "</a></div>";
                }
            }
		}
	?>
</div>