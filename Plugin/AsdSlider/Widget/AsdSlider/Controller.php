<?php

namespace Plugin\AsdSlider\Widget\AsdSlider;

class Controller extends \Ip\WidgetController {

    public function getTitle() {
        return __('Slider', 'AsdSlider', false);
    }

    public function update($widgetId, $postData, $currentData) {

        if (isset($postData['method'])) {
            if( isset( $postData['imageIndex'] ) ) {
                $currentData['lastEdit'] = $postData['imageIndex'];
            } else {
                $currentData['lastEdit'] = 0;
            }
            $currentData['widgetId'] = $widgetId;
            switch ($postData['method']) {
                case 'move':
                    if (!isset($postData['originalPosition'])) {
                        throw new \Ip\Exception("Missing required parameter");
                    }
                    $originalPosition = $postData['originalPosition'];
                    if (!isset($postData['newPosition'])) {
                        throw new \Ip\Exception("Missing required parameter");
                    }
                    $newPosition = $postData['newPosition'];

                    if (!isset($currentData['images'][$originalPosition])) {
                        throw new \Ip\Exception("Moved image doesn't exist");
                    }

                    $movedImage = $currentData['images'][$originalPosition];
                    unset($currentData['images'][$originalPosition]);
                    array_splice($currentData['images'], $newPosition, 0, array($movedImage));
                    return $currentData;
                case 'add':
                    if (!isset($postData['images']) || !is_array($postData['images'])) {
                        throw new \Ip\Exception("Missing required parameter");
                    }

                    foreach ($postData['images'] as $image) {
                        if (!isset($image['fileName']) || !isset($image['status'])) { 
                            continue;
                        }

                        if (!file_exists(ipFile('file/repository/' . $image['fileName']))) {
                            continue;
                        }

                        \Ip\Internal\Repository\Model::bindFile($image['fileName'], 'Content', $widgetId);

                        if (!empty($image['title'])) {
                            $title = $image['title'];
                        } else {
                            $title = basename($image['fileName']);
                        }

                        $newImage = array(
                            'imageOriginal' => $image['fileName'],
                            'title' => $title,
                        );

                        $currentData['images'][] = $newImage;
                    }

                    return $currentData;
                case 'crop':
                    break;
                case 'update' :
                    $tmpData = $currentData['images'][$postData['imageIndex']];
                    if ($tmpData['imageOriginal'] != $postData['fileName']) {
                        $this->_deleteOneImage($tmpData, $widgetId);
                        \Ip\Internal\Repository\Model::bindFile($postData['fileName'], 'Content', $widgetId);
                        $tmpData['imageOriginal'] = $postData['fileName'];
                    }

                    if (isset($postData['cropX1']) && isset($postData['cropY1']) && isset($postData['cropX2']) && isset($postData['cropY2'])) {
                        $tmpData['cropX1'] = $postData['cropX1'];
                        $tmpData['cropY1'] = $postData['cropY1'];
                        $tmpData['cropX2'] = $postData['cropX2'];
                        $tmpData['cropY2'] = $postData['cropY2'];
                    }
                    
                    $currentData['images'][$postData['imageIndex']] = $tmpData;
                    return $currentData;
                break;
                case 'setLink':
                    if (!isset($postData['index'])) {
                        throw new \Ip\Exception("Missing required parameter");
                    }
                    $index = $postData['index'];
                    if (isset($postData['type'])) {
                        $currentData['images'][$index]['type'] = $postData['type'];
                    }
                    if (isset($postData['url'])) {
                        $currentData['images'][$index]['url'] = $postData['url'];
                    }
                    if (isset($postData['blank'])) {
                        $currentData['images'][$index]['blank'] = $postData['blank'];
                    }
                    return $currentData;
                break;
                case 'delete':
                    if (!isset($postData['position'])) {
                        throw new \Ip\Exception("Missing required parameter");
                    }
                    $deletePosition = (int) $postData['position'];


                    $this->_deleteOneImage($currentData['images'][$deletePosition], $widgetId);

                    unset($currentData['images'][$deletePosition]);
                    $currentData['images'] = array_values($currentData['images']);
                    return $currentData;
                break;
                case 'saveSettings':
                    if (!isset($postData['index'])) {
                        throw new \Ip\Exception("Missing required parameter");
                    }
                    $index = $postData['index'];

                    if (isset($postData['title'])) {
                        $currentData['images'][$index]['title'] = $postData['title'];
                    }
                    if (isset($postData['description'])) {
                        $currentData['images'][$index]['description'] = $postData['description'];
                    }
                    return $currentData;
                break;
                case 'saveOptions':
                    if (isset($postData['width'])) {
                        $currentData['options']['width'] = $postData['width'];
                    }
                    if (isset($postData['height'])) {
                        $currentData['options']['height'] = $postData['height'];
                    }
                    if (isset($postData['captions'])) {
                        $currentData['options']['captions'] = $postData['captions'];
                    }
                    if (isset($postData['pagination'])) {
                        $currentData['options']['pagination'] = $postData['pagination'];
                    }
                    if (isset($postData['mode'])) {
                        $currentData['options']['mode'] = $postData['mode'];
                    }
                    return $currentData;
                break;
                default:
                    throw new \Ip\Exception('Unknown command');
            }
        }
        
        return $currentData;
    }

