<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link href="css/main.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<link rel="stylesheet" type="text/css" href="css/lanrenzhijia.css" media="screen" />
<script type="text/javascript" src="js/lanrenzhijia.js"></script>
<script src="js/jquery.superslide.2.1.1.js" type="text/javascript"></script>

</head>
<body>
<!--[if IE 6]>
    <script type="text/javascript" src="js/DD_belatedPNG.js"></script>
    <script type="text/javascript">
    DD_belatedPNG.fix('div.menu ul li,.more');
    </script>
<![endif]-->
<div class="top">
 
	<div class="wt1002">
	
        <div class="r" style="float:left;width:20%">
            <div class="toplink">
            </div>
            
          <span style="font-size: 30px;font-weight: bold;color: blue; align:center ">
   旅游系统
    </span>
        </div>

    </div>
</div>
<div class="menu">
    <div class="wt1002">
    	<ul id="ulMenu">
            <li style="width:80px"><a href="index.jsp">首页</a></li>
            <li style="width:80px"><a href="method!sy_tours?category=自由行">自由行</a></li>
            <li style="width:80px"><a href="method!sy_tours?category=跟团游">跟团游</a></li>
            <li style="width:80px"><a href="method!sy_tours?category=国内游">国内游</a></li>
            <li style="width:80px"><a href="method!sy_tours?category=国外游">国外游</a></li>
            <li style="width:80px"><a href="method!sy_jingdian">最佳景点</a></li>
            <li style="width:80px"><a href="method!sy_hotel">度假酒店</a></li>
            <li style="width:80px"><a href="method!sy_raiders">旅游攻略</a></li>
            <li style="width:85px"><a href="method!sy_line">自驾游路线</a></li>
            <li style="width:80px"><a href="method!sy_gonggaolist">公告</a></li>
            <li style="width:80px"><a href="method!sy_reserve">我的预定</a></li>
            <li style="width:80px"><a target="_blank" href="admin/login.jsp">后台登录</a></li>
                
        </ul>    
    </div>
</div>
<div class="wt1002">
	<div id="full-screen-slider">
        <ul id="slides">
            <li style="background:url('images/1.jpg') no-repeat center top"></li>
            <li style="background:url('images/2.jpg') no-repeat center top"></li> 
              <li style="background:url('images/4.jpg') no-repeat center top"></li> 
               <li style="background:url('images/3.jpg') no-repeat center top"></li> 
           
        </ul>
    </div>
</div>
</body>
</html>