<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../resource/layui/css/layui.css"
	media="all">
<title>Insert title here</title>
</head>
<body>

	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 30px;">
		<legend>常规用法</legend>
	</fieldset>

	<div class="layui-form">
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">中文版</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" id="test1"
						placeholder="yyyy-MM-dd">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">国际版</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" id="test1-1"
						placeholder="yyyy-MM-dd">
				</div>
			</div>
		</div>
	</div>

	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 30px;">
		<legend>其它选择器</legend>
	</fieldset>

	<div class="layui-form">
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">年范围选择器</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" id="test2"
						placeholder="yyyy">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">年月选择器</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" id="test3"
						placeholder="yyyy-MM">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">时间选择器</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" id="test4"
						placeholder="HH:mm:ss">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">日期时间选择器</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" id="test5"
						placeholder="yyyy-MM-dd HH:mm:ss">
				</div>
			</div>
		</div>
	</div>
	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 30px;">
		<legend>自定义格式</legend>
	</fieldset>

	<div class="layui-form">
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">请选择日期</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" id="test11"
						placeholder="yyyy年MM月dd日">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">请选择日期</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" id="test12"
						placeholder="dd/MM/yyyy">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">请选择月份</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" id="test13"
						placeholder="yyyyMM">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">请选择时间</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" id="test14"
						placeholder="H点m分">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">请选择范围</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" id="test15"
						placeholder=" ~ ">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">请选择范围</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" id="test16"
						placeholder="开始 到 结束">
				</div>
			</div>
		</div>
	</div>
	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 30px;">
		<legend>公历节日和自定义重要日子</legend>
	</fieldset>

	<div class="layui-form">
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">开启公历节日</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" id="test17"
						placeholder="yyyy-MM-dd">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">自定义重要日</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" id="test18"
						placeholder="yyyy-MM-dd">
				</div>
			</div>
		</div>
	</div>

	<script src="../resource/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript">
/* 	 jquery 为内置的jq模版 引入可以直接使用jq里面的方法和时间 
 */		layui.use([ 'element', 'jquery', 'laydate' ], function() {
			var laydate = layui.laydate;
			 var $= layui.jquery;

			 
			
			//中文
			laydate.render({
				elem : '#test1',

				lang : 'cn'

			})
			//国际版
			laydate.render({

				elem : '#test1-1',
				lang : 'en',

			})

			laydate.render({
				// 绑定元素
				elem : '#test2',
				//设置语言：
				lang : 'en',
				//设置类型
				type : 'year',
				// 可以设置范围
				range : true

			})
			laydate.render({
				elem : '#test3',
				type : 'month'

			})
			laydate.render({

				elem : "#test4",
				type : 'time'
			})
			laydate.render({
				elem : "#test5",
				type : 'datetime',
				lang : 'en'
			})

			// 自定义日期显示的格式
			laydate.render({
				elem : "#test11",
				format : 'yyyy MM dd'

			})
			laydate.render({

				elem : '#test12',
				format : 'dd/MM/yyyy'
			})
			laydate.render({

				elem : '#test13'

				,
				format : 'yyyy MM'
			})
			laydate.render({

				elem : '#test14',
				type : 'time'

				,
				format : 'H点m分'
			})

			// 开启农历节日
			laydate.render({

				elem : '#test17'

				,
				calendar : true

			})

			// 自定义日子  主题
			laydate.render({

				elem : '#test18',
				theme : 'molv',
				mark : {
					'0-04-14' : '生日',
					'0-04-8' : '跨年' //每年12月31日
					,
					'0-0-10' : '工资' //每个月10号
					,
					'2019-4-15' : '' //具体日期
					,
					'2019-4-20' : '预发' //如果为空字符，则默认显示数字+徽章
					,
					'2019-4-21' : '发布'
				}
			})
		})
	</script>
</body>
</html>