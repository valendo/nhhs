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
            <img alt="300x200" src="<?php echo $picture ?>">

            <div class="caption">
                <h3>
                    <?php echo $product["name"] ?>
                </h3>

                <p>
                    <?php echo $product["summary"] ?>
                </p>

                <p>
                    <a class="btn btn-primary" href="<?php echo $productUrl ?>">Action</a>
                </p>
            </div>
        </div>
    </div>
    <?php } ?>
</div>