<h3><?php echo $category ?></h3>
<div class="row">

    <?php
    foreach($products as $product)
    {
        $options = array(
            'type' => 'width',
            'width' => '200',
            'forced' => true
        );
        $picture = ipFileUrl(ipReflection($product["picture"], $options));
        $productUrl = ipHomeUrl() . "thuc-don/"
            . Plugin\Products\Widget\CategoryList\Controller::url_slug($category) . "/"
            . Plugin\Products\Widget\CategoryList\Controller::url_slug($product["name"])
            . "/" . $product["id"];
    ?>
    <div class="col-md-4">
        <div class="thumbnail">
            <a href="<?php echo $productUrl ?>"><img alt="300x200" src="<?php echo $picture ?>"></a>

            <div>
                <h5 style="text-align: center;min-height:40px;">
                    <?php echo $product["name"] ?>
                </h5>
                <p style="text-align: right;">
                    <a class="btn-link" href="<?php echo $productUrl ?>">Xem chi tiết</a>
                </p>
            </div>
        </div>
    </div>
    <?php } ?>
</div>