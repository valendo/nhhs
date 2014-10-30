var tinyMceEditorRecall = ipTinyMceConfig;

var ipTinyMceConfig = function () {
    var tinyMceDefault = tinyMceEditorRecall();
	tinyMceDefault.height = 400;
    tinyMceDefault.style_formats = [
		{title : 'Header 1', block: 'h1'},
		{title : 'Header 2', block : 'h2'},
		{title : 'Header 3', block : 'h3'},
		{title : 'Header 4', block : 'h4'},
		{title : 'Header 5', block : 'h5'},
		{title : 'Paragraph', block : 'p'}
    ];
    tinyMceDefault.valid_elements = tinyMceDefault.valid_elements + ',h1,h2,h3,h4,h5';
	tinyMceDefault.plugins = tinyMceDefault.plugins + ', responsivefilemanager, image, code, textcolor, media';
    tinyMceDefault.toolbar1 =  'forecolor backcolor | underline ' + tinyMceDefault.toolbar1;
    tinyMceDefault.toolbar2 = tinyMceDefault.toolbar2 + ' | image media | code';
    tinyMceDefault.external_filemanager_path = ip.baseUrl + 'Plugin/TinyMceComplete/filemanager/';

    if (!tinyMceDefault.external_plugins) {
        tinyMceDefault.external_plugins = {};
    }
    tinyMceDefault.external_plugins.filemanager = ip.baseUrl + "Plugin/TinyMceComplete/assets/fileManager/plugin.min.js";
    tinyMceDefault.external_plugins.responsivefilemanager = ip.baseUrl + "Plugin/TinyMceComplete/assets/responsivefilemanager/plugin.min.js";

    tinyMceDefault.filemanager_title = "Responsive Filemanager";
    tinyMceDefault.valid_elements = tinyMceDefault.valid_elements + ',img[src|alt|width|height]';
    return tinyMceDefault;
}