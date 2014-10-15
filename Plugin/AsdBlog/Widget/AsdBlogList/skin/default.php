<?php if( !empty( $data['pages']['pages'] ) ): ?>
    <?php foreach( $data['pages']['pages'] as $page ): ?>
        <div class="asdBlog-post">
            <h2>
                <?php if( !empty( $data['blog']['options']['titlelink'] ) ): ?>
                    <a href="<?php echo $page['urlPath']; ?>"><?php echo $page['title']; ?></a>
                <?php else: ?>
                    <?php echo $page['title']; ?>
                <?php endif; ?>
            </h2>
            <div class="asdBlog-info-top">
                <?php if( !empty( $data['blog']['info']['date'] ) && $data['blog']['info']['date'] == 1 ): ?>
                    <?php echo date( ipGetOption( 'AsdBlog.dateFormat' ), strtotime( $page['createdAt'] ) ); ?>
                <?php endif; ?>
                <?php if( !empty( $data['blog']['info']['category'] ) && $data['blog']['info']['category'] == 1 && !empty( $data['pages']['categories'][$page['parentId']]['title'] ) ): ?>
                    <?php echo $data['pages']['categories'][$page['parentId']]['title']; ?>
                <?php endif; ?>
            </div>
            <div class="asdBlog-intro">
                <?php if( !empty( $page['image']['imageOriginal'] ) && !empty( $data['blog']['image']['enable'] ) ): ?>
                    <div class="asd-blog-image">
                        <?php echo '<img src="' . ipFileUrl( ipReflection( $page['image']['imageOriginal'], $imageOptions ) ) . '" alt="'.$page['title'].'" />'; ?>
                    </div>
                <?php endif; ?>
                <?php echo $page['intro']; ?>
            </div>
            <div class="asdBlog-info-bottom">
                <?php if( !empty( $data['blog']['info']['date'] ) && $data['blog']['info']['date'] == 2 ): ?>
                    <?php echo date( ipGetOption( 'AsdBlog.dateFormat' ), strtotime( $page['createdAt'] ) ); ?>
                <?php endif; ?>
                <?php if( !empty( $data['blog']['info']['category'] ) && $data['blog']['info']['category'] == 2 && !empty( $data['pages']['categories'][$page['parentId']]['title'] ) ): ?>
                    <?php echo $data['pages']['categories'][$page['parentId']]['title']; ?>
                <?php endif; ?>
            </div>
            <?php if( !empty( $data['blog']['options']['readmore'] ) ): ?>
                <div class="asdBlog-read-more"><a href="<?php echo $page['urlPath']; ?>"><?php echo __( 'Read more', 'AsdBlog' ); ?></a></div>
            <?php endif; ?>
        </div>
    <?php endforeach; ?>
    <?php if( !empty( $data['blog']['pagination']['type'] ) ): ?>
        <?php echo ipView('view/pagination.php', array_merge( $data['pages']['pagination'], $data['blog']['pagination'] ) )->render(); ?>
    <?php endif; ?>
<?php elseif( ipIsManagementState() ): ?>
    <div class="asdBlog-post-empty">
        <?php echo __( 'Selected pages source is empty. Select other pages source or add new pages in', 'AsdBlog' ); ?> <span class="asdBlog-bold"><?php echo ipContent()->getPage($sourcePageId)->getTitle(); ?></span>.
        <?php if( !empty( $data['blog']['parent'] ) ): ?>
            <br /><?php echo __( 'Remember that parent pages acts like category.', 'AsdBlog' ); ?>
        <?php endif; ?>
        <div class="asdBlog-end">(<?php echo __( 'This note visible in managment state only', 'AsdBlog' ); ?>)</div>
    </div>
<?php endif; ?>