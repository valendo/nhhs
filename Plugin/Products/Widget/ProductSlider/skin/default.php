<div class="slider responsive">
    <?php
    foreach ($newProducts as $product) {
        $category = ipDb()->selectRow('productCategory', '*', array('id' => $product['categoryID']));
        $options = array(
            'type' => 'center',
            'width' => '300',
            'height' => '200',
            'forced' => true
        );
        $picture =  ipThemeUrl("assets/img/no-image.png");
        if($product["picture"] !== NULL && $product["picture"] !== "")
        {
            $picture = ipFileUrl(ipReflection($product["picture"], $options));
        }
        $productUrl = ipHomeUrl() . "thuc-don/"
            . Plugin\Products\Widget\CategoryList\Controller::url_slug($category['name']) . "/"
            . Plugin\Products\Widget\CategoryList\Controller::url_slug($product["name"])
            . "/" . $product["id"];
        ?>
        <div class="product-item">
            <div style="margin-bottom: 10px;">
                <a href="<?php echo $productUrl ?>">
                    <img style="width:100%;" alt="300x200" src="<?php echo $picture ?>"/>
                </a>
            </div>
            <h4>
                <?php echo $product["name"] ?>
            </h4>
        </div>
    <?php } ?>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        $('.responsive').slick({
            dots: true,
            infinite: true,
            speed: 300,
            slidesToShow: 3,
            slidesToScroll: 3,
            dots: false,
			autoplay:true,
			autoplaySpeed: 5000,
            responsive: [
                {
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 3
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 2
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1
                    }
                }
            ]
        });
    });

</script>