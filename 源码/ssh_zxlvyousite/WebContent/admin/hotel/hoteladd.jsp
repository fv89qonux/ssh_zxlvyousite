<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/uploadfile/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
       
        <meta http-equiv="content-type" content="text/html;charset=utf-8"/>
        <link href="./css/mine.css" type="text/css" rel="stylesheet"/>
      <script language="javascript" type="text/javascript">

function checkform()
{
	 
	 if (document.getElementById('nameid').value=="")
	{
		alert("酒店名称不能为空");
		return false;
	}
	 if (document.getElementById('contentid').value=="")
	{
		alert("酒店描述不能为空");
		return false;
	}
	 if (document.getElementById('priceid').value=="")
	{
		alert("单价不能为空");
		return false;
	}
	var valid=/^\d*$/;
	
	if(!valid.test(document.getElementById('priceid').value)){
		alert("单价必须是数字");
		return false;
	}
	 if (document.getElementById('uploadfileid').value=="")
	{
		alert("图片不能为空");
		return false;
	}
	
	return true;
	
}
</script>
    </head>

    <body>

        <div class="div_head">
            <span>
                <span style="float:left">当前位置是：度假酒店管理-》添加度假酒店信息</span>
                <span style="float:right;margin-right: 8px;font-weight: bold">
                   
                </span>
            </span>
        </div>
        <div></div>

        <div style="font-size: 13px;margin: 10px 5px">
            <form action="method!hoteladd2" method="post" onsubmit="return checkform()" enctype="multipart/form-data">
            <table border="1" width="100%" class="table_a">

                 <tr>
                    <td width="15%">酒店名称</td>
                    <td><input style="width:20%" type="text"  name="name" id="nameid"/></td>
                </tr>
                
                  <tr>
                    <td width="15%">单价（元/日）</td>
                    <td><input style="width:20%" type="text" name="price" id="priceid" /></td>
                </tr>
                
                  <tr>
                    <td width="15%">联系电话</td>
                    <td><input style="width:20%" type="text" name="tel" id="telid" /></td>
                </tr>
                
                  <tr>
                    <td width="15%">地址</td>
                    <td><input style="width:20%" type="text" name="address" id="addressid" /></td>
                </tr>
                
                  <tr>
                    <td>酒店图片</td>
                    <td>
                       <input type="file" name="uploadfile"  id="uploadfileid" />
                    </td>
                </tr>

                <tr>
                    <td>酒店描述</td>
                    <td>
                        <textarea rows="5" cols="80"  name="content" id="contentid"></textarea>
                    </td>
                </tr>
 
                
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="添加"/>
                    </td>
                </tr>  
            </table>
            </form>
        </div>
    </body>
</html>