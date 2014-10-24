<footer class="clearfix">
    <div class="col_12">
        <div class="col_lg_8">
            <?php echo ipSlot('text', array('id' => 'leftFooter', 'tag' => 'div', 'default' => '', 'class' => 'left')); ?>
        </div>
        <div class="col_lg_4">
            <?php echo ipSlot('text', array('id' => 'rightFooter', 'tag' => 'div', 'default' => '', 'class' => 'left')); ?>
        </div>
    </div>
</footer>
</div>
<?php echo ipAddJs('assets/site.js'); ?>
<?php echo ipJs(); ?>

</body>
</html>
