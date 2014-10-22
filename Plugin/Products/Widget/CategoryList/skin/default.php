<div class="panel-group" id="panel-995554">
    <?php
    foreach ($categories as $category) {
        $products = ipDb()->selectAll('product', '*', array('categoryId' => $category["id"]));
        if (count($products) > 0) {
            $categoryUrl = ipHomeUrl() . "thuc-don/"
                . Plugin\Products\Widget\CategoryList\Controller::url_slug($category["name"])
                . "/" . $category["id"];
            ?>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <a class="panel-title" href="<?php echo $categoryUrl ?>"><?php echo $category["name"] ?></a>
                </div>
                <div id="panel-element-603094" class="panel-collapse collapse in">
                    <div class="panel-body">
                        <?php
                        foreach ($products as $product) {
                            $productUrl = ipHomeUrl() . "thuc-don/"
                                . Plugin\Products\Widget\CategoryList\Controller::url_slug($category["name"]) . "/"
                                . Plugin\Products\Widget\CategoryList\Controller::url_slug($product["name"])
                                . "/" . $product["id"];
                            ?>
                            <div><a href="<?php echo $productUrl ?>"><?php echo $product["name"] ?></a></div>
                        <?php } ?>
                    </div>
                </div>
            </div>
        <?php }
    } ?>
</div>
