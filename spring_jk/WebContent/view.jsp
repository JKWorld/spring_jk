<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("utf-8"); %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function check(){
		
		var pwdcheck = prompt("비밀 번호를 입력하세요", "");
		
		if (pwdcheck.close) {
			return;
		}else if(pwdcheck == document.getElementById("pwd").value){
			document.ff.submit();
			
		}else if (pwdcheck= document.getElementById("pwd").value){
			alert("비밀번호가 틀렸습니다.");
			return;
		}
		
	}
	
	function delcheck(){
		
		var pwdcheck = prompt("비밀 번호를 입력하세요", "");
		
		if (pwdcheck.close) {
			return;
		}else if(pwdcheck == document.getElementById("pwd").value){
			location.href="del.inc?seq="+document.getElementById("seq").value;
			
		}else if (pwdcheck= document.getElementById("pwd").value){
			alert("비밀번호가 틀렸습니다.");
			return;
		}
// 		pwdcheck = temp * 1;
// 		var result = temp + 100;
// 		document.write(temp +"+"+100);
		//location.href="del.inc?seq=${vo.seq}";
	}
	
	function download(fname){
		
		location.href="FileDownload?dir=upload&filename="+fname;
		//위의 FileDownload는 서블릿이다.
	}
</script>
</head>
<body>
<table width="556" border="0" cellspacing="0" cellpadding="0" align="center">
		  <tr>
		    <td align="center"><u><b>JKBoard View</b><u></td>
		  </tr>
		  <tr>
			<td height="2" bgcolor="#C3C3C3"></td>
		  </tr>
		  <tr>
			<td valign="top" bgcolor="#E5E5E5">
			
			<table width="100%" border="0" cellspacing="1" cellpadding="3">
				<tr>
				  <td width="80" height="20" align="center" bgcolor="#FFFF90"><font color="black">아이디</font></td>
                  <td bgcolor="white">${vo.writer}</td>
				  <td width="80" align="center" bgcolor="#FFFF90"><font color="black">등록일</font></td>
				  <td width="150" align="center" bgcolor="white">${vo.regdate}</td>
				</tr>
				<tr>
				  <td height="20" align="center" bgcolor="#FFFF90"><font color="black">메일</font></td>
				  <td bgcolor="white"></td>
				  <td align="center" bgcolor="#FFFF90"><font color=black>조회수</font></td>
				  <td align="center" bgcolor="white">${vo.hit}</td>
				</tr>
				<tr>
				  <td height="20" align="center" bgcolor="#FFFF90"><font color="black">첨부파일</font></td>
				  <td colspan="3" bgcolor="white">
				  <a href="javascript:download('${vo.uploadFileName}')" >
				  ${vo.uploadFileName}
				  </a>
				  </td>
				</tr>
				<tr>
				  <td height="20" align="center" bgcolor="#FFFF90"><font color="black">제목</font></td>
				  <td colspan="3" bgcolor="white">${vo.title}</td>
				</tr>
				<tr valign="top">
				  <td height="23" colspan="4" bgcolor="#FFFFFF">
					<table width="100%" border="0" cellspacing="0" cellpadding="15">
					  <tr>
						<td valign="top"> <pre>${vo.content}</pre>
						  <p>&nbsp;</p></td>
					  </tr>
					</table></td>
				</tr>
			  </table>
			</td>
		  </tr>
		</table>
		<table width="556" border="0" cellspacing="0" cellpadding="0" align="center">
		  <tr>
			<td height="20" valign="middle"><img src="/images/sub_it/point_line.gif" width="556" height="3"></td>
		  </tr>
		  <tr>
			<td align="right"> <table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
				  <td align="left">
					&nbsp;
				  </td>
				  <td width="241" align="right">
					<c:if test="${!empty memid }">
					<img src="images/button/but_modify.gif" width="56" height="21" onClick="check()" style="cursor:pointer">
					<img src="images/button/but_undel.gif" width="56" height="21" onclick="delcheck()">
					<img src="images/logout.png" width="56" height="21" style="cursor:pointer" onClick="javascript:location.href='view.inc?seq=${vo.seq}&nowPage=${nowPage }'">
					</c:if>
					<img src="images/button/but_list.gif" width="56" height="21" onClick="JavaScript:location.href='list.inc?nowPage=${nowPage}&memid=${memid }'" style="cursor:pointer">

					</td>
				</tr>
			  </table></td>
		  </tr>
		  <tr>
			<td height="19">&nbsp;</td>
		  </tr>
		</table>
		<iframe id="check_f" border='0' width="0" height="0" frameborder='0' marginwidth='0' marginheight='0' scrolling="no"></iframe>
		</td>
	</tr>
	<tr>
	  <td height="19">&nbsp;</td>
	</tr>

	<c:if test="${!empty memid }">
	<form action="rwrite.inc" method="post" style="margin-left: 190px;">
		<input type="hidden" name="seq" value="${vo.seq }"/>
		<input type="hidden" name="nowPage" value="${nowPage }"/>
		<input type="hidden" name="memid" value="${memid }"/>
		<input type="text" name="content"/>
		<input type="submit" value="댓글달기!">
	</form>
	</c:if>
	
	<div style="margin-left: 190px;">
	<c:forEach var="rvo" items="${rvo }">
		<div>아이디 : ${memid }</div>
		<div>내&nbsp;&nbsp;&nbsp;&nbsp;용 : ${rvo.content }</div>
	</c:forEach>
	</div>
	<form action="modify.jsp" method="post" name="ff">
		<input type="hidden" id="seq" name="seq" value="${vo.seq}"/>
		<input type="hidden" name="writer" value="${vo.writer }"/>
		<input type="hidden" name="title" value="${vo.title }"/>
		<input type="hidden" name="content" value="${vo.content }"/>
		<input type="hidden" id="pwd" name="pwd" value="${vo.pwd }"/>
		<input type="hidden"	 name="filename" value="'${vo.uploadFileName}"/>
	</form>
 </table>
 
</body>
</html>