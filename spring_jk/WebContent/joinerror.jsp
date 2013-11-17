<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${ok <= 0 }">
아이디가 중복되었습니다.<br/>
페이지를 이동합니다.

<script language="JavaScript"> 

setTimeout("move()",1500); // 1초 = 1000 

function move(){ 
//로그인 페이지로 이동 경로 지정
 location.href = "join_member.jsp"; 

} 

</script> 
</c:if>


</body>
</html>