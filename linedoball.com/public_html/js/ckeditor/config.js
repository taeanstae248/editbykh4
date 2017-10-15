/**
 * @license Copyright (c) 2003-2017, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

 CKEDITOR.editorConfig = function(config) {
 // ...
    config.filebrowserBrowseUrl = '/greano/js/kcfinder/browse.php?opener=ckeditor&type=files';
    config.filebrowserImageBrowseUrl = '/greano/js/kcfinder/browse.php?opener=ckeditor&type=images';
    config.filebrowserFlashBrowseUrl = '/greano/js/kcfinder/browse.php?opener=ckeditor&type=flash';
    config.filebrowserUploadUrl = '/greano/js/kcfinder/upload.php?opener=ckeditor&type=files';
    config.filebrowserImageUploadUrl = '/greano/js/kcfinder/upload.php?opener=ckeditor&type=images';
    config.filebrowserFlashUploadUrl = '=/greano/js/upload.php?opener=ckeditor&type=flash';
 // ...



 config.extraPlugins = 'youtube';
 config.youtube_width = '740';
 config.youtube_height = '580';
 config.youtube_responsive = true;
 config.youtube_related = true;




 };
