﻿/*Copyright (c) 2003-2010, CKSource - Frederico Knabben. All rights reserved.For licensing, see LICENSE.html or http://ckeditor.com/license*/CKEDITOR.editorConfig = function( config ){	// Define changes to default configuration here. For example:	// config.language = 'zh';	// config.uiColor = '#AADC6E';	config.skin = 'kama';	config.font_names = '宋体;楷体_GB2312;新宋体;黑体;隶书;幼圆;微软雅黑;Arial;Comic Sans MS;Courier New;Tahoma;Times New Roman;Verdana;' ;	config.toolbar_Full = [       ['Source','-','NewPage','Preview','-','Templates'],       ['PasteText','PasteFromWord','-','Print', 'SpellChecker', 'Scayt'],       ['Undo','Redo','-','Find','-','SelectAll','RemoveFormat'],       ['Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton', 'HiddenField'],       ['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],        ['NumberedList','BulletedList','-','Outdent','Indent','Blockquote'],        ['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],        ['Link','Unlink','Anchor'],       ['Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak'],       '/',        ['Styles','Format','Font','FontSize'],        ['TextColor','BGColor']    ];     config.width = '98%';//宽度     config.height = 200;//高度     config.resize_minHeight = 250; //改变大小的最小高度     config.resize_minWidth = 300;//改变大小的最小宽度};