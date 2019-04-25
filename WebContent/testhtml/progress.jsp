<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=uft-8">

<link rel="stylesheet" href="../resource/layui/css/layui.css"
	media="all">
<title>optionCard</title>
</head>
<body>
	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 20px;">
		<legend>默认风格的进度条</legend>
	</fieldset>

	<div class="layui-progress">
		<div class="layui-progress-bar" lay-percent="40%"></div>
	</div>
	<div style="margin-top: 15px; width: 300px">
		<div class="layui-progress">
			<div class="layui-progress-bar" lay-percent="70%"></div>
		</div>
	</div>

	<br> 温馨提示：进度条的宽度是100%适配于它的父级元素，如上面的进度条是在一个300px的父容器中。

	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 50px;">
		<legend>更多颜色选取</legend>
	</fieldset>

	<div class="layui-progress">
		<div class="layui-progress-bar layui-bg-red" lay-percent="20%"></div>
	</div>

	<br>

	<div class="layui-progress">
		<div class="layui-progress-bar layui-bg-orange" lay-percent="30%"></div>
	</div>

	<br>

	<div class="layui-progress">
		<div class="layui-progress-bar layui-bg-green" lay-percent="40%"></div>
	</div>

	<br>

	<div class="layui-progress">
		<div class="layui-progress-bar layui-bg-blue" lay-percent="50%"></div>
	</div>

	<br>

	<div class="layui-progress">
		<div class="layui-progress-bar layui-bg-cyan" lay-percent="60%"></div>
	</div>

	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 50px;">
		<legend>大尺寸进度条</legend>
	</fieldset>
	<div class="layui-progress layui-progress-big">
		<div class="layui-progress-bar" lay-percent="20%"></div>
	</div>

	<br>
	<div class="layui-progress layui-progress-big">
		<div class="layui-progress-bar layui-bg-green" lay-percent="35%"></div>
	</div>
	<br>
	<div class="layui-progress layui-progress-big">
		<div class="layui-progress-bar layui-bg-cyan" lay-percent="75%"></div>
	</div>

<fieldset class="layui-elem-field layui-field-title" style="margin: 50px 0 30px;">
  <legend>显示进度比文本</legend>
</fieldset>
<div class="layui-progress" lay-showpercent="true">
  <div class="layui-progress-bar" lay-percent="20%"></div>
</div>
 
<br>
 
<div class="layui-progress" lay-showpercent="true">
  <div class="layui-progress-bar" lay-percent="5 / 10"></div>
</div>
 
<br>
 
<div class="layui-progress layui-progress-big" lay-showpercent="true">
  <div class="layui-progress-bar" lay-percent="70%"></div>
</div>
 
<br>
正如你上述看到的，除了百分数，还支持分数（layui 2.1.7 新增）

	<script src="../resource/layui/layui.js" charset="utf-8"></script>

	<script>
		layui.use('element', function() {
			var $ = layui.jquery, element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

			//触发事件
			var active = {
				tabAdd : function() {
					//新增一个Tab项
					element.tabAdd('demo', {
						title : '新选项' + (Math.random() * 1000 | 0) //用于演示
						,
						content : '内容' + (Math.random() * 1000 | 0),
						id : new Date().getTime()
					//实际使用一般是规定好的id，这里以时间戳模拟下
					})
				},
				tabDelete : function(othis) {
					//删除指定Tab项
					element.tabDelete('demo', '44'); //删除：“商品管理”

					othis.addClass('layui-btn-disabled');
				},
				tabChange : function() {
					//切换到指定Tab项
					element.tabChange('demo', '22'); //切换到：用户管理
				}
			};

			$('.site-demo-active').on('click', function() {
				var othis = $(this), type = othis.data('type');
				active[type] ? active[type].call(this, othis) : '';
			});

			//Hash地址的定位
			var layid = location.hash.replace(/^#test=/, '');
			element.tabChange('test', layid);

			element.on('tab(test)', function(elem) {
				location.hash = 'test=' + $(this).attr('lay-id');
			});

		});
	</script>

</body>
</html>