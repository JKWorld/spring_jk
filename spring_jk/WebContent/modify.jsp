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
		

		if(document.getElementById('pwd').value!=document.getElementById('pwd1').value){
			alert("비번 똑바로 입력해라!");
			return;
			
		}else if(document.getElementById('pwd').value==document.getElementById('pwd1').value){
			document.fo.submit();
		}
		
	}
</script>
</head>
<body>
<% 
	String seq = request.getParameter("seq");
	String writer = request.getParameter("writer");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String pwd = request.getParameter("pwd");
	String filename = request.getParameter("filename");
	System.out.println(filename);
%>

	<form action="modify.inc" method="post" 
	enctype="multipart/form-data" name="fo">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td align="center" height="10"></td>
        </tr>
        <tr>
          <td align="center"><u><b>JKBoard Edit</b></u></td>
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
                      <td bgcolor="#f2ffff" align="left"> <input type="text" name="writer" cssStyle="width:100px" theme="simple" value="<%=writer%>"/></td>
                    </tr>

                    <tr>
                      <td height="20" align="center" bgcolor="#FFFF90"><font color="black">제목</font></td>
                      <td bgcolor="#f2ffff" align="left"> <input type="text" name="title" size="50" theme="simple" value="<%=title%>"/></td>
                    </tr>
                    <tr>
                      <td height="20" align="center" bgcolor="#FFFF90"><font color="black">내용</font></td>
                      <td bgcolor="#f2ffff" align="left"> <textarea name="content" cols="50" rows="10" theme="simple" value="<%=content%>"></textarea></td>
                    </tr>
                    
                    <tr>
                      <td height="20" align="center" bgcolor="#FFFF90"><font color="black">비밀번호</font></td>
                      <td bgcolor="#f2ffff" align="left"> <input type="password" name="pwd" id="pwd" cssStyle="width:200px" theme="simple"/>
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
                      <input type="hidden" name="seq" value="<%=seq %>"/>
                      <input type="hidden" id="pwd1" value="<%=pwd %>"/>
                      <input type="button" onclick="check()" value="보내기"/>
                      <input type="reset" value="재입력"/>
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