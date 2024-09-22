<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/uploadfile/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="css/admin.css" type="text/css" rel="stylesheet">
  <link href="./css/mine.css" type="text/css" rel="stylesheet" />



</HEAD>
<BODY>
<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
  <TR height=28>
 
    <TD background=images/title_bg1.jpg> <span style="float:left">当前位置是：度假酒店信息管理-》度假酒店信息</span></TD></TR>
    </TABLE>
    
 <div class="div_search">
<form action="method!hotellist"  method="post">

  酒店名称：<input name="name" type="text"  value="${name }">
<input type="submit"  value="查询"/>
</form>
 </div>
 
 <table class="table_a" border="1" width="100%"> 	
  	
  	 <tr style="font-weight: bold;">
    <TD align="center" >酒店名</TD>
      <TD align="center" >单价(元/日)</TD>
         <TD align="center" >联系电话</TD>
            <TD align="center" >地址</TD>
               <TD align="center" >酒店图片</TD>
                  <TD align="center" >酒店描述</TD>
    <TD align="center" >添加时间</TD>
    <TD align="center"> 
  	操作
    </TD>
    </TR>
    <c:forEach items="${list}"  var="bean">

   <tr id="product1">
    <TD align="center" >${bean.name }</TD>
     <TD align="center" >${bean.price }</TD>
      <TD align="center" >${bean.tel }</TD>
       <TD align="center" >${bean.address }</TD>
       <TD align="center" ><img src='<%=basePath %>${bean.imgpath}' width="80" height="100"/></TD>
        <TD align="center" >${bean.content }</TD>
    <TD align="center" >${fn:substring(bean.createtime,0, 19)}</TD>
    <TD align="center"> 
  	<a href="method!hotelupdate?id=${bean.id }">修改</a> &nbsp; &nbsp; &nbsp;
  	<a href="method!hoteldelete?id=${bean.id }" onclick=" return confirm('确定要删除吗?'); ">删除</a>
 
    </TD>
    </TR>
    </c:forEach>
    
    <tr id="product1">
    <TD align="center" colspan="21" >${pagerinfo }</TD>

  	
    </TR>
    
    
    </TABLE>

 </BODY></HTML>
