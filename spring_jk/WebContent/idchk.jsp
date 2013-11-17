<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function on(){
	var getid=window.opener.document.getElementById('id_txt').value;

	document.getElementById('setid').value=getid;	
	
	document.ff.submit();
	
}




</script>


</head>
<body onload="on()">

<form action="check.inc" method="post" name="ff">
<input type="hidden" id="setid" name="setid">
</form>
</body>
</html>