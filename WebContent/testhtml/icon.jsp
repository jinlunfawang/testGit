<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../resource/layui/css/layui.css"  media="all">
 <script src="../resource/layui/layui.js" charset="utf-8"></script>
<title>图标</title>
</head>
<body>
	<span>从 layui 2.3.0 开始，支持 font-class 的形式定义图标：</span>
	<i class="layui-icon layui-icon-face-smile"
		style="font-size: 30px; color: #1E9FFF;"></i>
	<span>注意：在 layui 2.3.0 之前的版本，只能设置 unicode 来定义图标 其中的 &#xe60c;
		即是图标对应的 unicode 字符</span>

	<i class="layui-icon">&#xe60c;</i>
	<div class="layui-icon">&#xe605</div>



</body>
</html>