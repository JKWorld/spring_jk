<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<c:if test="${v=='f'}">
	
<script type="text/javascript">

	alert("중복된 이메일입니다.");
	
	
	window.opener.document.getElementById('email').value="";
	
	window.opener.document.getElementById('mailoverlap').value="";
	self.close();
	
</script>
</c:if>


<c:if test="${v=='t'}">

<script type="text/javascript">
	alert("사용가능한 메일주소입니다.");
	window.opener.document.getElementById('mailoverlap').value=window.opener.document.getElementById('email').value;
	self.close();
</script>


</c:if>


</body>
</html>