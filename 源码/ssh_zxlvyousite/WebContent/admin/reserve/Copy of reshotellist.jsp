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
 
    <TD background=images/title_bg1.jpg> <span style="float:left">当前位置是：旅游(游行)信息管理-》旅游(游行)信息信息</span></TD></TR>
    </TABLE>
    
 <div class="div_search">
<form action="method!tourslist"  method="post">
分类：<select  name="category">
         <option value="">--所有--</option>
         <option value="自由行" <c:if test="${category=='自由行' }">selected</c:if> >自由行</option>
         <option value="跟团游" <c:if test="${category=='跟团游' }">selected</c:if>>跟团游</option>
          <option value="国内游" <c:if test="${category=='国内游' }">selected</c:if>>国内游</option>
           <option value="国外游" <c:if test="${category=='国外游' }">selected</c:if>>国外游</option>
         </select>
   标题：<input name="biaoti" type="text"  value="${biaoti }">
<input type="submit"  value="查询"/>
</form>
 </div>
 
 <table class="table_a" border="1" width="100%"> 	
  	
  	 <tr style="font-weight: bold;">
    <TD align="center" >分类</TD>
      <TD align="center" >标题</TD>
         <TD align="center" >票价（元/人）</TD>
            <TD align="center" >图片</TD>
               <TD align="center" >内容详情</TD>
                  <TD align="center" >行程介绍 </TD>
                      <TD align="center" >预订须知 </TD>
    <TD align="center" >添加时间</TD>
    <TD align="center"> 
  	操作
    </TD>
    </TR>
    <c:forEach items="${list}"  var="bean">

   <tr id="product1">
    <TD align="center" >${bean.category }</TD>
     <TD align="center" >${bean.biaoti }</TD>
      <TD align="center" >${bean.price }</TD>
       <TD align="center" ><img src='<%=basePath %>${bean.imgpath}' width="80" height="100"/></TD>
        <TD align="center" >${bean.content }</TD>
         <TD align="center" >${bean.xingcheng }</TD>
          <TD align="center" >${bean.xuzhi }</TD>
    <TD align="center" >${fn:substring(bean.createtime,0, 19)}</TD>
    <TD align="center"> 
  	<a href="method!toursupdate?id=${bean.id }">修改</a> &nbsp; &nbsp; &nbsp;
  	<a href="method!toursdelete?id=${bean.id }" onclick=" return confirm('确定要删除吗?'); ">删除</a>
 
    </TD>
    </TR>
    </c:forEach>
    
    <tr id="product1">
    <TD align="center" colspan="21" >${pagerinfo }</TD>

  	
    </TR>
    
    
    </TABLE>

 </BODY></HTML>
