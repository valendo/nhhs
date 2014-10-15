<?php

namespace Plugin\AsdBlog\Widget\AsdBlogList;


class Model
{
    public static function getPageIntro( $page, $options ) {
        $page['intro'] = '';
        $table = ipTable('revision');
        $sql = "SELECT `revisionId` FROM $table WHERE `pageId` = {$page['id']} AND isPublished = 1";
        $revisionId = ipDb()->fetchValue( $sql );
        $revisionId = !empty( $revisionId ) ? $revisionId : 0;
        $allowedTags = $options['allowedtags'];
        $blockName = $options['blockname'];
        $introLimit = $options['introlimit'];
        $table = ipTable('widget');
        
        $sql = "SELECT `position` FROM $table WHERE `revisionId` = $revisionId AND `isVisible` = 1 AND `isDeleted` = 0 AND `name` = 'AsdBlogSeperator'";
        $position = ipDb()->fetchValue( $sql );
        
        if( !empty( $position ) ) {
            $positionSql = "AND `position` < $position";
        } else {
            $positionSql = null;
        }
        $sql = "SELECT `id`, `name`, `skin`, `data`, `blockName` FROM $table WHERE `revisionId` = $revisionId AND `isVisible` = 1 AND `isDeleted` = 0 AND `blockName` = '{$blockName}' $positionSql ORDER BY `position` ASC";
        
        $widgets = ipDb()->fetchAll( $sql );
        
        $i = 0;
        
        foreach( $widgets as $widget ) {
            if( $widget['name'] == 'Heading' && $i++ == 0 ) {
                $tmp = json_decode( $widget['data'], true );
                $page['title'] = $tmp['title'];
            } elseif( $widget['name'] == 'Text' ) {
                if( !empty( $position ) ) {
                    $i++;
                    $page['intro'] .= strip_tags( \Ip\Internal\Content\Model::generateWidgetPreview( $widget['id'], false ), $allowedTags );
                } else {
                    $page['intro'] .= strip_tags( \Ip\Internal\Content\Model::generateWidgetPreview( $widget['id'], false ), str_replace( '</p>', '', $allowedTags ) );

                    if( mb_strlen( $page['intro'] ) > $introLimit ) {
                        $page['intro'] = '<p>'. mb_substr( $page['intro'], 0, strpos( $page['intro'], ' ', $introLimit ) ) . '</p>';
                        break;
                    }
                }
            } elseif( $widget['name'] == 'Columns' ) {
                $columns = self::getWidgetByColumn( $widget['id'] );
                foreach( $columns as $col ) {
                    if( $col['name'] == 'Text' ) {
                        if( !empty( $position ) ) {
                            $page['intro'] .= strip_tags( \Ip\Internal\Content\Model::generateWidgetPreview( $col['id'], false ), $allowedTags );
                        } else {
                            $page['intro'] .= strip_tags( \Ip\Internal\Content\Model::generateWidgetPreview( $col['id'], false ), str_replace( '</p>', '', $allowedTags ));
                            if( mb_strlen( $page['intro'] ) > $introLimit ) {
                                $page['intro'] = '<p>'. mb_substr( $page['intro'], 0, strpos( $page['intro'], ' ', $introLimit ) ) . '</p>';
                                break;
                            }
                        }
                    } elseif( $col['name'] == 'Image' && empty( $page['image'] ) ) {
                        $page['image'] = json_decode( $col['data'], true );
                    }
                }
            } elseif( $widget['name'] == 'Image' && empty( $page['image'] ) ) {
                $page['image'] = json_decode( $widget['data'], true );
            }
        }

        return $page;
    }
    public static function getWidgetByColumn( $id ) {
        $table = ipTable('widget');
        $sql = "SELECT `id`, `name`, `data` FROM $table WHERE `blockName` LIKE 'column{$id}_%' ORDER BY `blockName` ASC";
        return ipDb()->fetchAll( $sql );
    }
    public static function getPages( $parentId, $cat, $pag, $options = array() ) {
        
        $categories = array();
        $ids = array( $parentId );
        if( $cat ) {
            $result = self::getCategories( $parentId );
            if( !empty( $result ) ) {
                $ids = $result['ids'];
                $categories = $result['categories'];
            }
        } 
        $idsStr = implode( ',', $ids );
        $table = ipTable('page');
        $start = $pag['limit'] * ( $pag['page']-1 );
        $results['pagination'] = $pag;
        $limit = "LIMIT $start, {$pag['limit']}";
        switch( ( !empty( $options['order'] ) ? $options['order'] : 0 ) ) {
            case 1:
                $order = "ORDER BY `createdAt` ASC";
            break;
            case 2:
                $order = "ORDER BY `pageOrder` DESC";
            break;
            case 3:
                $order = "ORDER BY `pageOrder` ASC";
            break;
            default:
                $order = "ORDER BY `createdAt` DESC";
            break;
        }
        
        $where = "WHERE `parentId` IN ($idsStr) AND `isVisible` = 1 AND `isDeleted` = 0";
        $sql = "SELECT `id`, `parentId`, `title`, `urlPath`, `createdAt` FROM $table $where $order $limit";
        $pages = ipDb()->fetchAll( $sql );
        foreach( $pages as &$page ) {
            $page = self::getPageIntro( $page, $options );
        }
        $results['categories'] = $categories;
        $results['pages'] = $pages;
        $results['pagination']['count'] = self::getPageCount( $where );

        return $results;
    }
    
