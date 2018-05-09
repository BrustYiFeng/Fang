<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<style type="text/css">
		body, html {width: 100%;height: 100%;margin:0;font-family:"微软雅黑";}
		#allmap{width:100%;height:500px;}
		p{margin-left:5px; font-size:14px;}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=4IU3oIAMpZhfWZsMu7xzqBBAf6vMHcoa"></script>
	<script type="text/javascript" src="http://api.map.baidu.com/library/TextIconOverlay/1.2/src/TextIconOverlay_min.js"></script>
	<script type="text/javascript" src="http://api.map.baidu.com/library/MarkerClusterer/1.2/src/MarkerClusterer_min.js"></script>
	<script type="text/javascript" src="/js/mapdraw.js" ></script>
	<title>点聚合</title>
</head>
<body>
	<div id="allmap"></div>
	<p>缩放地图，查看点聚合效果</p>
</body>
</html>
<script src="//cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap");
	map.centerAndZoom(new BMap.Point(113.28064, 23.125177), 9);
	map.enableScrollWheelZoom();

/*	var local = new BMap.LocalSearch(map, {
	  renderOptions:{map: map}
	});
	local.searchInBounds("公交站", map.getBounds());
	
	map.addEventListener("dragend",function(){
	    map.clearOverlays();
	    local.searchInBounds("公交站", map.getBounds());
	});*/
/*
	var MAX = 10;
	var markers = [];
	var pt = null;
	var i = 0;
	for (; i < MAX; i++) {
	   pt = new BMap.Point(Math.random() * 40 + 85, Math.random() * 30 + 21);
	   markers.push(new BMap.Marker(pt));
	   var markerClusterer = new BMapLib.MarkerClusterer(map, {markers:markers});
	}*/

/*	$.get("/shenzhens/440300",function(data){
		var markers = [];
		var pt = null;
		for(var j = 0;j<data.length;j++){
			pt = new BMap.Point( data[j].lng, data[j].lat);
	   		markers.push(new BMap.Marker(pt));
		}
		//最简单的用法，生成一个marker数组，然后调用markerClusterer类即可。
		var markerClusterer = new BMapLib.MarkerClusterer(map, {markers:markers});
	})*/
	
/*	$.get("/shenzhens/440300",function(data){
		var markers = [];
		var pt = null;
		var myIcon = new BMap.Icon("http://lbsyun.baidu.com/jsdemo/img/fox.gif", new BMap.Size(300,157));
		for(var j = 0;j<data.length;j++){
			pt = new BMap.Point( data[j].lng, data[j].lat);
	   		markers.push(new BMap.Marker(pt,{icon:myIcon}));
	   		
		}
		//最简单的用法，生成一个marker数组，然后调用markerClusterer类即可。
		var markerClusterer = new BMapLib.MarkerClusterer(map, {markers:markers});
	})*/
	

		
	
	$(function(){
		

		$.get("/shenzhens/440300",function(data){
			var pt = null;
			var count = 0;
			for(var j = 0;j<data.length;j++){
			//	count++;
			//	pt = new BMap.Point( data[j].lng, data[j].lat);
		   	//	markers.push(new BMap.Marker(pt));
		   	//	if(count%10==0)
		   	//		var markerClusterer = new BMapLib.MarkerClusterer(map, {markers:markers});
		   			var marker = new ComplexCustomOverlay(new BMap.Point( data[j].lng, data[j].lat),data[j].areaname,data[j].areaname+"发你");
		   			map.addOverlay(marker);  
	   			
			}
			//最简单的用法，生成一个marker数组，然后调用markerClusterer类即可。
			
		})
	})









/*	$.get("/shenzhens/440300",function(data){
		var markers = [];
		var pt = null;
		for(var j = 0;j<data.length;j++){
			pt = new BMap.Point( data[j].lng, data[j].lat);
	   		markers.push(new BMap.Marker(pt,{icon:myIcon}));
	   		var myCompOverlay = new ComplexCustomOverlay(pt, data[j].areaname,data[j].areaname+data[j].sort+"套");

    		map.addOverlay(myCompOverlay);
		}
		//最简单的用法，生成一个marker数组，然后调用markerClusterer类即可。
		//var markerClusterer = new BMapLib.MarkerClusterer(map, {markers:markers});
	})*/
</script>
