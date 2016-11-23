<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
  //获取从页面传来的值
  HashMap infoOut = (request.getAttribute("infoOut")==null)?new HashMap():(HashMap)request.getAttribute("infoOut");
  //获取从逻辑传来的值
  String msg = infoOut.get("msg")==null?"":(String)infoOut.get("msg");
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>采用框架实现输出HelloWorld</title>
    <style type="text/css">
    <!--设定BODY的css属性-->
    body{
      background-color: #FFFFFD;
      font-family: Verdana,"宋体";
      font-size: 12px;
      font-style: normal;
    }
    </style>
    <script type="text/javascript">
    //--表单提交--
    function submit(target,action){
      form1.target = target;
      form1.action.value = action;
      form1.submit();
    }
    
    //--打开窗口--
    function openWin(name,url,width,height){
      var screenWidth = screen.width;
      var screenHeight = screen.height;
      var w;
      //设定窗口属性
      w.window.open(url,name,"width="+width+",height="+height+",menubar=no,resizable=yes,toolbar=no,directories=no,location=no,scrollbars=yes,status=yes,copyhistory=0");
      w.moveTo((screenWidth-width)/2, (screenHeight-height)/2);
      w.focus();
    }
    
    //--退出页面--
    function goExit(){
       window.close();
    }
    
    //--表单的提交动作--
    function insert(){
     form1.forwardJsp.value = "index";
     form1.logicName.value = "HelloWorldAction";
     submit('<%="index_"+session.getId()%>','insert');
    }
    </script>
  </head>
  <body leftmargin="0" topmargin="0">
   <form name= "form1" action="/mvc/do" method="post">
      <h1><%=msg%></h1>
     <!-- 页面中的隐藏元素 -->
       <input type="hidden" name="action" value="">
       <input type="hidden" name="forwardJsp" value="">
       <input type="hidden" name="logicName" value="">
   </form>
   <script type="text/javascript">
     window.name="<%="index_"+session.getId()%>";
   </script>
  </body>
</html>
