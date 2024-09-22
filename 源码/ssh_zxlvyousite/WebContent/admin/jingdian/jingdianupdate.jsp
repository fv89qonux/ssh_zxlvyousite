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

    </head>

    <body>

        <div class="div_head">
            <span>
                <span style="float:left">当前位置是：景点管理-》修改景点信息</span>
                <span style="float:right;margin-right: 8px;font-weight: bold">
                   
                </span>
            </span>
        </div>
        <div></div>

        <div style="font-size: 13px;margin: 10px 5px">
            <form action="method!jingdianupdate2?id=${bean.id }" method="post" enctype="multipart/form-data">
            <table border="1" width="100%" class="table_a">

                  <tr>
                    <td width="15%">景点名称</td>
                    <td><input style="width:20%" type="text"  name="name" id="nameid" value="${bean.name}"/></td>
                </tr>
                
                  <tr>
                    <td width="15%">票价（元/人）</td>
                    <td><input style="width:20%" type="text" name="price" id="priceid" value="${bean.price }"/></td>
                </tr>
                
                  <tr>
                    <td width="15%">地址</td>
                    <td><input style="width:20%" type="text" name="address" id="addressid" value="${bean.address }"/></td>
                </tr>
                
                  <tr>
                    <td>景点图片</td>
                    <td>
                        <img src='<%=basePath %>${bean.imgpath}' width="80" height="100"/>
                       <input type="file" name="uploadfile" value="${bean.imgpath }" id="uploadfileid" />
                    </td>
                </tr>

                <tr>
                    <td>景点描述</td>
                    <td>
                        <textarea rows="5" cols="80"  name="content" id="contentid">${bean.content }</textarea>
                    </td>
                </tr>
                
                 
                
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="修改"/>
                           <input type="button" onclick="history.back()" value="返回"/>
                    </td>
                </tr>  
            </table>
            </form>
        </div>
    </body>
</html>