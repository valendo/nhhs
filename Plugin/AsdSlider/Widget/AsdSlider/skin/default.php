<?php if( !empty( $images ) ): ?>
    <div class="asdSlider_container" id="asdSlider_<?php echo $widgetId; ?>">
        <?php foreach ($images as $imageKey => $image) { ?>
            <div class="asdSlider_item ipsItem">
                <a
                    <?php if ($image['type'] == 'lightbox' && !ipIsManagementState()) { ?>
                        rel="lightbox"
                        href="<?php echo escAttr($image['imageBig']); ?>"
                    <?php } ?>
                    <?php if ($image['type'] == 'link') { ?>
                        href="<?php echo escAttr($image['url']); ?>"
                        <?php echo $image['blank'] ? ' target="_blank" ' : ''; ?>
                    <?php } ?>
                    class="asdSlider_link"
                    data-description="<?php echo isset($image['description']) ? escAttr($image['description']) : ''; ?>"
                    title="<?php echo esc($image['title']); ?>"
                    >
                    <img class="asdSlider_image ipsImage" src="<?php echo escAttr($image['imageSmall']); ?>" title="<?php echo esc($image['title']); ?>" alt="<?php echo escAttr($image['title']); ?>" />
                </a>
            </div>
        <?php } ?>
    </div>
<?php elseif(ipIsManagementState()): ?>
    <div class="empty-slider <?php if (!empty($images)) { echo 'hide'; } ?>">
        <h1 class="text-center">It is ASD Slider Widget.</h1>
        <p class="text-center">Please add your first image.</p>
    </div>
<?php endif; ?>
<?php if( !ipIsManagementState() ): ?>
    <script type="text/javascript">
        if( asdSliderList == undefined ) {
            var asdSliderList = [];
        }

        asdSliderList.push({
            'options':{
                'mode' : '<?php echo !empty( $options['mode'] ) ? $options['mode'] : 'horizontal'; ?>',
                'captions' : parseInt(<?php echo !empty( $options['captions'] ) ? $options['captions'] : 0; ?>),
                'page' : parseInt(<?php echo !empty( $options['pagination'] ) ? $options['pagination'] : 0; ?>)
            },
            'id' : 'body #asdSlider_<?php echo $widgetId; ?>'
        });
    </script>
<?php endif; ?>