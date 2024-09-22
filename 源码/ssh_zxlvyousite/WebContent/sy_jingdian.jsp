<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/uploadfile/";
%>
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
<jsp:include page="top.jsp"></jsp:include>


<div class="clear"></div>
<div class="wt1002 fwmain">
	<div class="fwmain_nright r mTop10">
    	<div class="label">
        	<div class="label_head"><div class="label_title">景点列表</div></div>
<div>
<form action="method!sy_jingdian"  method="post">
 &nbsp; &nbsp; 景点名称：<input name="name" type="text"  value="${name }">
<input type="submit"  value="查询"/>
</form>
 </div>
              <ul class="prolist mTop10">
               <c:forEach items="${list}"  var="bean">
           <li><a href="method!xq_jingdian?id=${bean.id }"><img src="<%=basePath %>${bean.imgpath}"/></a><a href="method!xq_jingdian?id=${bean.id }">${bean.name }</a></li>
             </c:forEach>
            </ul> 
            <div class="clear"></div>
            <div class="page">${pagerinfo }</div>
        </div>
     </div>
       <jsp:include page="left.jsp"></jsp:include>
    <div class="clear"></div>
</div>
<jsp:include page="floot.jsp"></jsp:include>
</body>
</html>