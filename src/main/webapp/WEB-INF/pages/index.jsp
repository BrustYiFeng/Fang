<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="//cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
    	body{
    		padding-top: 60px;
    	}
    </style>
  </head>
  <body>
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="//cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="//cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle" data-toggle="collapse" data-target="#top_collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand">租房网</a>
			</div>
			<div id="top_collapse" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a>首页</a></li>
					<li><a>新房</a></li>
					<li><a>二手房</a></li>
					<li><a>租房</a></li>
					<li><a>商铺写字楼</a></li>
					<li><a>海外地产</a></li>
					<li><a>楼讯</a></li>
					<li><a>房价</a></li>
					<li><a>问答</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<div class="container">
		<div class="col-md-9 col-sm-9 col-xs-9 row text-center">
			<ul id="top_nav" class="nav nav-pills nav-stacked col-md-3 col-sm-3 col-xs-3">
				<li class="active"><a href="#buy" data-toggle="tab">买房</a></li>
				<li><a href="#sell" data-toggle="tab">卖房</a></li>
				<li><a href="#rent" data-toggle="tab">租房</a></li>
				<li><a href="#other" data-toggle="tab">商铺写字楼</a></li>
			</ul>
		  <div class="tab-content col-md-9 col-sm-9 col-xs-9">
		    <div role="tabpanel" class="tab-pane active" id="buy">
		    	<form class="form-horizontal">
		    		<div class="form-group row">
		    			<div class="col-xs-7">
		    				<input type="text" class="form-control" placeholder="请输入小区名称、地址..." />
		    			</div>
		    			<div class="col-xs-5">
		    				<button type="button" class="btn btn-warning"><span class="glyphicon glyphicon-search"></span>二手房</button>
		    				<button type="button" class="btn btn-danger"><span class="glyphicon glyphicon-search"></span>新房</button>
		    			</div>
		    		</div>
		    	</form>
		    </div>
		    <div role="tabpanel" class="tab-pane" id="sell">
		    	<form class="form-horizontal col-xs-7">
		    		<div class="form-group">
		    			<input type="text" class="form-control" placeholder="请输入并选择小区" />
		    		</div>
		    		<div class="form-group">
		    			<button type="button" class="btn btn-warning"><span class="glyphicon glyphicon-search"></span>免费发布房源</button>
		    		</div>
		    	</form>
		    	<div class="col-xs-5">
                    <ol>
                        <li>
                            <p class="h4">在明德网发房</p>
                            <p class="h6 text-muted">简单2步即可完成发布，方便<br>快捷免费！</p>
                        </li>
                        <li>
                            <p class="h4">优质经纪人全程服务</p>
                            <p class="h6 text-muted">我们挑选优质经纪人为您服<br>务，拒绝骚扰</p>
                        </li>
                        <li>
                            <p class="h4">大量买家</p>
                            <p class="h6 text-muted">优质经纪人协助您完成办理手续</p>
                        </li>
                    </ol>
		    	</div>
		    </div>
		    <div role="tabpanel" class="tab-pane" id="rent">
		    	<form class="form-horizontal">
		    		<div class="form-group row">
		    			<div class="col-xs-7">
		    				<input type="text" class="form-control" placeholder="请输入房源特征、地址、小区、楼盘名或…" />
		    			</div>
		    			<div class="col-xs-5">
		    				<button type="button" class="btn btn-warning"><span class="glyphicon glyphicon-search"></span>租房</button>
		    				<a href="#"><span class="glyphicon glyphicon-map-marker"></span>地图找房</a>
		    			</div>
		    		</div>
		    		<div class="form-group">
		    		</div>
		    	</form>
		    </div>
		    <div role="tabpanel" class="tab-pane" id="other">
		    	<form class="form-horizontal">
		    		<div class="form-group">
						<label class="radio-inline"><input type="radio" name="sydc_type" checked/>租写字楼</label>
						<label class="radio-inline"><input type="radio" name="sydc_type"/>买写字楼</label>
						<label class="radio-inline"><input type="radio" name="sydc_type"/>买商铺</label>
						<label class="radio-inline"><input type="radio" name="sydc_type"/>租商铺</label>
		    		</div>
		    		<div class="form-group row">
		    			<div class="col-xs-7">
		    				<input type="text" class="form-control" placeholder="请输入房源特征、地址、小区、楼盘名或…" />
		    			</div>
		    			<div class="col-xs-5">
		    				<button type="button" class="btn btn-warning"><span class="glyphicon glyphicon-search"></span>租房写字楼</button>
		    			</div>
		    		</div>
		    		<div class="form-group">
		    		</div>
		    	</form>
		    </div>
		  </div>
		</div>
		<div class="col-md-3 col-sm-3 col-xs-3">
			这是右边的
		</div>
	</div>
	<script>
		$("#top_nav a").mouseover(function(){
					$(this).tab('show');
			})
	</script>
	
  </body>
</html>