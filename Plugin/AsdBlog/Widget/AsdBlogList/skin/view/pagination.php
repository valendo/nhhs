<?php $pageCount = ceil( $count / $limit ); ?>
<?php if( $pageCount > 1 ): ?>
    <div class="asdBlog-pagination">
        <ul>
            <?php if( $type == 3 || $type == 2 ): ?>
                <?php if( $page-1 > 0 ): ?>
                    <li><a href="?page=<?php echo $page-1; ?>"><?php echo __( '&laquo; Previous', 'AsdBlog', false ); ?></a></li>
                <?php endif; ?>
            <?php endif; ?>
            <?php if( $type == 3 || $type == 1 ): ?>
                <?php for( $i=1;$i<=$pageCount;$i++ ): ?>
                    <?php if( $i==$page ): ?>
                        <li class="active"><?php echo $i; ?></li>
                    <?php else: ?>
                        <li><a href="?page=<?php echo $i; ?>"><?php echo $i; ?></a></li>
                    <?php endif; ?>
                <?php endfor; ?>
            <?php endif; ?>
            <?php if( $type == 3 || $type == 2 ): ?>
                <?php if( $page+1 <= $pageCount ): ?>
                    <li><a href="?page=<?php echo $page+1; ?>"><?php echo __( 'Next &raquo;', 'AsdBlog', false ); ?></a></li>
                <?php endif; ?>
            <?php endif; ?>
        </ul>
    </div>
<?php endif; ?>
