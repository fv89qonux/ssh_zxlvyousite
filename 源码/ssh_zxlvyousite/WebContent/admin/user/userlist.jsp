<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
 
    <TD background=images/title_bg1.jpg> <span style="float:left">当前位置是：注册用户管理-》注册用户信息</span></TD></TR>
</TABLE>
   <div class="div_search">
<form action="method!userlist"  method="post">
姓名：<input name="truename" type="text"  value="${truename }">
<input type="submit"  value="查询"/>
</form>
 </div>


   <table class="table_a" border="1" width="100%"> 	
  <tr style="font-weight: bold;">
    <TD align="center" >用户名</TD>
    <TD align="center" >姓名</TD>
    <TD align="center" >性别</TD>
    <TD align="center" >年龄</TD>
      <TD align="center" >籍贯</TD>
    <TD align="center" >地址</TD>
    <TD align="center" >电话</TD>
    <TD align="center" >电子邮箱</TD>
   <TD align="center" >添加时间</TD>
     <TD align="center" >操作</TD>
   
    </TR>
    <c:forEach items="${list}"  var="bean">

    <tr id="product1">
    <TD align="center" >${bean.username }</TD>
   
    <TD align="center" >${bean.truename }</TD>
     <TD align="center" >${bean.xingbie }</TD>
      <TD align="center" >${bean.age }</TD>
       <TD align="center" >${bean.jiguan }</TD>
    <TD align="center" >${bean.address }</TD>
    <TD align="center" >${bean.telephone }</TD>
    <TD align="center" >${bean.email }</TD>
    <TD align="center" >${fn:substring(bean.createtime,0, 19)}</TD>
     <td><a href="method!userdelete?id=${bean.id }">删除</a> </td>
    </TR>
    </c:forEach>
    
     <tr id="product1">
    <TD align="center" colspan="21" >${pagerinfo }</TD>

  	
    </TR>
    
    
    </TABLE>


 </BODY></HTML>
