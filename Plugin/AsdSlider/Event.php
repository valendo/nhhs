<?php

namespace Plugin\AsdSlider;

class Event {

    public static function ipBeforeController() {
        ipAddCss('assets/jquery.bxslider.css');
        ipAddCss('assets/style.css');
        ipAddCss('assets/style.css');
        ipAddJs('assets/jquery.easing.1.3.js');
        //ipAddJs('assets/jquery.fitvids.js');
        ipAddJs('assets/jquery.bxslider.min.js');
        ipAddJs('assets/Slider.js');
        if( !ipIsManagementState() ) {
            $script = "
                $(document).ready(function() {
                    if( asdSliderList != undefined && asdSliderList.length > 0 ) {
                        $.each( asdSliderList, function( key, value ) {
                            $( value.id ).bxSlider( value.options );
                        });
                    }
                });
            "; 
            ipAddJsContent('asdslider', $script);
        }
    }

}
