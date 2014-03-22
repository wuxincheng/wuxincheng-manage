<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<script src="<%=request.getContextPath()%>/assets/js/ckeditor/ckeditor.js"></script>
	
	<script>

		// The instanceReady event is fired, when an instance of CKEditor has finished
		// its initialization.
		CKEDITOR.on( 'instanceReady', function( ev ) {
			// Show the editor name and description in the browser status bar.
			document.getElementById( 'eMessage' ).innerHTML = 'Instance <code>' + ev.editor.name + '<\/code> loaded.';
		
			// Show this sample buttons.
			document.getElementById( 'eButtons' ).style.display = 'block';
		});
		
		function InsertHTML() {
			// Get the editor instance that we want to interact with.
			var editor = CKEDITOR.instances.editor1;
			var value = document.getElementById( 'htmlArea' ).value;
		
			// Check the active editing mode.
			if ( editor.mode == 'wysiwyg' )
			{
				// Insert HTML code.
				// http://docs.ckeditor.com/#!/api/CKEDITOR.editor-method-insertHtml
				editor.insertHtml( value );
			}
			else
				alert( 'You must be in WYSIWYG mode!' );
		}
		
		function InsertText() {
			// Get the editor instance that we want to interact with.
			var editor = CKEDITOR.instances.editor1;
			var value = document.getElementById( 'txtArea' ).value;
		
			// Check the active editing mode.
			if ( editor.mode == 'wysiwyg' )
			{
				// Insert as plain text.
				// http://docs.ckeditor.com/#!/api/CKEDITOR.editor-method-insertText
				editor.insertText( value );
			}
			else
				alert( 'You must be in WYSIWYG mode!' );
		}
		
		function SetContents() {
			// Get the editor instance that we want to interact with.
			var editor = CKEDITOR.instances.editor1;
			var value = document.getElementById( 'htmlArea' ).value;
		
			// Set editor contents (replace current contents).
			// http://docs.ckeditor.com/#!/api/CKEDITOR.editor-method-setData
			editor.setData( value );
		}
		
		function GetContents() {
			// Get the editor instance that you want to interact with.
			var editor = CKEDITOR.instances.editor1;
		
			// Get editor contents
			// http://docs.ckeditor.com/#!/api/CKEDITOR.editor-method-getData
			alert( editor.getData() );
		}
		
		function ExecuteCommand( commandName ) {
			// Get the editor instance that we want to interact with.
			var editor = CKEDITOR.instances.editor1;
		
			// Check the active editing mode.
			if ( editor.mode == 'wysiwyg' )
			{
				// Execute the command.
				// http://docs.ckeditor.com/#!/api/CKEDITOR.editor-method-execCommand
				editor.execCommand( commandName );
			}
			else
				alert( 'You must be in WYSIWYG mode!' );
		}
		
		function CheckDirty() {
			// Get the editor instance that we want to interact with.
			var editor = CKEDITOR.instances.editor1;
			// Checks whether the current editor contents present changes when compared
			// to the contents loaded into the editor at startup
			// http://docs.ckeditor.com/#!/api/CKEDITOR.editor-method-checkDirty
			alert( editor.checkDirty() );
		}
		
		function ResetDirty() {
			// Get the editor instance that we want to interact with.
			var editor = CKEDITOR.instances.editor1;
			// Resets the "dirty state" of the editor (see CheckDirty())
			// http://docs.ckeditor.com/#!/api/CKEDITOR.editor-method-resetDirty
			editor.resetDirty();
			alert( 'The "IsDirty" status has been reset' );
		}
		
		function Focus() {
			CKEDITOR.instances.editor1.focus();
		}
		
		function onFocus() {
			document.getElementById( 'eMessage' ).innerHTML = '<b>' + this.name + ' is focused </b>';
		}
		
		function onBlur() {
			document.getElementById( 'eMessage' ).innerHTML = this.name + ' lost focus';
		}
	</script>
</head>
<body>
	<jsp:include page="../top.jsp" />
	
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<h4 class="page-header page-target">博客管理 - 新增博客</h4>
		<form action="<%=request.getContextPath()%>/blogInfo/doEdit" role="form" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">博客标题：</label>
			    <input type="email" class="form-control" style="width: 585px;" placeholder="请输入博客标题">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">博客类型：</label><br>
				<div class="btn-group" data-toggle="buttons">
					<label class="btn btn-info">
						<input type="radio" name="options" id="option1">新闻
					</label>
					<label class="btn btn-info">
						<input type="radio" name="options" id="option2">美女
					</label>
					<label class="btn btn-info">
						<input type="radio" name="options" id="option3">环境
					</label>
					<label class="btn btn-info">
						<input type="radio" name="options" id="option3">教育
					</label>
					<label class="btn btn-info">
						<input type="radio" name="options" id="option3">文化
					</label>
					<label class="btn btn-info">
						<input type="radio" name="options" id="option3">其它
					</label>
				</div>
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">博客来源：</label>
				<input type="text" class="form-control" style="width: 585px;" placeholder="请输入博客来源(默认是原创)">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">博客作者：</label>
			    <input type="email" class="form-control" style="width: 170px;" placeholder="请输入作者(默认是您)">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">博客内容：</label>
			    <textarea cols="100" id="editor1" name="editor1" rows="10"></textarea>
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">博客状态：</label><br>
				<div class="btn-group" data-toggle="buttons">
					<label class="btn btn-info">
						<input type="radio" name="options" id="option1">已经完成，我要发布
					</label>
					<label class="btn btn-warning">
						<input type="radio" name="options" id="option2">还未完成，存到草稿箱
					</label>
				</div>
			</div>
			<input type="submit" class="btn btn-primary btn-sm" value="保存" />
			<input type="button" class="btn btn-primary btn-sm" value="重置" />
		</form>
	</div>

	<script>
		// Replace the <textarea id="editor1"> with an CKEditor instance.
		CKEDITOR.replace( 'editor1', {
			on: {
				focus: onFocus,
				blur: onBlur,

				// Check for availability of corresponding plugins.
				pluginsLoaded: function( evt ) {
					var doc = CKEDITOR.document, ed = evt.editor;
					if ( !ed.getCommand( 'bold' ) )
						doc.getById( 'exec-bold' ).hide();
					if ( !ed.getCommand( 'link' ) )
						doc.getById( 'exec-link' ).hide();
				}
			}
		});
	</script>
	
	<jsp:include page="../bottom.jsp" />
</body>
</html>

