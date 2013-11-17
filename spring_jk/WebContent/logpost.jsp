<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
로그인 후 정보를 나타내주는 임시페이지<br/>

이름: ${vo.name }<br/>
아이디: ${vo.id }<br/>
비밀번호: ${vo.pwd }<br/>
이메일: ${vo.email }<br/>
가입일: ${vo.member_date }<br/>
주소: ${vo.address }<br/>
연락처:${vo.phone }<br/>

</html>