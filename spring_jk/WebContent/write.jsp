<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function check(){
		// 유효성 검사
		
		if(document.getElementById('title').value == ""){
			alert("제목을 채우세요!");
			document.getElementById('title').focus();
			return;
		}else if(document.getElementById('content').value == ""){
			alert("내용을 채우세요!");
			document.getElementById('content').focus();
			return;
		}else if(document.getElementById('pwd').value == ""){
			alert("비밀번호를 입력하세요!");
			document.getElementById('pwd').focus();
			return;
		}
		
		document.fo.submit();
	}
</script>
<%String nowPage = request.getParameter("nowPage"); %>
</head>
<body>
<!-- 	<form action="write.inc" method="post" name="fo"> -->
<!-- 		작성자:<input type="text" name="writer"/> -->
<!-- 		제목:<input type="text" name="title"/> -->
<!-- 		내용:<input type="text" name="content"/> -->
<!-- 		비밀번호:<input type="password" name="pwd"/> -->
		
<!-- 		<input type="hidden" value="한글.." name="tester"> -->
<!-- 		<input type="button" onclick="check()" value="보내기"/> -->
<!-- 		<input type="reset" value="재입력"/> -->
<!-- 	</form> -->
		<form action="write.inc" method="post" 
	enctype="multipart/form-data" name="fo">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td align="center" height="10"></td>
        </tr>
        <tr>
          <td align="center"><u><b>JKBoard Write</b></u></td>
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
                <td bgcolor="#E5E5E5"><table width="100%" border="0" cellspacing="1" cellpadding="2">

                    <tr>
                      <td width="90" height="20" align="center" bgcolor="#FFFF90"><font color="black">아이디</font></td>
                      <td bgcolor="#f2ffff" align="left"> <input type="text" name="writer" cssStyle="width:100px" theme="simple"/></td>
                    </tr>

                    <tr>
                      <td height="20" align="center" bgcolor="#FFFF90"><font color="black">제목</font></td>
                      <td bgcolor="#f2ffff" align="left"> <input id="title" type="text" name="title" size="50" theme="simple"/></td>
                    </tr>
                    <tr>
                      <td height="20" align="center" bgcolor="#FFFF90"><font color="black">내용</font></td>
                      <td bgcolor="#f2ffff" align="left"> <textarea id="content" name="content" cols="50" rows="10" theme="simple"></textarea></td>
                    </tr>
                    <tr>
                      <td height="20" align="center" bgcolor="#FFFF90"><font color="black">첨부파일</font></td>
                      <td bgcolor="#f2ffff" align="left">
                        <input type="file" name="upload" cssStyle="width:300px" theme="simple"/>
                      </td>
                    </tr>
                    <tr>
                      <td height="20" align="center" bgcolor="#FFFF90"><font color="black">비밀번호</font></td>
                      <td bgcolor="#f2ffff" align="left"> <input id="pwd" type="password" name="pwd" cssStyle="width:200px" theme="simple"/>
                        <font color="#0066CC">* 삭제.수정시 필요</font> </td>
                    </tr>
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
                      <td width="315" align="center">
                        
                      </td>
                      <td width="241" align="right">
                      <input type="button" onclick="check()" value="보내기"/>
                      <input type="reset" value="재입력"/>
                      <input type="button" value="취소" onclick="javascript:location.href='list.inc?nowPage=<%=nowPage%>'"/>
                      </td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td height="19"></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
	</form>
</body>
</html>
</body>
</html>