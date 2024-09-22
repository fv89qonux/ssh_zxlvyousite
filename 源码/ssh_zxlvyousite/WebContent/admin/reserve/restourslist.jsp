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
 
    <TD background=images/title_bg1.jpg> <span style="float:left">当前位置是：景点预定管理-》景点预定信息</span></TD></TR>
    </TABLE>
    
 <div class="div_search">
<form action="method!restourslist"  method="post">
分类：<select  name="category">
         <option value="">--所有--</option>
         <option value="自由行" <c:if test="${category=='自由行' }">selected</c:if> >自由行</option>
         <option value="跟团游" <c:if test="${category=='跟团游' }">selected</c:if>>跟团游</option>
          <option value="国内游" <c:if test="${category=='国内游' }">selected</c:if>>国内游</option>
           <option value="国外游" <c:if test="${category=='国外游' }">selected</c:if>>国外游</option>
         </select>
     预定用户：<input name="username" type="text"  value="${username }">
<input type="submit"  value="查询"/>
</form>
 </div>
 
 <table class="table_a" border="1" width="100%"> 	
  	
  	 <tr style="font-weight: bold;">
         <td >所属分类</td>
         <td >标题</td>
         <td >票价(元/人)</td>
         <td >预定用户</td>
         <td >预定票数</td>
         <td >合计费用</td>
         <td >预定日期</td>
          <td >预定状态</td>
         <td >添加时间</td>
         <td >操作</td>
    </TR>
    <c:forEach items="${list}"  var="bean">

   <tr id="product1">
        <td > ${bean.tours.category }</td>
         <td > ${bean.tours.biaoti }</td>
        <td > ${bean.tours.price }</td>
        <td > ${bean.user.username }</td>
        <td > ${bean.number }</td>
        <td ><span style="color: red">${bean.heji }</span></td>
        <td > ${bean.times }</td>
           <td > ${bean.stauts }</td>
        <td > ${fn:substring(bean.createtime,0, 16)}</td>
        <td > 
        <c:if test="${bean.stauts=='已预订' }">
        <a href="method!restoursdelete?id=${bean.id}">【取消预定】</a>
         <a href="method!reserveupdate?id=${bean.id}">【处理】</a>
        </c:if>
         <c:if test="${bean.stauts=='已使用' }">
           <a href="method!reserveupdate?id=${bean.id}">删除</a>
        </c:if>
        </td>
    </TR>
    </c:forEach>
    
    <tr id="product1">
    <TD align="center" colspan="21" >${pagerinfo }</TD>

  	
    </TR>
    
    
    </TABLE>

 </BODY></HTML>
