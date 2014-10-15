<?php

namespace Plugin\AsdBlog\Widget\AsdBlogList;

class Controller extends \Ip\WidgetController
{
    public function getTitle() {
        return __('Blog list', 'AsdBlog', false);
    }

    public function generateHtml( $revisionId, $widgetId, $data, $skin )
    {
        if( empty( $data['serialized'] ) ) {
            $data['serialized'] = '';
        } else {
            parse_str( $data['serialized'], $data );
            $data['currentLink'] = $revisionId;
        }
        if( empty( $data['data']['blog']['place'] ) ) {
            if( !empty( $revisionId ) ) {
                $revision = \Ip\Internal\Revision::getRevision( $revisionId );
                $pageId = $revision['pageId'];
            } else {
                $pageId = $data['data']['blog']['pageId'];
            }
        } else {
            $pageId = $data['data']['blog']['place'];
        }
        $data['sourcePageId'] = $pageId;

        //pagination
        if( !empty( $data['data']['blog']['pagination']['limit'] ) ) {
            $limit = $data['data']['blog']['pagination']['limit'];
        } else {
            $limit = 10;
        }
        if( !$page = ipRequest()->getQuery('page') ) {
            $page = 1;
        }
        
        if( !empty( $data['data']['blog']['parent'] ) ) {
            $parentCat = true;
        } else {
            $parentCat = false;
        }
        if( !empty( $data['data']['blog']['image']['enable'] ) ) {
            $data['imageOptions'] = array(
                'type' => 'center',
                'width' => $data['data']['blog']['image']['width'],
                'height' => $data['data']['blog']['image']['height'],   
                'quality' => 80,
                'forced' => false
            );
        }

        if( !empty( $data['data']['blog']['options'] ) ) {
            $options = $data['data']['blog']['options'];
        } else {
            
            $options = array(
                'introlimit' => ipGetOption( 'AsdBlog.introLimit' ),
                'allowedtags' => ipGetOption( 'AsdBlog.allowedTags' ),
                'blockname' => ipGetOption( 'AsdBlog.blockName' )
            );
        }
        
        $data['data']['pages'] = Model::getPages( $pageId, $parentCat, array( 'limit' => $limit, 'page' => $page ), $options );

        
        return parent::generateHtml( $revisionId, $widgetId, $data, $skin );
    }

