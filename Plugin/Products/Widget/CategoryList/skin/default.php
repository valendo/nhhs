<!--<div class="panel-group">-->
<!--    --><?php
//    foreach ($categories as $category) {
//        $products = ipDb()->selectAll('product', '*', array('categoryId' => $category["id"]));
//        if (count($products) > 0) {
//            $categoryUrl = ipHomeUrl() . "thuc-don/"
//                . Plugin\Products\Widget\CategoryList\Controller::url_slug($category["name"])
//                . "/" . $category["id"];
//            ?>
<!--            <div class="list-group">-->
<!--                <a href="--><?php //echo $categoryUrl ?><!--" class="list-group-item active">-->
<!--                    --><?php //echo $category["name"] ?>
<!--                </a>-->
<!--                --><?php
//                foreach ($products as $product) {
//                    $productUrl = ipHomeUrl() . "thuc-don/"
//                        . Plugin\Products\Widget\CategoryList\Controller::url_slug($category["name"]) . "/"
//                        . Plugin\Products\Widget\CategoryList\Controller::url_slug($product["name"])
//                        . "/" . $product["id"];
//                    ?>
<!--                    <a href="--><?php //echo $productUrl ?><!--" class="list-group-item">--><?php //echo $product["name"] ?><!--</a>-->
<!--                --><?php //} ?>
<!--            </div>-->
<!--        --><?php //}
//    } ?>
<!--</div>-->

<div class="panel-group">
    <div class="list-group">
        <a href="#" class="list-group-item active">
            THỰC ĐƠN
        </a>
        <?php
        foreach ($categories as $category) {
        $categoryUrl = ipHomeUrl() . "thuc-don/"
            . Plugin\Products\Widget\CategoryList\Controller::url_slug($category["name"])
            . "/" . $category["id"];
        ?>
            <a href="<?php echo $categoryUrl ?>" class="list-group-item"><?php echo $category["name"] ?></a>
        <?php } ?>
    </div>

</div>