    public static function getCategories( $parentId, $returnIds = false ) {
        $table = ipTable('page');
        $sql = "SELECT `id`, `title`, `urlPath` FROM $table WHERE `parentId` = $parentId AND `isVisible` = 1 AND `isDeleted` = 0";
        $results = ipDb()->fetchAll( $sql );
        $returnData = array();
        if( !empty( $results ) ) {
            foreach( $results as $result ) {
                $returnData['ids'][] = $result['id'];
                $returnData['categories'][$result['id']] = array(
                    'urlPath' => $result['urlPath'],
                    'title' => $result['title']
                );
            }
        }
        return $returnData;
    }
    
    public static function getPageCount($where) {
        $table = ipTable('page');
        $sql = "SELECT COUNT(id) FROM $table $where";
        return ipDb()->fetchValue($sql);
    }
    
    public static function getPagesList()
    {
        $languageCode = ipContent()->getCurrentLanguage()->code;
        $multilanguage = "`languageCode` = '$languageCode' AND";
        
        $table = ipTable('page');
        $sql = "SELECT `title`, `alias`, `languageCode`, `parentId`, `id` FROM $table WHERE $multilanguage `isVisible` = 1 AND `isDeleted` = 0 ORDER BY `title` ASC";
        $results = ipDb()->fetchAll( $sql );

        foreach( $results as $result ) {
            $allPages[$result['parentId']][$result['id']] = $result;
        }

        $returnData = makeMenu( 0, $allPages, 0, $multilanguage );
        return $returnData;
    }
    
    public static function getParentId( $parentName ) {
        return ipDb()->selectValue( 'page', 'id', array( 'alias' => $parentName ) );
    }
    
    public static function checkIfChildren( $parentIds, $id ) {
        $parentIds = implode( ',', $parentIds );
        $table = ipTable('page');
        $sql = "SELECT `id` FROM $table WHERE `parentId` IN ($parentIds) AND `isVisible` = 1 AND `isDeleted` = 0 ";
        $results = ipDb()->fetchAll( $sql );
        $ids = array();
        $found = false;
        foreach( $results as $result ) {
            $ids[] = $result['id'];
            if( $result['id'] == $id ) {
                $found = true;
                break;
            }
        }
        if( $found ) {
            return true;
        } elseif( !empty( $ids ) ) {
            return self::checkIfChildren( $ids, $id );
        } else {
            return false;
        }
    }
}

function makeMenu( $target, $allPages, $level, $multilanguage ) {
    $return = array();
    if( !empty( $allPages[$target] ) ) {
        foreach( $allPages[$target] as $id => $page ) {
            if( !empty( $allPages[$id] ) ) {
                $title =  str_repeat( "—", $level) . " " . $page['title'];
                if( empty( $multilanguage ) ) {
                    $title  = "{$page['languageCode']}: {$title}";
                }
                $return[] = array( $page['id'], $title );
                $return = array_merge( $return, makeMenu( $id, $allPages, $level+1, $multilanguage ) );
            }
        }
    }
    return $return;
}