    public function adminHtmlSnippet() {
        $variables = array(
            'linkForm' => $this->linkForm(),
            'settingsForm' => $this->settingsForm(),
            'optionsForm' => $this->optionsForm(),
        );
        return ipView('snippet/gallery.php', $variables)->render();
    }

    private function _findExistingImage($imageOriginalFile, $allImages) {
        
        if (!is_array($allImages)) {
            return false;
        }

        $answer = false;
        foreach ($allImages as $imageKey => $image) {
            if (isset($image['imageOriginal']) && $image['imageOriginal'] == $imageOriginalFile) {
                $answer = $image;
                break;
            }
        }

        return $answer;
    }

    public function generateHtml($revisionId, $widgetId, $data, $skin) {
        $data['widgetId'] = $widgetId;
        if (isset($data['images']) && is_array($data['images'])) {
            //loop all current images
            foreach ($data['images'] as &$curImage) {
                if (empty($curImage['imageOriginal'])) {
                    continue;
                }
                $desiredName = isset($curImage['title']) ? $curImage['title'] : null;

                //create big image reflection
                $bigWidth = !empty($data['options']['width']) ? $data['options']['width'] : ipGetOption('AsdSlider.imageWidth');
                $bigHeight = !empty($data['options']['height']) ? $data['options']['height'] : ipGetOption('AsdSlider.imageHeight');

                $transformBig = array(
                    'type' => 'fit',
                    'width' => ipGetOption('AsdSlider.bigImageWidth'),
                    'height' => ipGetOption('AsdSlider.bigImageHeight')
                );
                $curImage['imageBig'] = ipFileUrl(ipReflection($curImage['imageOriginal'], $transformBig, $desiredName));

                if (isset($curImage['cropX1']) && isset($curImage['cropY1']) && isset($curImage['cropX2']) && isset($curImage['cropY2'])) {
                    $transformSmall = array(
                        'type' => 'crop',
                        'x1' => $curImage['cropX1'],
                        'y1' => $curImage['cropY1'],
                        'x2' => $curImage['cropX2'],
                        'y2' => $curImage['cropY2'],
                        'width' => $bigWidth,
                        'height' => $bigHeight,
                        'quality' => ipGetOption('Content.widgetGalleryQuality')
                    );
                } else {
                    $transformSmall = array(
                        'type' => 'center',
                        'width' => $bigWidth,
                        'height' => $bigHeight,
                        'quality' => ipGetOption('Content.widgetGalleryQuality')
                    );
                }
                $curImage['imageSmall'] = ipFileUrl(ipReflection($curImage['imageOriginal'], $transformSmall, $curImage['title']));

                if (empty($curImage['type'])) {
                    $curImage['type'] = 'lightbox';
                }
                if (empty($curImage['url'])) {
                    $curImage['url'] = '';
                } else {
                    if (!preg_match('/^((http|https):\/\/)/i', $curImage['url'])) {
                        $curImage['url'] = 'http://' . $curImage['url'];
                    }
                }
                if (empty($curImage['blank'])) {
                    $curImage['blank'] = '';
                }
                if (empty($curImage['title'])) {
                    $curImage['title'] = '';
                }
            }
        }
        return parent::generateHtml($revisionId, $widgetId, $data, $skin);
    }

