<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
	function re() {
		location.href = "zipbox.jsp";
	}
	
	function setting(ff) {
// 		var str=document.getElementById('address').value;
// 		window.alert(str);
		var id=document.getElementById(ff.getAttribute('id')).getAttribute('id');
// 		window.alert(id);
// 		document.getElementById('a').value=id;
		window.opener.document.getElementById('address01').value=id;
		self.close();
	}
</script>
</head>
<body>
	<input type="button" value="다시검색" onclick="re()">
	
	<table border="1px solid black">
	
		<thead>
		<tr>
			<th>우편번호</th>
			<th>시·도</th>
			<th>구·군</th>
			<th>동</th>
			<th>번지</th>
		</tr>
		</thead>

		<tbody>


			<c:forEach items="${vo}" var="v" varStatus="idx">
				
				<form name="ff" >
					<tr>
						<td colspan="5"  id='${v.zipcode}&nbsp;&nbsp;${v.sido}&nbsp;&nbsp;${v.gugun}&nbsp;&nbsp;${v.dong}&nbsp;&nbsp;${v.bunji}' onclick="setting(this)">
						
						<a href="#" >${v.zipcode}&nbsp;&nbsp;&nbsp;${v.sido}&nbsp;&nbsp; 
						${v.gugun}&nbsp;&nbsp;	${v.dong}&nbsp;&nbsp; ${v.bunji}</a>
						
						</td>
						
					</tr>
				</form>
			</c:forEach>

		</tbody>

	</table>
</body>
</html>