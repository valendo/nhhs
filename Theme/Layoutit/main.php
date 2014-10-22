<?php echo ipView('_header.php')->render(); ?>
<div class="row clearfix">
    <div class="col-md-3 column">
        <?php echo ipBlock('side1')->asStatic()->render(); ?>
    </div>
    <div class="col-md-9 column">
        <?php echo ipBlock('main')->render(); ?>
    </div>
</div>
<?php echo ipView('_footer.php')->render(); ?>
