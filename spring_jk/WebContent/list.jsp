<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<link href="text.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Board</title>
<script type="text/javascript">
function pageport(){
	
	location.replace("writeForm.inc");
}

function write(){
	location.href="writeForm.inc?nowPage="+document.getElementById('nowPage').value;
}
</script>
</head>
<body>

<!-- 주요내용 시작 -->

<form name="ff2" method="post">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
		<td valign="top">
		  <table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
			  <td align="center" height="10"></td>
			</tr>
			<tr>
			  <td align="center"><u><b>JK Board</b><u></td>
			</tr>
			<tr>
			  <td align="center" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td>&nbsp;</td>
				  </tr>
				</table>
				<table width="556" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td height="2" bgcolor="#C3C3C3"></td>
				  </tr>
				  <tr>
					<td bgcolor="#E5E5ff">
					<table width="100%" border="0" cellspacing="1" cellpadding="2">
						<tr>
						  <td height="20" align="center" bgcolor="#FFFF90" width="56"><font color="black">번호</font></td>
						  <td height="20" align="center" bgcolor="#FFFF90" width="270"><font color="black">제목</font></td>
						  <td height="20" align="center" bgcolor="#FFFF90" width="80"><font color="black">아이디</font></td>
						  <td height="20" align="center" bgcolor="#FFFF90" width="100"><font color="black">날짜</font></td>
						  <td height="20" align="center" bgcolor="#FFFF90" width="50"><font color="black">조회수</font></td>
						</tr>
	       <c:forEach var="vo" items="${list }" varStatus="stat">
<%-- 						<c:if test="${vo.status != 1}"> --%>
<%-- 						<c:if test="${vo.status != '1' }"> --%>
						<tr>
						  <td bgcolor="#eaeaea">
	<!--                           <s:property value="rowTotal-((nowPage-1)*blockList+#stat.index)"/> -->
							${rowTotal-((nowPage-1)*blockList+stat.index) }
	                      </td>
	                      
						  <td bgcolor="#eaeaea" style="text-align:left" id="title">
						  	
						  	<%-- step값만큼 들여쓰기하는 반복문 --%>
						  	<c:forEach begin="1" end="${vo.step }">
						  		<c:out value="&nbsp;&nbsp;" escapeXml="false"/>
						  	</c:forEach>
						  	
						  	<%-- step이 0이 아닌 경우엔 화살표 이미지 출력 --%>
						  	<c:if test="${vo.step > 0 }">
						  		<img src="images/arrow.JPG"/>
						  	</c:if>
						  	
	<!--                           <s:a href="%{viewURL}"> -->
	<!--                               <s:property value="title"/> -->
	<!--                           </s:a> -->
							<a href="view.inc?seq=${vo.seq }&nowPage=${nowPage}&memid=${memid}"> 
								&nbsp;&nbsp;${vo.title }
							</a>
	                      </td>
						  <td bgcolor="#eaeaea">${vo.writer }</td>
						  <td bgcolor="#eaeaea">${vo.regdate }</td>
						  <td bgcolor="#eaeaea">${vo.hit }</td>
						</tr>
<%-- 						</c:if> --%>
	       </c:forEach>
	       <c:if test="${empty list }">
					<tr>
					  <td bgcolor="#F2F7F9" colspan="5" height="70" align="center">등록된 게시물이 없습니다.</td>
					</tr>
	       </c:if>
					  </table></td>
				  </tr>
				</table>
				<table width="556" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td height="20" valign="middle"><img src="/images/sub_it/point_line.gif" width="556" height="3"></td>
				  </tr>
				  <tr>
					<td align="right"> <table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
						  <td width="315" align="left">
	                          ${pageCode }
						  </td>
						  
						  <td width="241" align="right">
						  <c:if test="${!empty memid }">
						  	<div>${memid } 님 환영합니다!</div>
						  <img src="images/but_write.gif" width="56" height="21" style="cursor:pointer" onClick="javascript:location.href='writeForm.inc?nowPage=${nowPage}'">
						  <img src="images/logout.png" width="56" height="21" style="cursor:pointer" onClick="javascript:location.href='list.inc'"> 
						  </c:if>
						  <c:if test="${empty memid }">
						  <img src="images/login.png" width="56" height="21" style="cursor:pointer" onClick="javascript:location.href='login.jsp'">
						  </c:if>
						  </td>
						</tr>
					  </table></td>
				  </tr>
				</table></td>
			</tr>
			<tr>
			  <td height="19">&nbsp;</td>
			</tr>
		  </table>
		</td>
	  </tr>
	</table>
	<input type="hidden" name="memid" value="${memid }"/>
</form>
<input type="hidden" id="nowPage" value="${nowPage }"/>
</body>
</html>