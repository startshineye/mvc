<%@ page contentType="text/html; charset=GBK" language="java"
	import="java.sql.*" errorPage=""%>
<%@ page
	import="java.sql.*,java.util.*,javax.servlet.*,
javax.servlet.http.*,java.text.*,java.math.*"%>
<%! public static final String _AppId = "index"; %>
<%
//获取从逻辑传来的值
HashMap infoOut = (request.getAttribute("infoOut") == null) ? new HashMap() :
(HashMap)request.getAttribute("infoOut");
//定义从逻辑传来的消息
String msg = infoOut.get("msg") == null ? "" :
(String) infoOut.get("msg");
String clerkId = null == request.getParameter("clerkId") ? "" :
request.getParameter("clerkId");
//获取从逻辑传来的用户名
String clerkName = infoOut.get("clerkName") == null ? "" :
(String)infoOut.get("clerkName");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>MVC视图</title>

<style type="text/css">
<!--
定义body样式 -->body {
	background-color: #FFFFFD;
}

<!--
窗口的css属性-->td {
	vertical-align: bottom;
	font-family: Verdana, "宋体";
	font-size: 12px;
	font-style: normal;
	color: #FFFFFF;
}

边框的css属性
    .hborder {
	border-top: solid #7C7C7A 1px;
	border-bottom: solid #F1F1EE 1px;
}
</style>

<script type="text/javascript">
        //提交动作
		function submit(target, action) {
		form1.target = target;
		form1.action.value = action;
		form1.submit();
		}
       //打开窗口
 function openWin(name, url, width, height) {
var screenWidth = screen.width;
var screenHeight = screen.height;
var w;
//设定窗口的相关属性
w=window.open(url,name, "width="+width+",height="+height+",menubar=no,resizable=yes,toolbar=no,directories=no,location=no,scrollbars=yes,status=yes,copyhistory=0");
//移动到窗口中心
w.moveTo((screenWidth-width)/2, (screenHeight-height)/2);
w.focus();
}

//推出窗口
function goExit() {
  window.close();
}

//提交新增
function insert() {
form1.forwardJsp.value = "index";
form1.logicName.value = "Logic";
submit('<%="index _"+session.getId()%>','insert');
}

</script>
</head>
<body leftmargin="0" topmargin="0">
	<form name="form1" action="/myApp/do" method="post">
		<!--表单示例-->
		<table width="100%" border="0" cellpadding="0" cellspacing="0" style=
"border-collapse: collapse">
<tr bgcolor="#DFE4EB">
<tdclass="hborder"colspan="10"style="filter: progid:DXImageTransform.
Microsoft.gradient(GradientType=0,startColorstr=#F7F8FA,
endColorstr=#C9D0DD)">&nbsp;</td>
</tr>
</table>
		<!--隐藏页面的相关属性-->
		<input type="hidden" name="action" value=""> <input
			type="hidden" name="loginName" value=""> <input type="hidden"
			name="forwardJsp" value="">

	</form>

</body>
<script type="text/javascript">
      //设定页面的名称
      window.name = "<%="index _"+session.getId()%>";
  </script>
</html>
