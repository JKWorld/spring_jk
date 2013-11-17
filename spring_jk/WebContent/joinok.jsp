<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



</head>
<body>
<c:if test="${ok >= 0 }">


<script language="JavaScript"> 
alert("가입이완료되었습니다.")
setTimeout("move()",1000); // 1초 = 1000 

function move(){ 
//로그인 페이지로 이동 경로 지정
 location.href = "login.jsp"; 

} 

</script> 
</c:if>







</body>
</html>