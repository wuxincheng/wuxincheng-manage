/**
 * @license Copyright (c) 2003-2014, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.html or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	
	/*
	var contextPath = location.pathname;
	var index =contextPath.substr(1).indexOf("/");
	contextPath = contextPath.substr(0,index+1);
	config.baseHref = location.protocol + "//" + location.hostname + contextPath;
	 */
	
	config.height = 300; // 设置高度 
	
	config.language = 'zh-cn';
    config.baseFloatZIndex = 19900;
	
	config.filebrowserBrowseUrl = '/wuxincheng-manage/ckfinder/ckfinder.html';    
    config.filebrowserImageBrowseUrl = '/wuxincheng-manage/ckfinder/ckfinder.html?type=Images';
    config.filebrowserFlashBrowseUrl = '/wuxincheng-manage/ckfinder/ckfinder.html?type=Flash';
	config.filebrowserUploadUrl = '/wuxincheng-manage/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files';
	config.filebrowserImageUploadUrl = '/wuxincheng-manage/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images';
	config.filebrowserFlashUploadUrl = '/wuxincheng-manage/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash';
	
	// 配置指定字体（自己想要什么字体就配什么字体）
	// config.font_names = '微软雅黑;Arial;宋体;楷体_GB2312;新宋体;黑体;隶书;幼圆;Courier New';
	
	// 设置工具栏可折叠（减少toolbar的占用空间）
	// config.toolbarCanCollapse = true;
	
};
