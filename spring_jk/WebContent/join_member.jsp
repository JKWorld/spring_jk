<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 실행되는 폼이 아닌 입력유무 확인용 
memRegDate : 등록일(날짜) 라니, jsp파일에 전송될 회원번호와 같이 입력될
값 같지만 아직 잘 모르겠음...-->
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>Join</title>
<script type="text/javascript" src="js/myscript.js"></script>
<link href="css/mycss.css" rel="stylesheet" type="text/css" media="all" />



</head>

<body>



	<form action="add.inc" method="post" name="joinform">

		<table border="0px" cellpadding="0px" cellspacing="0px" 
			style="margin-left: 100px;">
			<!-- cellpadding과 cellspacing 값을 0으로 초기화 해주지 않으면 테이블내부의 행/열 간 간격이 벌어진다. -->
			<caption align="left">
				<font color="white"></font>
			</caption>
			<tr height="60">
				<td align="right" width="100" bgcolor="#D5D5D5">아이디&nbsp;</td>
				<td valign="top"></td>
				<td width="600"><input type="text" id="id_txt" name="id"
					size="16" onkeyup="" > <input type='button' value=''
					style="width: 51px; height: 21px; background: #EAEAEA URL('images/idchk.jpg');"
					onclick="winOpen()" /> <br> <font id="s">아이디는 영문,숫자
						조합으로 하셔야 합니다.[5자리이상 10자리이하]<br> 아이디는 <font color="red">소문자</font>로
						저장 됩니다.
				</font></td>

			</tr>

			<tr height="45">
				<td align="right" bgcolor="#D5D5D5">암호&nbsp;</td>
				<td valign="top">&nbsp;&nbsp;<font color="red"></font></td>
				<td><input type="password" name="pwd" size="16" /><br>
					<font id="s"><span id="pwover">비밀번호는 4자리이상 12자리이하로
							입력해주세요.</span></font></td>
				<!-- 비밀번호 문자와 숫자 혼합사용 체크....? -ㅅ-a -->
			</tr>

			<tr height="30">

				<td align="right" bgcolor="#D5D5D5">암호확인&nbsp;</td>
				<td valign="top">&nbsp;&nbsp;<font color="red"></font></td>
				<td><input type="password" name="pwdChk" size="16" onfocus=""><span
					id="pwchk1" style="color: red">비밀번호 불일치</span></td>

			</tr>

			<tr height="30">
				<td align="right" bgcolor="#D5D5D5">이름&nbsp;</td>
				<td valign="top">&nbsp;&nbsp;<font color="red"></font></td>
				<td><input type="text" name="name" size="16" maxlength="28"
					onfocus="pwchk()"></td>
			</tr>




			<tr height="30">
				<td align="right" bgcolor="#D5D5D5">E - mail&nbsp;</td>
				<td valign="top">&nbsp;&nbsp;<font color="red"></font></td>
				<td><input type="text" name="email" size="28" id="email" title="아이디와 비밀번호를 찾을때 사용됩니다.">
				<input type='button' value=''
					style="width: 51px; height: 21px; background: #EAEAEA URL('images/idchk.jpg');"
					onclick="mailOpen()" />
				</td>
			</tr>



			<tr>
				<td align="right" bgcolor="#D5D5D5">주소&nbsp;</td>
				<td valign="top">&nbsp;&nbsp;<font color="red"></font></td>
				<td><input type="text" name="address01" size="30"> <input
					type="button" value="검색" onClick="zipChk()"><br></td>
			</tr>

			<tr height="30">
				<td align="right" bgcolor="#D5D5D5">연락처&nbsp;</td>
				<td valign="top">&nbsp;&nbsp;<font color="red"></font></td>
				<td><select name="phone01">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
						<option value="02">02</option>
						<option value="033">033</option>
						<option value="032">032</option>
						<option value="043">043</option>
						<option value="042">042</option>
						<option value="041">041</option>
						<option value="062">062</option>
						<option value="063">063</option>
						<option value="053">053</option>
						<option value="061">061</option>
						<option value="052">052</option>
						<option value="054">054</option>
						<option value="051">051</option>
						<option value="055">055</option>
						<option value="031">031</option>
						<option value="064">064</option>
				</select> - <input type="text" name="phone02" size="5" maxlength="4">
					- <input type="text" name="phone03" size="5" maxlength="4">
				</td>

			</tr>



			<tr align="center">
				<td colspan="3" align="center"><input type="button" value=''
					style="width: 53px; height: 30px; background: #ffffff URL('images/joinok.jpg');"
					onclick="memChk()" /> <!-- 					onclick="memChk()" --> <input
					type='button' value=''
					style="width: 53px; height: 30px; background: #ffffff URL('images/joincancel.jpg');"
					onclick="cancel()" />
					<input type="hidden"  id="idoverlap" value=""/>
					<input type="hidden"  id="mailoverlap" value=""/>
					
					</td>
					
			</tr>
		</table>
	</form>
</body>
</html>

