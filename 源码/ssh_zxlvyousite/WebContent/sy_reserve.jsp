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
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
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
 
<div class="wt1002 fwmain">
	<div class="fwmain_nright r mTop10">
    	<div class="label">
    	
    	  <input type="hidden" name="id" value="${bean.id }"/>
        	
        	<!-- 酒店预定 -->
        	<div class="label_head"><div class="label_title">酒店预定列表</div></div>
            <div class="about_con">
            	 <table width="100%" border="1"  cellpadding="0" cellspacing="0" style="background-color: #b9d8f3;">
        <tr style="text-align: center; COLOR: #0076C8; BACKGROUND-COLOR: #F4FAFF; font-weight: bold">
         <td >酒店名称</td>
         <td >地址</td>
         <td >单价(元/日)</td>
         <td >预定用户</td>
         <td >预定天数</td>
         <td >预定房间数量</td>
         <td >合计费用</td>
         <td >预定日期</td>
          <td >预定状态</td>
         <td >添加时间</td>
         <td >操作</td>
         </tr>
         
          <c:forEach items="${hotellist}" var="bean">
        
          <tr style="text-align: center; COLOR: #0076C8; BACKGROUND-COLOR: #F4FAFF; font-weight: bold">
        <td > ${bean.hotel.name }</td>
        <td > ${bean.hotel.address }</td>
        <td > ${bean.hotel.price }</td>
        <td > ${bean.user.username }</td>
        <td > ${bean.tianshu }</td>
        <td > ${bean.number }</td>
        <td ><span style="color: red">${bean.heji }</span></td>
        <td > ${bean.times }</td>
           <td > 
            <c:if test="${bean.stauts=='已预订' }"> ${bean.stauts }</c:if> 
             <c:if test="${bean.stauts=='已使用' }"> <span style="color: green">${bean.stauts }</span></c:if> 
           </td>
        <td > ${fn:substring(bean.createtime,0, 16)}</td>
        <td > 
          <c:if test="${bean.stauts=='已预订' }">
        <a href="method!sy_delete?id=${bean.id}">退订</a>
         </c:if> 
        <c:if test="${bean.stauts=='已使用' }">
         <a href="method!xq_hotel2?id=${bean.hotel.id}"><span style="color: green">点评</span></a>
        </c:if> 
        </td>
         </tr>
          </c:forEach>
         </table>
         <br/>
             </div>
             
             
             <!-- 景点预定 -->
        	<div class="label_head"><div class="label_title">景点预定列表</div></div>
            <div class="about_con">
            	 <table width="100%" border="1"  cellpadding="0" cellspacing="0" style="background-color: #b9d8f3;">
        <tr style="text-align: center; COLOR: #0076C8; BACKGROUND-COLOR: #F4FAFF; font-weight: bold">
         <td >景点名称</td>
         <td >地址</td>
         <td >票价(元/人)</td>
         <td >预定用户</td>
         <td >预定票数</td>
         <td >合计费用</td>
         <td >预定日期</td>
          <td >预定状态</td>
         <td >添加时间</td>
         <td >操作</td>
         </tr>
          <c:forEach items="${jingdianlist}" var="bean">
          <tr style="text-align: center; COLOR: #0076C8; BACKGROUND-COLOR: #F4FAFF; font-weight: bold">
        <td > ${bean.jingdian.name }</td>
        <td > ${bean.jingdian.address }</td>
        <td > ${bean.jingdian.price }</td>
        <td > ${bean.user.username }</td>
        <td > ${bean.number }</td>
        <td ><span style="color: red">${bean.heji }</span></td>
        <td > ${bean.times }</td>
         <td > 
            <c:if test="${bean.stauts=='已预订' }"> ${bean.stauts }</c:if> 
             <c:if test="${bean.stauts=='已使用' }"> <span style="color: green">${bean.stauts }</span></c:if> 
           </td>
        <td > ${fn:substring(bean.createtime,0, 16)}</td>
       <td > 
          <c:if test="${bean.stauts=='已预订' }">
        <a href="method!sy_delete?id=${bean.id}">退订</a>
         </c:if> 
        <c:if test="${bean.stauts=='已使用' }">
         <a href="method!xq_jingdian2?id=${bean.jingdian.id}"><span style="color: green">点评</span></a>
        </c:if> 
        </td>
         </tr>
          </c:forEach>
         </table>
         <br/>
             </div>
             
             
           <!-- 旅游(游行)预定 -->
        	<div class="label_head"><div class="label_title">旅游(游行)预定列表</div></div>
            <div class="about_con">
            <form action="method!sy_reserve"  method="post">
分类：<select  name="category">
         <option value="">--所有--</option>
         <option value="自由行" <c:if test="${category=='自由行' }">selected</c:if> >自由行</option>
         <option value="跟团游" <c:if test="${category=='跟团游' }">selected</c:if>>跟团游</option>
          <option value="国内游" <c:if test="${category=='国内游' }">selected</c:if>>国内游</option>
           <option value="国外游" <c:if test="${category=='国外游' }">selected</c:if>>国外游</option>
         </select>
<input type="submit"  value="查询"/>
</form>
            	 <table width="100%" border="1"  cellpadding="0" cellspacing="0" style="background-color: #b9d8f3;">
        <tr style="text-align: center; COLOR: #0076C8; BACKGROUND-COLOR: #F4FAFF; font-weight: bold">
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
         </tr>
          <c:forEach items="${tourslist}" var="bean">
          <tr style="text-align: center; COLOR: #0076C8; BACKGROUND-COLOR: #F4FAFF; font-weight: bold">
        <td > ${bean.tours.category }</td>
         <td > ${bean.tours.biaoti }</td>
        <td > ${bean.tours.price }</td>
        <td > ${bean.user.username }</td>
        <td > ${bean.number }</td>
        <td ><span style="color: red">${bean.heji }</span></td>
        <td > ${bean.times }</td>
        <td > 
            <c:if test="${bean.stauts=='已预订' }"> ${bean.stauts }</c:if> 
             <c:if test="${bean.stauts=='已使用' }"> <span style="color: green">${bean.stauts }</span></c:if> 
           </td>
        <td > ${fn:substring(bean.createtime,0, 16)}</td>
      <td > 
          <c:if test="${bean.stauts=='已预订' }">
        <a href="method!sy_delete?id=${bean.id}">退订</a>
         </c:if> 
        <c:if test="${bean.stauts=='已使用' }">
         <a href="method!xq_tours2?id=${bean.tours.id}"><span style="color: green">点评</span></a>
        </c:if> 
        </td>
         </tr>
          </c:forEach>
         </table>
         <br/>
             </div>   
             
             
 
        </div>
    </div>
    
    
    <jsp:include page="left.jsp"></jsp:include>
    <div class="clear"></div>
</div>
<jsp:include page="floot.jsp"></jsp:include>

</body>


</html>