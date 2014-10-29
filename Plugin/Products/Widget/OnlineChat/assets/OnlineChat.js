/**
* @package ImpressPages
*
*/

var IpWidget_OnlineChat = function () {

    this.widgetObject = null;
    this.confirmButton = null;
    this.popup = null;
    this.data = {};
    this.yahoo = '';
    this.skype = '';

    this.init = function (widgetObject, data) {

        this.widgetObject = widgetObject;
        this.data = data;

        var context = this; // set this so $.proxy would work below

        this.$widgetOverlay = $('<div></div>');
        this.widgetObject.prepend(this.$widgetOverlay);
        this.$widgetOverlay.on('click', $.proxy(openPopup, this));

        $(document).on('ipWidgetResized', function () {
            $.proxy(fixOverlay, context)();
        });
        $(window).on('resize', function () {
            $.proxy(fixOverlay, context)();
        });
        $.proxy(fixOverlay, context)();
    };


    var fixOverlay = function () {
        this.$widgetOverlay
            .css('position', 'absolute')
            .css('z-index', 1000) // should be higher enough but lower than widget controls
            .width(this.widgetObject.width())
            .height(Math.max(this.widgetObject.height(), 30));
    };


    this.onAdd = function () {
        $.proxy(openPopup, this)();
    };

    var openPopup = function () {
        this.popup = $('#ipWidgetOnlineChatPopup');
        this.confirmButton = this.popup.find('.ipsConfirm');
        this.yahoo = this.popup.find('input[name=yahoo]');
        this.skype = this.popup.find('input[name=skype]');

        if (this.data.yahoo) {
            this.yahoo.val(this.data.yahoo);
        } else {
            this.yahoo.val(''); // cleanup value if it was set before
        }

        if (this.data.skype) {
            this.skype.val(this.data.skype);
        } else {
            this.skype.val(''); // cleanup value if it was set before
        }

        this.popup.modal(); // open modal popup

        this.confirmButton.off(); // ensure we will not bind second time
        this.confirmButton.on('click', $.proxy(save, this));
    };

    var save = function () {
        var data = {
            yahoo: this.yahoo.val(),
            skype: this.skype.val()
        };

        this.widgetObject.save(data, 1); // save and reload widget
        this.popup.modal('hide');
    };

};

