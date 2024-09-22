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
        	<div class="label_head"><div class="label_title">度假酒店详情</div></div>
            <input type="hidden" name="id" value="${bean.id }"/>
            <div class="about_con">
            	 <div class="news_detail_title">${bean.name} </div>
                 <div class="news_detail_info">
                    <div class="news_detail_from">单价:${bean.price}（元/日）</div>
                    <div class="news_detail_tool">地址:${bean.address} </div>
                    <div class="news_detail_tool">联系电话：${bean.tel}，</div>
                 </div>
                <div class="news_detail_cont"> <div class="news_detail_cont"><img src='<%=basePath %>${bean.imgpath}'/></div>
                 <div class="news_detail_cont">${bean.content}</div>
</div>
            </div>
        </div>
        
        <div class="label_head"><div class="label_title">
        	用户点评详情
        	</div></div>
              <c:forEach items="${hotellist}" var="bean">
           <div class="about_con">
                    <div class="news_detail_from">${bean.content}</div><br/>
                    <div class="news_detail_tool">点评用户:${bean.user.username},${bean.createtime} </div>
                 </div>
            </c:forEach>
            
              <form action="method!hotel_dianpingadd"method="post" onsubmit="return checkform()">
                <div class="about_con">&nbsp;&nbsp;&nbsp;&nbsp;  
                <input type="hidden" name="id" value="${bean.id }"/>
                <textarea class="ckeditor"  name="content" id="contentid"></textarea>  
                <input style="width:40px; height:25px;" type="submit" value="提交">&nbsp; 
                <input style="width:40px; height:25px;" onclick="javascript:history.go(-1);"  type="button" value="返回" />
                </div>
             </form>

    </div>
       <jsp:include page="left.jsp"></jsp:include>
    <div class="clear"></div>
</div>
<jsp:include page="floot.jsp"></jsp:include>
</body>
</html>