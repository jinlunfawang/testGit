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
	<div class="layui-tab">
		<ul class="layui-tab-title">
			<li >网站设置</li>
			<!-- class="layui-this" 当前默认被选中的选项卡 -->
			<li class="layui-this">用户管理</li>
			<li>权限分配</li>
			<li>商品管理</li>
			<li>订单管理</li>
		</ul>
		<div class="layui-tab-content">
			<div class="layui-tab-item layui-show">
				1. 高度默认自适应，也可以随意固宽。 <br>2. Tab进行了响应式处理，所以无需担心数量多少。
			</div>
			<div class="layui-tab-item">内容2</div>
			<div class="layui-tab-item">内容3</div>
			<div class="layui-tab-item">内容4</div>
			<div class="layui-tab-item">内容5</div>
		</div>
	</div>
	
	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
  <legend>简洁风格的Tab</legend>
</fieldset>
 
<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
  <ul class="layui-tab-title">
    <li class="layui-this">网站设置</li>
    <li>用户管理</li>
    <li>权限分配</li>
    <li>商品管理</li>
    <li>订单管理</li>
  </ul>
  <div class="layui-tab-content" style="height: 100px;">
    <div class="layui-tab-item layui-show">内容不一样是要有，因为你可以监听tab事件（阅读下文档就是了）</div>
    <div class="layui-tab-item">内容2</div>
    <div class="layui-tab-item">内容3</div>
    <div class="layui-tab-item">内容4</div>
    <div class="layui-tab-item">内容5</div>
  </div>
</div> 
 
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
  <legend>卡片风格的Tab</legend>
</fieldset>
 
<div class="layui-tab layui-tab-card">
  <ul class="layui-tab-title">
    <li class="layui-this">网站设置</li>
    <li>用户管理</li>
    <li>权限分配</li>
    <li>商品管理</li>
    <li>订单管理</li>
  </ul>
  <div class="layui-tab-content" style="height: 100px;">
    <div class="layui-tab-item layui-show">默认宽度是相对于父元素100%适应的，你也可以固定宽度。</div>
    <div class="layui-tab-item">2</div>
    <div class="layui-tab-item">3</div>
    <div class="layui-tab-item">4</div>
    <div class="layui-tab-item">5</div>
    <div class="layui-tab-item">6</div>
  </div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
  <legend>带删除功能的Tab</legend>
</fieldset>
 
<div class="layui-tab layui-tab-card" lay-allowclose="true">
  <ul class="layui-tab-title">
    <li class="layui-this">网站设置</li>
    <li>用户基本管理</li>
    <li>权限分配</li>
    <li>商品管理</li>
    <li>订单管理</li>
  </ul>
  <div class="layui-tab-content" style="height: 150px;">
    <div class="layui-tab-item layui-show">
      1. 我个人比较喜欢卡片风格的，所以你发现又是以卡片的风格举例
      2. 删除功能适用于所有风格
    </div>
    <div class="layui-tab-item">2</div>
    <div class="layui-tab-item">3</div>
    <div class="layui-tab-item">4</div>
    <div class="layui-tab-item">5</div>
    <div class="layui-tab-item">6</div>
  </div>
</div>  
	
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