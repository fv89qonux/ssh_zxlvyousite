<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
       
        <meta http-equiv="content-type" content="text/html;charset=utf-8"/>
        <link href="./css/mine.css" type="text/css" rel="stylesheet"/>
        <script language="javascript" type="text/javascript">

function checkform()
{
	 
	

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
	return true;
	
}


</script>
    </head>

    <body>

        <div class="div_head">
            <span>
                <span style="float:left">当前位置是：公告管理-》添加公告信息</span>
                <span style="float:right;margin-right: 8px;font-weight: bold">
                   
                </span>
            </span>
        </div>
        <div></div>

        <div style="font-size: 13px;margin: 10px 5px">
            <form action="method!gonggaoadd2" method="post" enctype="multipart/form-data">
            <table border="1" width="100%" class="table_a">
                <tr>
                    <td>标题</td>
                    <td><input style="width:20%" type="text" name="biaoti"  id='biaotiid' /></td>
                </tr>

                <tr>
                    <td>内容</td>
                    <td>
                        <textarea rows="5" cols="80"  name="content" id="contentid"></textarea>
                    </td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="添加">
                    </td>
                </tr>  
            </table>
            </form>
        </div>
    </body>
</html>