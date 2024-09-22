<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/uploadfile/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<link href="./css/mine.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript">

function checkform()
{
	 
	
   if (document.getElementById('categoryid').value=="")
	{
		alert("分类不能为空");
		return false;
	}
	if (document.getElementById('biaotiid').value=="")
	{
		alert("标题不能为空");
		return false;
	}
	if (document.getElementById('contentid').value=="")
	{
		alert("内容不能为空");
		return false;
	}
	if (document.getElementById('xingchengid').value=="")
	{
		alert("行程介绍不能为空");
		return false;
	}
	if (document.getElementById('xuzhiid').value=="")
	{
		alert("预订须知不能为空");
		return false;
	}
	if (document.getElementById('uploadfileid').value=="")
	{
		alert("图片不能为空");
		return false;
	}
	var valid=/^\d*$/;
	if(!valid.test(document.getElementById('priceid').value)){
		alert("票价必须是数字");
		return false;
	}
	
	
	return true;
	
}


</script>
</head>

<body>

	<div class="div_head">
		<span> <span style="float: left">当前位置是：旅游(游行)管理-》添加旅游(游行)信息</span>
			<span style="float: right; margin-right: 8px; font-weight: bold">

		</span>
		</span>
	</div>
	<div></div>

	<div style="font-size: 13px; margin: 10px 5px">
		<form action="method!toursadd2" method="post"
			onsubmit="return checkform()" enctype="multipart/form-data">
			<table border="1" width="100%" class="table_a">
				<tr>
					<td width="15%">分类</td>
					<td><select name="category" id='categoryid'>
							<option value="">--所有--</option>
							<option value="自由行">自由行</option>
							<option value="跟团游">跟团游</option>
							<option value="国内游">国内游</option>
							<option value="国外游">国外游</option>
					</select></td>
				</tr>

				<tr>
					<td width="15%">标题</td>
					<td><input style="width: 20%" type="text" name="biaoti"
						id='biaotiid' /></td>
				</tr>

				<tr>
					<td width="15%">票价（元/人）</td>
					<td><input style="width: 20%" type="text" name="price"
						id='priceid' /></td>
				</tr>

				<tr>
					<td>内容详情</td>
					<td><textarea rows="5" cols="20" name="content" id="contentid"></textarea>
					</td>
				</tr>

				<tr>
					<td>行程介绍</td>
					<td><textarea rows="5" cols="20" name="xingcheng"
							id="xingchengid"></textarea></td>
				</tr>

				<tr>
					<td>预订须知</td>
					<td><textarea rows="5" cols="20" name="xuzhi" id="xuzhiid"></textarea>
					</td>
				</tr>

				<tr>
					<td>图片</td>
					<td><input type="file" name="uploadfile" id="uploadfileid" />
					</td>
				</tr>

				<tr>
					<td colspan="2" align="center"><input type="submit" value="添加" />
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>