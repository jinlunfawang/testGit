<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../resource/layui/css/layui.css"
	media="all">
<title>upload</title>
</head>
<body>

	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 30px;">
		<legend>常规使用：普通图片上传</legend>
	</fieldset>

	<div class="layui-upload">
		<button type="button" class="layui-btn" id="test1">上传图片</button>
		<div class="layui-upload-list">
			<img class="layui-upload-img" width="100px" height="100px" id="demo1">
			<p id="demoText"></p>
		</div>
	</div>

	<script src="../resource/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript">
		layui.use(['form','jquery','layer','table','upload'],function(){
			
			var form=layui.form;
			var $=layui.jquery;
			var layer=layui.layer;
			var table=layui.table;
			var upload=layui.upload;
			
		})
	</script>
</body>
</html>