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
