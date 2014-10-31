<?php

namespace Plugin\Slider;

class Event
{
    public static function ipBeforeController()
    {
    $script = "
   $(document).ready(function() {
   
   $('.SliderGall').css('display','block');
   
   $('.bxslider').bxSlider({
   auto: true,
   mode: 'fade',
   speed: 800,
   captions: false,
   pager: false
 
   });

   $('.bxslider-nc').bxSlider({
   auto: true,
   mode: 'fade',
   speed: 800,
 pager: false
   });
  });

";

        ipAddJsContent('imageslider', $script);
        ipAddJs('assets/slider.js');
        ipAddJs('assets/jquery.bxslider.js');
        ipAddCss('assets/jquery.bxslider.css');
        
        
    }



}