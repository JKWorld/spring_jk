<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/myscript.js"></script>

<script src="js/myscript.js"></script>
</head>
<body onload="post()">

	<input type="hidden" id="fid" value="${vo.id }" />
	<input type="hidden" id="fpw" value="${vo.pwd }" />

	<script type="text/javascript">
		function post() {

			var str = "아이디: ";
			str += document.getElementById("fid").value;
			str += "   비밀번호: ";
			str += document.getElementById("fpw").value;

			

			alert(str);

			self.close();

		}
	</script>
</body>
</html>