    public function adminHtmlSnippet()
    {
        $form = new \Ip\Form();

        $yesNo = array(
            array( 0, __( 'No', 'AsdBlog' ) ),
            array( 1, __( 'Yes', 'AsdBlog' ) ),
        );
        
        $default[] = array( 0, __( 'Current page subpages', 'AsdBlog' ) );
        $results = array_merge( $default, Model::getPagesList() );
        
        $form->addField(new \Ip\Form\Field\Hidden(
            array(
                'name' => 'data[blog][pageId]',
                'value' => ipContent()->getCurrentPage()->getId()
            )
        ));
        
        $form->addField(new \Ip\Form\Field\Select(
            array(
                'name' => 'data[blog][place]',
                'label' => __( 'Blog posts source', 'AsdBlog' ),
                'values' => $results
            )
        ));
        
        $form->addField(new \Ip\Form\Field\Select(
            array(
                'name' => 'data[blog][parent]',
                'label' => __( 'Make parent page act like post category', 'AsdBlog' ),
                'values' => $yesNo,
                'note' => __( 'One level depth only', 'AsdBlog' ) 
            )
        ));
        
        $form->addFieldset(new \Ip\Form\Fieldset(__( 'Pagination', 'AsdBlog' )));
        
        $paginationTypes = array(
            array( 3, __( 'Show pagination', 'AsdBlog' ) ),
            array( 1, __( 'Show page numbers only', 'AsdBlog' ) ),
            array( 2, __( 'Show Prev/Next links only', 'AsdBlog' ) ),
            array( 0, __( 'Do not show pagination', 'AsdBlog' ) ),
        );
        
        $form->addField(new \Ip\Form\Field\Select(
            array(
                'name' => 'data[blog][pagination][type]',
                'label' => __( 'Type', 'AsdBlog' ),
                'values' => $paginationTypes,
            )
        ));
        
        $form->addField(new \Ip\Form\Field\Text(
            array(
                'name' => 'data[blog][pagination][limit]',
                'label' => __( 'Post limit per page', 'AsdBlog' ),
                'value' => ipGetOption( 'AsdBlog.postLimit' )
            )
        ));
        
        $form->addFieldset(new \Ip\Form\Fieldset(__( 'Options', 'AsdBlog' )));
        $orderTypes = array(
            array( 0, __( 'By date DESC', 'AsdBlog' ) ),
            array( 1, __( 'By date ASC', 'AsdBlog' ) ),
            array( 2, __( 'By page position DESC', 'AsdBlog' ) ),
            array( 3, __( 'By page position ASC', 'AsdBlog' ) ),
        );
        $form->addField(new \Ip\Form\Field\Select(
            array(
                'name' => 'data[blog][options][order]',
                'label' => __( 'Order by', 'AsdBlog' ),
                'values' => $orderTypes,
            )
        ));
        $form->addField(new \Ip\Form\Field\Text(
            array(
                'name' => 'data[blog][options][introlimit]',
                'label' => __( 'Intro limit (if seperator is not placed)', 'AsdBlog' ),
                'value' => ipGetOption( 'AsdBlog.introLimit' )
            )
        ));
        $form->addField(new \Ip\Form\Field\Text(
            array(
                'name' => 'data[blog][options][allowedtags]',
                'label' => __( 'Allowed tags', 'AsdBlog' ),
                'note' => 'All other will be stripped',
                'value' => ipGetOption( 'AsdBlog.allowedTags' )
            )
        ));
        
        $form->addField(new \Ip\Form\Field\Select(
            array(
                'name' => 'data[blog][options][readmore]',
                'label' => __( 'Show read more link?', 'AsdBlog' ),
                'values' => $yesNo,
                'value' => ipGetOption( 'AsdBlog.showReadMore' ) == 'Yes' ? 1 : 0
            )
        ));
        $form->addField(new \Ip\Form\Field\Select(
            array(
                'name' => 'data[blog][options][titlelink]',
                'label' => __( 'Show title as link to post?', 'AsdBlog' ),
                'values' => $yesNo,
                'value' => ipGetOption( 'AsdBlog.addTitlelink' ) == 'Yes' ? 1 : 0
            )
        ));
        $form->addField(new \Ip\Form\Field\Text(
            array(
                'name' => 'data[blog][options][blockname]',
                'label' => __( 'Post block name', 'AsdBlog' ),
                'value' => ipGetOption( 'AsdBlog.blockName' )
            )
        ));
        
        $yesNoUpBot = array(
            array( 0, __( 'No', 'AsdBlog' ) ),
            array( 1, __( 'Yes, top', 'AsdBlog' ) ),
            array( 2, __( 'Yes, bottom', 'AsdBlog' ) ),
        );
        $form->addFieldset(new \Ip\Form\Fieldset(__( 'Post aditional information', 'AsdBlog' )));
        $form->addField(new \Ip\Form\Field\Select(
            array(
                'name' => 'data[blog][info][date]',
                'label' => __( 'Show post date', 'AsdBlog' ),
                'values' => $yesNoUpBot,
                'value' => ipGetOption( 'AsdBlog.showDate' ) == 'Yes' ? 1 : 0
            )
        ));
        //This functionality will be added later
        // $form->addField(new \Ip\Form\Field\Select(
        //     array(
        //         'name' => 'data[blog][info][time]',
        //         'label' => __( 'Show post time', 'AsdBlog' ),
        //         'values' => $yesNoUpBot,
        //         'value' => ipGetOption( 'AsdBlog.showTime' ) == 'Yes' ? 1 : 0
        //     )
        // ));
        //This functionality will be added later
        // $form->addField(new \Ip\Form\Field\Select(
        //     array(
        //         'name' => 'data[blog][info][author]',
        //         'label' => __( 'Show author name', 'AsdBlog' ),
        //         'values' => $yesNoUpBot,
        //     )
        // ));
        $form->addField(new \Ip\Form\Field\Select(
            array(
                'name' => 'data[blog][info][category]',
                'label' => __( 'Show category name', 'AsdBlog' ),
                'values' => $yesNoUpBot,
            )
        ));
        
        $form->addFieldset(new \Ip\Form\Fieldset(__( 'Image options', 'AsdBlog' )));
        $form->addField(new \Ip\Form\Field\Select(
            array(
                'name' => 'data[blog][image][enable]',
                'label' => __( 'Enable image', 'AsdBlog' ),
                'values' => $yesNo,
                'note' => __( 'First image of post will be displayed', 'AsdBlog' ) 
            )
        ));
        
        $form->addField(new \Ip\Form\Field\Text(
            array(
                'name' => 'data[blog][image][width]',
                'label' => __( 'Image width', 'AsdBlog' ),
                'value' => ipGetOption( 'AsdBlog.imageWidth' )
            )
        ));
        
        $form->addField(new \Ip\Form\Field\Text(
            array(
                'name' => 'data[blog][image][height]',
                'label' => __( 'Image height', 'AsdBlog' ),
                'value' => ipGetOption( 'AsdBlog.imageHeight' )
            )
        ));
        
        return ipView('snippet/edit.php', array( 'form' => $form ))->render();
    }
}