    public function delete($widgetId, $data) {
        if (!isset($data['images']) || !is_array($data['images'])) {
            return;
        }

        foreach ($data['images'] as $imageKey => $image) {
            self::_deleteOneImage($image, $widgetId);
        };
    }

    private function _deleteOneImage($image, $widgetId) {
        if (!is_array($image)) {
            return;
        }
        if (isset($image['imageOriginal']) && $image['imageOriginal']) {
            \Ip\Internal\Repository\Model::unbindFile($image['imageOriginal'], 'Content', $widgetId);
        }
    }

    public function duplicate($oldId, $newId, $data) {
        if (!isset($data['images']) || !is_array($data['images'])) {
            return;
        }

        foreach ($data['images'] as $imageKey => $image) {
            if (!is_array($image)) {
                return;
            }
            if (isset($image['imageOriginal']) && $image['imageOriginal']) {
                \Ip\Internal\Repository\Model::bindFile($image['imageOriginal'], 'Content', $newId);
            }
        }
        $data['widgetId'] = $newId;
        return $data;
    }

    protected function optionsForm() {
        $form = new \Ip\Form();
        $form->setEnvironment(\Ip\Form::ENVIRONMENT_ADMIN);

        $field = new \Ip\Form\Field\Select(
            array(
                'name' => 'mode',
                'label' => __('Slider transition', 'AsdSlider', false),
                'values' => array( 
                    array( 'horizontal', __('Horizontal', 'AsdSlider', false) ),
                    array( 'vertical', __('Vertical', 'AsdSlider', false) ),
                    array( 'fade', __('Fade', 'AsdSlider', false) ),
                )
            )
        );
        $form->addField($field);

        $field = new \Ip\Form\Field\Select(
            array(
                'name' => 'captions',
                'label' => __('Show captions', 'AsdSlider', false),
                'values' => array( 
                    array( 0, __('No', 'AsdSlider', false) ),
                    array( 1, __('Show', 'AsdSlider', false) ),
                )
            )
        );
        $form->addField($field);

        $field = new \Ip\Form\Field\Select(
            array(
                'name' => 'pagination',
                'label' => __('Show pager', 'AsdSlider', false),
                'values' => array( 
                    array( 0, __('No', 'AsdSlider', false) ),
                    array( 1, __('Show', 'AsdSlider', false) ),
                )
            )
        );
        $form->addField($field);

        $field = new \Ip\Form\Field\Text(
                array(
            'name' => 'height',
            'label' => __('Height (px)', 'AsdSlider', false),
            'value' => ipGetOption('AsdSlider.imageHeight')
        ));
        $form->addField($field);

        $field = new \Ip\Form\Field\Text(
                array(
            'name' => 'width',
            'label' => __('Width (px)', 'AsdSlider', false),
            'value' => ipGetOption('AsdSlider.imageWidth'),
        ));

        $form->addField($field);

        return $form; // Output a string with generated HTML form
    }

    protected function linkForm() {
        $form = new \Ip\Form();
        $form->setEnvironment(\Ip\Form::ENVIRONMENT_ADMIN);

        $field = new \Ip\Form\Field\Select(
                array(
            'name' => 'type',
            'label' => __('Mouse click action', 'AsdSlider', false),
        ));

        $values = array(
            array('lightbox', __('Lightbox', 'AsdSlider', false)),
            array('link', __('URL', 'AsdSlider', false)),
            array('none', __('None', 'AsdSlider', false)),
        );
        $field->setValues($values);
        $form->addfield($field);

        $field = new \Ip\Form\Field\Text(
                array(
            'name' => 'url',
            'label' => __('Url', 'AsdSlider', false),
        ));
        $form->addField($field);

        $field = new \Ip\Form\Field\Checkbox(
                array(
            'name' => 'blank',
            'label' => __('Open in new window', 'AsdSlider', false),
        ));
        $form->addField($field);

        return $form; // Output a string with generated HTML form
    }

    protected function settingsForm() {
        $form = new \Ip\Form();
        $field = new \Ip\Form\Field\Text(
                array(
            'name' => 'title',
            'label' => __('Title', 'AsdSlider', false),
        ));
        $form->addField($field);

        $field = new \Ip\Form\Field\Textarea(
                array(
            'name' => 'description',
            'label' => __('Description', 'AsdSlider', false),
        ));
        $form->addField($field);

        return $form; // Output a string with generated HTML form
    }

}
