<div class="custom-heading"><?php echo $category ?></div>

<?php
foreach ($products as $product) {
    $options = array(
        'type' => 'width',
        'width' => '300',
        'forced' => true
    );
    $picture = ipFileUrl(ipReflection($product["picture"], $options));
    $productUrl = ipHomeUrl() . "thuc-don/"
        . Plugin\Products\Widget\CategoryList\Controller::url_slug($category) . "/"
        . Plugin\Products\Widget\CategoryList\Controller::url_slug($product["name"])
        . "/" . $product["id"];
    ?>
    <div class="col_lg_3">
        <div class="product-item">
            <div>
                <a href="<?php echo $productUrl ?>">
                    <img style="width:100%;" alt="300x200" src="<?php echo $picture ?>"/>
                </a>
            </div>
            <h4 style="min-height:30px;">
                <?php echo $product["name"] ?>
            </h4>

            <p style="text-align: right;">
                <a class="btn-link" href="<?php echo $productUrl ?>">Xem chi tiết</a>
            </p>
        </div>
    </div>
<?php } ?>