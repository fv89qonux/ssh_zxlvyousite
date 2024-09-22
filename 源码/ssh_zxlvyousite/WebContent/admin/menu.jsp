<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="css/admin.css" type="text/css" rel="stylesheet">
<SCRIPT language=javascript>
	function expand(el)
	{
		childObj = document.getElementById("child" + el);

		if (childObj.style.display == 'none')
		{
			childObj.style.display = 'block';
		}
		else
		{
			childObj.style.display = 'none';
		}
		return;
	}
</SCRIPT>
</HEAD>
<BODY>
<table height="100%" cellSpacing=0 cellPadding=0 width=170 
background=images/menu_bg.jpg border=0>
  <tr>
    <td vAlign=top align=middle>
      <table cellSpacing=0 cellPadding=0 width="100%" border=0>
        <tr>
          <td height=10></td></tr></table>
          
    
         
       <table cellSpacing=0 cellPadding=0 width=150 border=0>
        <tr height=22><td style="PADDING-LEFT: 30px" background=images/menu_bt.jpg><A class=menuParent onclick=expand(4) href="javascript:void(0);">注册用户管理</A></td></tr>
        <tr height=4><td></td></tr></table>
       <table id=child4 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
        <tr height=20> <td align=middle width=30><IMG height=9  src="images/menu_icon.gif" width=9></td>
          <td><A class=menuChild href="method!userlist" target=main>注册用户管理</A></td></tr>
        <tr height=4>
          <td colSpan=2></td></tr></table>  
          
          
      <table cellSpacing=0 cellPadding=0 width=150 border=0>
        <tr height=22><td style="PADDING-LEFT: 30px" background=images/menu_bt.jpg><A class=menuParent onclick=expand(2) href="javascript:void(0);">旅游管理</A></td></tr>
        <tr height=4> <td></td></tr></table>
      <table id=child2 style="DISPLAY: none" cellSpacing=0 cellPadding=0  width=150 border=0>
        <tr height=20><td align=middle width=30><IMG height=9 src="images/menu_icon.gif" width=9></td>
          <td><A class=menuChild href="method!toursadd" target=main>旅游信息添加</A></td></tr>
              <tr height=20><td align=middle width=30><IMG height=9 src="images/menu_icon.gif" width=9></td>
          <td><A class=menuChild href="method!tourslist" target=main>旅游信息管理</A></td></tr>
        <tr height=4><td colSpan=2></td></tr></table>
        
          
          
         <table cellSpacing=0 cellPadding=0 width=150 border=0>
        <tr height=22><td style="PADDING-LEFT: 30px" background=images/menu_bt.jpg><A class=menuParent onclick=expand(3) href="javascript:void(0);">景点管理</A></td></tr>
        <tr height=4> <td></td></tr></table>
      <table id=child3 style="DISPLAY: none" cellSpacing=0 cellPadding=0  width=150 border=0>
        <tr height=20><td align=middle width=30><IMG height=9 src="images/menu_icon.gif" width=9></td>
          <td><A class=menuChild href="method!jingdianadd" target=main>景点添加</A></td></tr>
           <tr height=20><td align=middle width=30><IMG height=9 src="images/menu_icon.gif" width=9></td>
          <td><A class=menuChild href="method!jingdianlist" target=main>景点管理</A></td></tr>
        <tr height=4>
          <td colSpan=2></td></tr></table> 
          
           <table cellSpacing=0 cellPadding=0 width=150 border=0>
        <tr height=22><td style="PADDING-LEFT: 30px" background=images/menu_bt.jpg><A class=menuParent onclick=expand(6) href="javascript:void(0);">度假酒店管理</A></td></tr>
        <tr height=4> <td></td></tr></table>
      <table id=child6 style="DISPLAY: none" cellSpacing=0 cellPadding=0  width=150 border=0>
        <tr height=20><td align=middle width=30><IMG height=9 src="images/menu_icon.gif" width=9></td>
          <td><A class=menuChild href="method!hoteladd" target=main>度假酒店添加</A></td></tr>
           <tr height=20><td align=middle width=30><IMG height=9 src="images/menu_icon.gif" width=9></td>
          <td><A class=menuChild href="method!hotellist" target=main>度假酒店管理</A></td></tr>
        <tr height=4>
          <td colSpan=2></td></tr></table> 
          
          
           <table cellSpacing=0 cellPadding=0 width=150 border=0>
        <tr height=22><td style="PADDING-LEFT: 30px" background=images/menu_bt.jpg><A class=menuParent onclick=expand(7) href="javascript:void(0);">旅游攻略管理</A></td></tr>
        <tr height=4> <td></td></tr></table>
      <table id=child7 style="DISPLAY: none" cellSpacing=0 cellPadding=0  width=150 border=0>
        <tr height=20><td align=middle width=30><IMG height=9 src="images/menu_icon.gif" width=9></td>
          <td><A class=menuChild href="method!raidersadd" target=main>旅游攻略添加</A></td></tr>
           <tr height=20><td align=middle width=30><IMG height=9 src="images/menu_icon.gif" width=9></td>
          <td><A class=menuChild href="method!raiderslist" target=main>旅游攻略管理</A></td></tr>
        <tr height=4>
          <td colSpan=2></td></tr></table> 
          

      
      <table cellSpacing=0 cellPadding=0 width=150 border=0>
        <tr height=22><td style="PADDING-LEFT: 30px" background=images/menu_bt.jpg><A class=menuParent onclick=expand(0) href="javascript:void(0);">预定管理</A></td></tr>
        <tr height=4><td></td></tr></table>
      <table id=child0 style="DISPLAY: none" cellSpacing=0 cellPadding=0  width=150 border=0>
        <tr height=20><td align=middle width=30><IMG height=9 src="images/menu_icon.gif" width=9></td>
          <td><A class=menuChild href="method!restourslist" target=main>旅游(游行)预定管理</A></td></tr> 
        <tr height=20><td align=middle width=30><IMG height=9 src="images/menu_icon.gif" width=9></td>
          <td><A class=menuChild href="method!reshotellist" target=main>度假酒店预定管理</A></td></tr> 
         <tr height=20><td align=middle width=30><IMG height=9 src="images/menu_icon.gif" width=9></td>
          <td><A class=menuChild href="method!resjingdianlist" target=main>景点预定管理</A></td></tr>      
          </table>
    
  
       <table cellSpacing=0 cellPadding=0 width=150 border=0>
        <tr height=22><td style="PADDING-LEFT: 30px" background=images/menu_bt.jpg><A class=menuParent onclick=expand(8) href="javascript:void(0);">点评管理</A></td></tr>
        <tr height=4><td></td></tr></table>
      <table id=child8 style="DISPLAY: none" cellSpacing=0 cellPadding=0  width=150 border=0>
         <tr height=20><td align=middle width=30><IMG height=9 src="images/menu_icon.gif" width=9></td>
          <td><A class=menuChild href="method!tours_dianping" target=main>旅游点评管理</A></td></tr> 
             <tr height=20><td align=middle width=30><IMG height=9 src="images/menu_icon.gif" width=9></td>
          <td><A class=menuChild href="method!hotel_dianping" target=main>度假酒店点评管理</A></td></tr> 
             <tr height=20><td align=middle width=30><IMG height=9 src="images/menu_icon.gif" width=9></td>
          <td><A class=menuChild href="method!jingdian_dianping" target=main>景点点评管理</A></td></tr>    
          </table>    
       
          
            <table cellSpacing=0 cellPadding=0 width=150 border=0>
        <tr height=22><td style="PADDING-LEFT: 30px" background=images/menu_bt.jpg><A class=menuParent onclick=expand(5) href="javascript:void(0);">公告管理</A></td></tr>
        <tr height=4><td></td></tr></table>
      <table id=child5 style="DISPLAY: none" cellSpacing=0 cellPadding=0  width=150 border=0>
        <tr height=20><td align=middle width=30><IMG height=9 src="images/menu_icon.gif" width=9></td>
          <td><A class=menuChild href="method!gonggaoadd" target=main>公告添加</A></td></tr> 
        <tr height=20><td align=middle width=30><IMG height=9 src="images/menu_icon.gif" width=9></td>
          <td><A class=menuChild href="method!gonggaolist" target=main>公告管理</A></td></tr>    
          </table>  
             
          
          
      </tr></table> </BODY></HTML>
