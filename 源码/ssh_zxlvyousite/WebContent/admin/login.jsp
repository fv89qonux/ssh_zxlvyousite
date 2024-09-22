<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title></title>

<link rel="stylesheet" href="css/reset.css">

<link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />

</head>

<body>

<div id="window" style="display:none;">
<span style="font-size:18px;font-weight: bold;color:#757575; margin-left:39%;">
   管理后台登陆
    </span>

	<div class="page page-front">
	  <form method="post"  action="method!login">
		<div class="page-content">
			<div class="input-row">
				<label class="label fadeIn">用户名</label>
				<input id="username" type="text" name="username" data-fyll="pineapple" class="input fadeIn delay1"/>
			</div>
			<div class="input-row">
				<label class="label fadeIn delay2">密码</label>
				<input id="password" type="password" name="password" data-fyll="hackmeplease" class="input fadeIn delay3"/>
			</div>
			<div class="input-row perspective">
				<button id="submit" class="button load-btn fadeIn delay4">
					<span class="default"><i class="ion-arrow-right-b"></i>登录</span>
				
				</button>
			</div>
		</div>
		</form>
	</div>
	
	
</div>


<script type="text/javascript" src='js/jquery.js'></script>
<script type="text/javascript" src="js/index.js"></script>


</body>
</html>