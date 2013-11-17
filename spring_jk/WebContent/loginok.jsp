<%@page import="java.net.InetAddress"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
session.setAttribute("id", request.getParameter("id"));
session.setAttribute("ip", InetAddress.getLocalHost().getHostAddress());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



</head>


<body >


<c:if test="${vo.status==1}">





<form action="../bbs/list.inc" method="post" name="ff">

</form>





<script type="text/javascript">
setTimeout("move()", 1500); 
function move() {
	
	document.ff.submit();
}
</script>


</c:if>



<c:if test="${vo!=null&&vo.status==0}">

<script language="JavaScript"> 
alert("탈퇴한 회원입니다.");
setTimeout("move()",1000); // 1초 = 1000 

function move(){ 
//로그인 페이지로 이동 경로 지정
 location.href = "login.jsp"; 

} 

</script> 
</c:if>

<c:if test="${vo==null  }">

<script language="JavaScript"> 
alert("아이디 또는 비밀번호를 확인해주세요.");
setTimeout("move()",1000); // 1초 = 1000 

function move(){ 
	
//로그인 페이지로 이동 경로 지정
 location.href = "login.jsp"; 

}

</script> 
</c:if>


</body>
</html>




