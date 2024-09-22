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
    	 <form action="method!sy_jingdianadd2" method="post"  onsubmit="return checkform()">
    	  <input type="hidden" name="id" value="${bean.id }"/>
        	<div class="label_head"><div class="label_title">景点预定</div></div>
            <div class="about_con">
            	<p>&nbsp;&nbsp;&nbsp;&nbsp;景点名称:${bean.name }</p>
            	<p>&nbsp;&nbsp;&nbsp;&nbsp;景点票价:${bean.price }（元/人）</p>
            	<p>&nbsp;&nbsp;&nbsp;&nbsp;预定日期:<input type="text" name="times" id="timesid" onfocus="WdatePicker({isShowWeek:true})"><img onclick="WdatePicker({el:'d12'})" src="js/My97DatePicker/skin/datePicker.gif" width="16" height="22" align="absmiddle"></p>
            	<p>&nbsp;&nbsp;&nbsp;&nbsp;预定票数:<input style="width:30%;" type="text" name="number" id="numberid"></p>
            	
             </div>
                <div class="about_con">&nbsp;&nbsp;&nbsp;&nbsp;  
                <input style="width:40px; height:25px;" type="submit" value="提交">&nbsp; 
                <input style="width:40px; height:25px;" onclick="javascript:history.go(-1);"  type="button" value="返回" />
                </div>
                </form>
        </div>
    </div>
    
    
    <jsp:include page="left.jsp"></jsp:include>
    <div class="clear"></div>
</div>
<jsp:include page="floot.jsp"></jsp:include>

</body>

<script language="javascript" type="text/javascript">

function checkform()
{
	 
	 if (document.getElementById('numberid').value=="")
	{
		alert("预定票数不能为空");
		return false;
	}
	
	var valid=/^\d*$/;
	if(!valid.test(document.getElementById('numberid').value)){
		alert("预定票数必须是数字");
		return false;
	}
	 
	 if (document.getElementById('timesid').value=="")
	{
		alert("预定日期不能为空");
		return false;
	}

	return true;
	
}
</script>
</html>