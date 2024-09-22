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
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="js/boxOver.js"></script>
</head>

<body>
<jsp:include page="top.jsp"></jsp:include>
<div class="clear"></div>
<div class="wt1002 fwmain">
	<div class="fwmain_nright r mTop10">
    	<div class="label">
    	 <input type="hidden" name="id" value="${bean.id }"/>
        	<div class="label_head"><div class="label_title">
        	<c:if test="${bean.category=='自由行' }">自由行</c:if>
        	<c:if test="${bean.category=='跟团游' }">跟团游</c:if>
        	<c:if test="${bean.category=='国内游' }">国内游</c:if>
        	<c:if test="${bean.category=='国外游' }">国外游</c:if>
        	详情
        	</div></div>
           
            <div class="about_con">
            	 <div class="news_detail_title">${bean.biaoti} </div>
                 <div class="news_detail_info">
                    <div class="news_detail_from">票价:${bean.price}（元/人）</div>
                    <div class="news_detail_tool">添加时间:${bean.createtime} </div>
                 </div>
                <div class="news_detail_cont"> <div class="news_detail_cont"><img src='<%=basePath %>${bean.imgpath}'/></div>
                  <div class="news_detail_cont"><br/>
                     <span style="color: red"> 内容详情</span><br/> ${bean.content}<br/>
                     <span style="color: red">行程介绍</span><br/> ${bean.xingcheng}<br/>
                     <span style="color: red">  预订须知</span><br/> ${bean.xuzhi}<br/>
                  
                  </div>
</div>
<div class="page">
      <a href="method!sy_toursadd?id=${bean.id }" class="print">预定</a> &nbsp; 
       <a href="javascript:history.go(-1);" class="print">返回</a>
       </div>
            </div>
         	
        </div>
     
        <div class="label_head"><div class="label_title">
        	
        	用户点评详情
        	</div></div>
              <c:forEach items="${tourslist}" var="bean">
           <div class="about_con">
                    <div class="news_detail_from">${bean.content}</div><br/>
                    <div class="news_detail_tool">点评用户:${bean.user.username},${bean.createtime} </div>
                 </div>
            </c:forEach>

    </div>
    
    
    
       <jsp:include page="left.jsp"></jsp:include>
    <div class="clear"></div>
</div>
<jsp:include page="floot.jsp"></jsp:include>
</body>

</html>