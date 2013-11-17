<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/myscript.js"></script>
<script type="text/javascript">
function pre(){
	
	var d1=window.opener.document.getElementById('findname').value;
	var d2=window.opener.document.getElementById('findemail').value;

	document.getElementById("fid").value=d1;
	document.getElementById("fpw").value=d2;
	
	
	document.all.ff.submit();
}



</script>
</head>
<body onload="pre()">


<form action="find.inc" method="post" name="ff">

<input type="hidden" name="findname" id="fid" value=""/>
<input type="hidden" name="findemail" id="fpw" value=""/>
</form>
</body>
</html>