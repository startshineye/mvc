<%@ page contentType="text/html; charset=GBK" language="java"
	import="java.sql.*" errorPage=""%>
<%@ page
	import="java.sql.*,java.util.*,javax.servlet.*,
javax.servlet.http.*,java.text.*,java.math.*"%>
<%! public static final String _AppId = "index"; %>
<%
//��ȡ���߼�������ֵ
HashMap infoOut = (request.getAttribute("infoOut") == null) ? new HashMap() :
(HashMap)request.getAttribute("infoOut");
//������߼���������Ϣ
String msg = infoOut.get("msg") == null ? "" :
(String) infoOut.get("msg");
String clerkId = null == request.getParameter("clerkId") ? "" :
request.getParameter("clerkId");
//��ȡ���߼��������û���
String clerkName = infoOut.get("clerkName") == null ? "" :
(String)infoOut.get("clerkName");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>MVC��ͼ</title>

<style type="text/css">
<!--
����body��ʽ -->body {
	background-color: #FFFFFD;
}

<!--
���ڵ�css����-->td {
	vertical-align: bottom;
	font-family: Verdana, "����";
	font-size: 12px;
	font-style: normal;
	color: #FFFFFF;
}

�߿��css����
    .hborder {
	border-top: solid #7C7C7A 1px;
	border-bottom: solid #F1F1EE 1px;
}
</style>

<script type="text/javascript">
        //�ύ����
		function submit(target, action) {
		form1.target = target;
		form1.action.value = action;
		form1.submit();
		}
       //�򿪴���
 function openWin(name, url, width, height) {
var screenWidth = screen.width;
var screenHeight = screen.height;
var w;
//�趨���ڵ��������
w=window.open(url,name, "width="+width+",height="+height+",menubar=no,resizable=yes,toolbar=no,directories=no,location=no,scrollbars=yes,status=yes,copyhistory=0");
//�ƶ�����������
w.moveTo((screenWidth-width)/2, (screenHeight-height)/2);
w.focus();
}

//�Ƴ�����
function goExit() {
  window.close();
}

//�ύ����
function insert() {
form1.forwardJsp.value = "index";
form1.logicName.value = "Logic";
submit('<%="index _"+session.getId()%>','insert');
}

</script>
</head>
<body leftmargin="0" topmargin="0">
	<form name="form1" action="/myApp/do" method="post">
		<!--��ʾ��-->
		<table width="100%" border="0" cellpadding="0" cellspacing="0" style=
"border-collapse: collapse">
<tr bgcolor="#DFE4EB">
<tdclass="hborder"colspan="10"style="filter: progid:DXImageTransform.
Microsoft.gradient(GradientType=0,startColorstr=#F7F8FA,
endColorstr=#C9D0DD)">&nbsp;</td>
</tr>
</table>
		<!--����ҳ����������-->
		<input type="hidden" name="action" value=""> <input
			type="hidden" name="loginName" value=""> <input type="hidden"
			name="forwardJsp" value="">

	</form>

</body>
<script type="text/javascript">
      //�趨ҳ�������
      window.name = "<%="index _"+session.getId()%>";
  </script>
</html>
