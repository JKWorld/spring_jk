<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Insert title here</title>
</head>
<body>

	<c:if test="${t=='t'}">
<script type="text/javascript">
	alert("중복된 아이디입니다.");
	
	
	window.opener.document.getElementById('id_txt').value="";
	window.opener.document.getElementById('idoverlap').value="";
	self.close();
</script>
</c:if>


<c:if test="${f=='f'}">
<script type="text/javascript">
	alert("사용가능한 아이디입니다.");
	window.opener.document.getElementById('idoverlap').value=window.opener.document.getElementById('id_txt').value;
	self.close();
</script>


</c:if>
	

</body>
</html>