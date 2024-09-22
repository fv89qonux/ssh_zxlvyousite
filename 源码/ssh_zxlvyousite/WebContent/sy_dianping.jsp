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
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="js/boxOver.js"></script>
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
    	 <form action="method!dianpingadd2" method="post"  onsubmit="return checkform()">
    	  <input type="hidden" name="id" value="${bean.id }"/>
        	<div class="label_head"><div class="label_title">
        	点评
        	</div></div>
    	<table width="100%" border="1"  cellpadding="0" cellspacing="0" style="background-color: #b9d8f3;">
    	<tr style="text-align: center; COLOR: #0076C8; BACKGROUND-COLOR: #F4FAFF; font-weight: bold">
    	<td width="20%" align="center" >点评用户</td>
    	<td  align="center" >内容</td>
    	
    	</tr>
    	
    	
    <c:forEach items="${list}" var="bean">
    	<tr style="text-align: center; COLOR: #0076C8; BACKGROUND-COLOR: #F4FAFF; font-weight: bold">
    	<td  align="center" >${bean.user.name }<p/>${bean.createtime }</td>
    	<td  align="center" >${bean.content}</td>
    	</tr>
    </c:forEach>
       
     
    	</table>
    	
    	</form>
            	
             </div>
                <form action="method!dianpingadd2"method="post" onsubmit="return checkform()">
                <div class="about_con">&nbsp;&nbsp;&nbsp;&nbsp;  
                 <input type="hidden" name="id" value="${bean.id }"/>
                  <textarea class="ckeditor"  name="content" id="contentid"></textarea>  
                <input style="width:40px; height:25px;" type="submit" value="提交">&nbsp; 
                <input style="width:40px; height:25px;" onclick="javascript:history.go(-1);"  type="button" value="返回" />
                </div>
                </form>
        </div>
    </div>
    
    
    <jsp:include page="left.jsp"></jsp:include>
    <div class="clear"></div>
<jsp:include page="floot.jsp"></jsp:include>

</body>

<script language="javascript" type="text/javascript">

function checkform()
{
	 if (document.getElementById('contentid').value=="")
	{
		alert("点评内容不能为空");
		return false;
	}
	return true;
	
}
</script>
</html>