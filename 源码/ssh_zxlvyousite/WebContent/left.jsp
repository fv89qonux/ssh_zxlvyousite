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
  
    <div class="fwmain_nleft l mTop10">
      <!-- 登录模块 -->
     <input type="hidden" name="id" value="${bean.id }"/>
    	<div class="label_head " ><div class="label_title">登录</div></div>
    	<div class="label_contents">
        	<ul class="label_pad mTop10">
            	 <c:if test="${user==null}">
        <form action="method!ulogin" method="post" onsubmit="return checkform()" >
          <h4> 账&nbsp;&nbsp;&nbsp;号：<input type="text" name="username" size="15" id="usernameid" /> </h4>
         <h4>  密&nbsp;&nbsp;&nbsp;码：<input type="password" name="password" size="15" id="passwordid" /> </h4>
          <input style="width:75px; height:25px;" type="submit" name="submit"  value="登陆"  />  
          <input style="width:75px; height:25px;" type="reset" name="reset"  value="重置"  />  
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="javascript:;" onClick="javascript:window.open('register.jsp','','width=460,height=460,left=550, top=350,toolbar=no, status=no, menubar=no, resizable=yes, scrollbars=yes');return false;">新用户注册</a>
          </form>      
        </c:if>
     <!-- 登录中模块 -->
        <c:if test="${user!=null  }">
            <form action="method!uloginout" method="post"  >
          <h4> 当前用户：${user.username }  </h4>
         <h4> 当前状态：登录中 </h4>
         <input style="width:200px; height:25px;" type="submit" name="submit"  value="退出"  />
          <a href="javascript:;" onClick="javascript:window.open('method!userupdate?id=${user.id }','','width=460,height=460,left=550, top=350,toolbar=no, status=no, menubar=no, resizable=yes, scrollbars=yes');return false;">个人信息修改</a> 
           </form>   
           </c:if>
            </ul>
        </div>
        
        
            <%
org.springframework.web.context.WebApplicationContext app4 = org.springframework.web.context.support.WebApplicationContextUtils.getWebApplicationContext(request.getSession().getServletContext());
dao.GonggaoDao gonggaoDao = (dao.GonggaoDao)app4.getBean("gonggaoDao");
List<model.Gonggao> gonggaolist = gonggaoDao.selectBeanList(0,10," where gonggaolock=0 ");
dao.RaidersDao raidersDao = (dao.RaidersDao)app4.getBean("raidersDao");
List<model.Raiders> raiderslist = raidersDao.selectBeanList(0,10," where raiderslock=0 ");
%>
        
          <!-- 其他模块 -->
        <div class="label_head mTop10" ><div class="label_title">旅游攻略</div></div>
    	<div class="label_contents">
    	 <%
        for(model.Raiders bean:raiderslist){

        %>
        	<h1><a href="method!xq_raiders?id=<%=bean.getId() %>"><%=bean.getName() %></a></h1>
             <% 
        }
        %>
        </div>
        
        <div class="label_head mTop10"><div class="label_title">公告</div></div>
    	<div class="label_contents">
    	 <%
        for(model.Gonggao bean:gonggaolist){

        %>
        	<h1><a href="method!xq_gonggao?id=<%=bean.getId() %>"><%=bean.getBiaoti() %></a></h1>
        	  <% 
        }
        %>
        </div>
        
        <div class="label_head mTop10"><div class="label_title">联系我们</div></div>
    	<div class="label_contents">
        <ul class="label_pad mTop10">
            	<div>地 址：XX市XX路XX号10楼</div>
                <div>电 话：000-000000</div>
                <div>传 真：000-000000 </div>
                <div>邮 箱：123456@XX.com</div>
            </ul>
        </div>
        
        
        
        
    </div>

</body>
</html>