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
<style type="text/css">
.iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
.iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
</style>
</head>

<body>
<!--[if IE 6]>
    <script type="text/javascript" src="js/DD_belatedPNG.js"></script>
    <script type="text/javascript">
    DD_belatedPNG.fix('div.menu ul li,.more');
    </script>
<![endif]-->
<jsp:include page="top.jsp"></jsp:include>
<div class="clear"></div>
<input type="hidden" name="id" value="${bean.id }"/>
<div class="wt1002 fwmain">
	<div class="fwmain_nright r mTop10">
    	<div class="label">
        	<div class="label_head"><div class="label_title">${bean.biaoti}</div></div>
            <div class="about_con">
            	<p>&nbsp;&nbsp;&nbsp;&nbsp;${bean.content}</p>
            </div>
            <div class="page"><a href="javascript:history.go(-1);" class="print">返回</a></div>
        </div>
    </div>
    
    
    <jsp:include page="left.jsp"></jsp:include>
    <div class="clear"></div>
</div>
<jsp:include page="floot.jsp"></jsp:include>

</body>
</html>