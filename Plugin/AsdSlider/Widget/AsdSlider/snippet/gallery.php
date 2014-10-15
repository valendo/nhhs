<div class="ip asdSlider">
    <div  id="ipWidgetAsdSliderMenu">
        <div class="btn-toolbar" role="toolbar">
            <div class="btn-group">
                <button class="btn btn-default ipsEdit" role="button"><i class="fa fa-edit"></i></button>
                <button class="btn btn-default ipsLink" role="button"><i class="fa fa-link"></i></button>
                <button class="btn btn-default ipsSettings" role="button"><i class="fa fa-gears"></i></button>
                <button class="btn btn-default ipsDelete" role="button"><i class="fa fa-trash-o"></i></button>
            </div>
        </div>
    </div>
    <div class="hidden" id="ipWidgetAsdSliderControls">
        <div class="btn-toolbar" role="toolbar">
            <div class="btn-group">
                <button type="button" data-level="1" class="btn btn-default ipsAdd"><?php _e('Add image', 'AsdSlider'); ?></button>
                <button type="button"  class="btn btn-default ipsOptions"><?php _e('Options', 'AsdSlider'); ?></button>
            </div>
        </div>
    </div>
    <div id="ipWidgetAsdSliderEditPopup" class="modal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title"><?php echo __('Edit image', 'AsdSlider') ?></h4>
                </div>
                <div class="modal-body">
                    <div class="ipsEditScreen"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><?php _e('Cancel', 'AsdSlider') ?></button>
                    <button type="button" class="btn btn-primary ipsConfirm"><?php _e('Confirm', 'AsdSlider') ?></button>
                </div>
            </div>
        </div>
    </div>
    <div id="ipWidgetAsdSliderLinkPopup" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title"><?php echo __('Link', 'AsdSlider') ?></h4>
                </div>
                <div class="modal-body">
                    <?php echo $linkForm ?>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><?php _e('Cancel', 'AsdSlider') ?></button>
                    <button type="button" class="btn btn-primary ipsConfirm"><?php _e('Confirm', 'AsdSlider') ?></button>
                </div>
            </div>
        </div>
    </div>
    <div id="ipWidgetAsdSliderSettingsPopup" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title"><?php echo __('Settings', 'AsdSlider') ?></h4>
                </div>
                <div class="modal-body">
                    <?php echo $settingsForm ?>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><?php _e('Cancel', 'AsdSlider') ?></button>
                    <button type="button" class="btn btn-primary ipsConfirm"><?php _e('Confirm', 'AsdSlider') ?></button>
                </div>
            </div>
        </div>
    </div>
    <div id="ipWidgetAsdSliderOptionsPopup" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title"><?php _e('Slider options', 'AsdSlider'); ?></h4>
                </div>
                <div class="modal-body">
                    <?php echo $optionsForm ?>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><?php _e('Cancel', 'AsdSlider'); ?></button>
                    <button type="button" class="btn btn-primary ipsConfirm"><?php _e('Confirm', 'AsdSlider'); ?></button>
                </div>
            </div>
        </div>
    </div>
</div>