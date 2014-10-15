var IpWidget_AsdSlider = function () {
    this.$widgetObject = null;
    this.data = null;
    this.$controls = null;
    this.$widgetControls = null;
    
    this.init = function ($widgetObject, data) {
        var options = {};
        if( data.options !== undefined ) {
            options.mode = data.options.mode;
            options.captions = parseInt(data.options.captions);
            options.pager = parseInt(data.options.pagination);
        }
        
        if( data.lastEdit === undefined ) {
            $('body #asdSlider_'+data.widgetId).bxSlider( options );
        } else {
            options.startSlide = data.lastEdit;
            $('body #asdSlider_'+data.widgetId).bxSlider( options );
        }

        var currentScope = this;
        this.$widgetObject = $widgetObject;
        this.data = data;
        this.$widgetControls = $('#ipWidgetAsdSliderControls');

        this.$widgetObject.on( 'mouseenter', $.proxy(this.mouseenter, this) );

        $('body').on('click', $.proxy(function (e) {
            var $target = $(e.target);
            if (!$target.hasClass('ipWidget-AsdSlider')) {
                $target = $target.closest('.ipWidget-AsdSlider');
            }
            if ($target.length == 0) {
                $.proxy(currentScope.blur, currentScope)();
            }
        }, this));

        var $list = this.$widgetObject.find('.asdSlider_container');
        $list.sortable();
        $list.disableSelection();
        $list.on("sortstart", function (event, ui) {
            currentScope.dragItemOriginalPosition = $(ui.item).index()-1;
            $.proxy(currentScope.blurImage, currentScope)();
        });
        $list.on("sortstop", function (event, ui) {
            var data = {};
            data.method = 'move';
            data.originalPosition = currentScope.dragItemOriginalPosition;
            data.newPosition = $(ui.item).index()-1;
            if (data.newPosition != data.originalPosition) {
                currentScope.$widgetObject.save(data, true);
            } else {
                $(ui.item).click();
            }
        });

        this.$widgetObject.find('a').on('click', function (e) {
            e.preventDefault();
        });
        this.$widgetObject.find('.ipsItem').on('click', $.proxy(this.focusImage, this));

        this.$controls = $('#ipWidgetAsdSliderMenu');
        $('body').on('click', $.proxy(function (e) { 
            var $target = $(e.target);

            var $closestLi = $target;
            if (!$target.hasClass('ipsItem')) {
                $closestLi = $target.closest('.ipsItem');
            }

            var $closestWidget = $closestLi.closest('.ipWidget-AsdSlider');

            if ($closestWidget.length != 1) {
                $.proxy(this.blurImage, this)();
            }


        }, this));
        
        $(document).on(
            'ipWidgetDeleted.galleryWidget ' +
                'ipWidgetAdded.galleryWidget ' +
                'ipWidgetMoved.galleryWidget'
            , $.proxy(currentScope.blur, currentScope));
    }

    this.focusImage = function (e) {
        var context = this;
        e.preventDefault();

        var $item = $(e.currentTarget);
        
        var $img = $item.find('.ipsImage');
        var $controls = this.$controls;

        $controls.removeClass('hidden');
        $controls.css('position', 'absolute');
        $controls.css('left', $img.offset().left + 5);
        $controls.css('top', $img.offset().top + 5);

        this.imageIndex = $item.index()-1;

        $controls.find('.ipsDelete').off().on('click', function (e) {
            $.proxy(context.deleteImage, context)($item.index()-1);
        });
        $controls.find('.ipsEdit').off().on('click', function (e) {
            $.proxy(context.editImage, context)($item.index()-1);
        });
        $controls.find('.ipsLink').off().on('click', function (e) {
            $.proxy(linkPopup, context)($item.index()-1);
        });
        $controls.find('.ipsSettings').off().on('click', function (e) {
            $.proxy(settingsPopup, context)($item.index()-1);
        });
    };

    this.blurImage = function () {
        this.$controls.addClass('hidden');
    };

    this.mouseenter = function() {
        var thisContext = this;
        var $widgetControls = this.$widgetControls;
        var $widgetObject = this.$widgetObject;
        $widgetControls.removeClass('hidden');
        $widgetControls.css('left', $widgetObject.offsetLeft);
        $widgetControls.css('top', $widgetObject.offsetTop);
        $widgetControls.css('position', 'absolute');
        $widgetControls.css('left', $widgetObject.offset().left);
        $widgetControls.css('top', $widgetObject.offset().top - $widgetControls.height() - 5);
        $widgetControls.find('.ipsAdd').off().on('click', function (e) {
            e.preventDefault();
            var repository = new ipRepository({preview: 'thumbnails', filter: 'image'});
            repository.on('ipRepository.filesSelected', $.proxy(thisContext.filesSelected, thisContext));
        });
        $widgetControls.find('.ipsOptions').off().on('click', function (e) {
            e.preventDefault();
            $.proxy(optionsPopup, thisContext)($(e.currentTarget).index()-1);
            
        });
    }

    this.blur = function () {
        var $widgetControls = this.$widgetControls;
        $widgetControls.addClass('hidden');
        this.$controls.addClass('hidden');
        
    };

    this.deleteImage = function (position) {
        if( this.data.options !== undefined ) {
            if( this.data.options.mode == 'fade' ) {
                position++;
            }
        }
        var data = {};
        data.method = 'delete';
        data.position = position;
        this.$widgetObject.save(data, true);
    };

    this.editImage = function (position) {
        if( this.data.options !== undefined ) {
            if( this.data.options.mode == 'fade' ) {
                position++;
            }
        }
        var thisContext = this;
        var $modal = $('#ipWidgetAsdSliderEditPopup');
        var options = new Object;
        var data = this.data.images[position];

        $modal.modal();

        if (data.imageOriginal) {
            options.image = data.imageOriginal;
        }
        if (data.cropX1) {
            options.cropX1 = data.cropX1;
        }
        if (data.cropY1) {
            options.cropY1 = data.cropY1;
        }
        if (data.cropX2) {
            options.cropX2 = data.cropX2;
        }
        if (data.cropY2) {
            options.cropY2 = data.cropY2;
        }
        options.enableChangeHeight = false;
        options.enableChangeWidth = false;
        options.enableUnderscale = true;

        options.autosizeType = 'crop';

        var $img = this.$widgetObject.find('.ipsImage').eq(position);
        
        if ($img.length == 1) {
            options.windowHeight = $img.height() * 558 / $img.width();
        }

        var $editScreen = $modal.find('.ipsEditScreen');
        $editScreen.ipUploadImage('destroy');
        $editScreen.ipUploadImage(options);

        $modal.find('.ipsConfirm').off().on('click', function () {
            var crop = $editScreen.ipUploadImage('getCropCoordinates');
            var curImage = $editScreen.ipUploadImage('getCurImage');
            $.proxy(thisContext.updateImage, thisContext)(position, crop.x1, crop.y1, crop.x2, crop.y2, curImage);
            $modal.modal('hide');
        });
    }

    this.updateImage = function (imageIndex, x1, y1, x2, y2, image, callback) {
        var data = {
            method: 'update',
            fileName: image,
            imageIndex: imageIndex,
            cropX1: x1,
            cropY1: y1,
            cropX2: x2,
            cropY2: y2
        };

        this.$widgetObject.save(data, 1, function ($widget) {
            $widget.click();
            if (callback) {
                callback($widget);
            }
        });
    }

    this.filesSelected = function (event, files) {
        var data = {
            method: 'add'
        };
        $.each(files, function (key, value) {
            if (!data.images) {
                data.images = [];
            }
            data.images[data.images.length] = {
                fileName: value.fileName,
                status: "new"
            };
        });

        this.$widgetObject.save(data, 1, function ($widget) {
            $widget.click();
        });
    }

    var linkPopup = function (index) {
        if( this.data.options !== undefined ) {
            if( this.data.options.mode == 'fade' ) {
                index++;
            }
        }
        var context = this;
        this.popup = $('#ipWidgetAsdSliderLinkPopup');
        this.confirmButton = this.popup.find('.ipsConfirm');
        this.type = this.popup.find('select[name=type]');
        this.url = this.popup.find('input[name=url]');
        this.blank = this.popup.find('input[name=blank]');
        var data = this.data.images[index];

        if (data.type) {
            this.type.val(data.type);
        } else {
            this.type.val('lightbox');
        }

        if (data.url) {
            this.url.val(data.url);
        } else {
            this.url.val('');
        }

        if (data.blank) {
            this.blank.attr('checked', true);
        } else {
            this.blank.attr('checked', false);
        }


        this.type.off().on('change', function () {
            $.proxy(showHide, context)();
        });

        $.proxy(showHide, context)();


        this.popup.modal();

        this.confirmButton.off().on('click', $.proxy(saveLink, this));
    };

    var saveLink = function () {
        var data = {
            method: 'setLink',
            type: this.type.val(),
            url: this.url.val(),
            blank: this.blank.prop('checked') ? 1 : 0,
            index: this.imageIndex,
            imageIndex: this.imageIndex
        };
        this.$widgetObject.save(data, 1);
        this.popup.modal('hide');
    };

    var showHide = function () {
        if (this.type.val() == 'link') {
            this.popup.find('.form-group.name-url').show();
            this.popup.find('.form-group.name-blank').show();
        } else {
            this.popup.find('.form-group.name-url').hide();
            this.popup.find('.form-group.name-blank').hide();
        }
    }
    
    var optionsPopup = function (index) {
        var data = this.data;
        var context = this;
        this.optionsPopup = $('#ipWidgetAsdSliderOptionsPopup');
        this.confirmButton = this.optionsPopup.find('.ipsConfirm');
        this.height = this.optionsPopup.find('input[name=height]');
        this.width = this.optionsPopup.find('input[name=width]');
        this.mode = this.optionsPopup.find('select[name=mode]');
        this.captions = this.optionsPopup.find('select[name=captions]');
        this.pagination = this.optionsPopup.find('select[name=pagination]');

        if( data.options !== undefined ) {
            if( data.options.height !== undefined ) {
                this.height.val(data.options.height);
            }
            if( data.options.width !== undefined ) {
                this.width.val(data.options.width);
            }
            if( data.options.mode !== undefined ) {
                this.mode.val(data.options.mode);
            }
            if( data.options.captions !== undefined ) {
                this.captions.val(data.options.captions);
            }
            if( data.options.pagination !== undefined ) {
                this.pagination.val(data.options.pagination);
            }
        }
        this.optionsPopup.modal();

        this.confirmButton.off().on('click', $.proxy(saveOptions, context));
    };

    var saveOptions = function () {
        var data = {
            method: 'saveOptions',
            height: this.height.val(),
            width: this.width.val(),
            mode: this.mode.val(),
            captions: this.captions.val(),
            pagination: this.pagination.val()
        };
        this.$widgetObject.save(data, 1);
        this.optionsPopup.modal('hide');
    };

    var settingsPopup = function (index) {
        if( this.data.options !== undefined ) {
            if( this.data.options.mode == 'fade' ) {
                index++;
            }

        }
        var data = this.data.images[index];
        var context = this;
        this.settingsPopup = $('#ipWidgetImageSettingsPopup');
        this.confirmButton = this.settingsPopup.find('.ipsConfirm');
        this.title = this.settingsPopup.find('input[name=title]');
        this.description = this.settingsPopup.find('textarea[name=description]');

        this.title.val(data.title);
        this.description.val(data.description);

        this.settingsPopup.modal();

        this.confirmButton.off().on('click', $.proxy(saveSettings, context));
    };

    var saveSettings = function () {
        if( this.data.options !== undefined ) {
            if( this.data.options.mode == 'fade' ) {
                this.imageIndex++;
            }
        }
        var data = {
            method: 'saveSettings',
            title: this.title.val(),
            description: this.description.val(),
            index: this.imageIndex,
            imageIndex: this.imageIndex
        };
        this.$widgetObject.save(data, 1);
        this.settingsPopup.modal('hide');
    };

};

