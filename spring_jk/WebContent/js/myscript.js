function mailOpen() {

	if (document.joinform.email.value == "") {
		alert("메일을 입력하세요");
		return;
	}
	if (document.joinform.email.value.length <= 10) {
		alert("이메일을 제대로 작성해주세요");
		return;
	} else
		// 중복검사시에 페이지를 넘겨서 db로 부터 검사를 하고 출력한다.
		window.open("mailchk.jsp", "n",
				"resizable=no, width=1, height=1, left=1500,top=1500  ");

}

function ret(){
	location.href="index.jsp";
	
}

function findidgo(){
	if(document.getElementById("findname").value==""||document.getElementById("findemail").value==""){
		alert("이름과 이메일을 입력하세요");
		return;
	}
	
	window.open("findpre.jsp", "n",
	"resizable=no, width=1, height=1, left=1500,top=1500  ");

}

function findid() {
	location.href = "find.jsp";
}


function subgo() {
	
	if(document.getElementById("id").value=="" ){
		alert("아이디를 입력하세요");
		return;
	}if(document.getElementById("pwd").value==""){
		alert("비밀번호를 입력하세요");
		return;
	}
	
	
	document.getElementById("t_off1").style.display = "none";
	document.getElementById("t_off2").style.visibility = "visible";
	
	setTimeout("move()", 1500); 
}

function move() {
	
	
	document.ff.submit();

}

function signup() {
	location.href = "terms.jsp";
}

function winOpen() {

	if (document.joinform.id.value == "") {
		alert("아이디를 입력하세요");
		return;
	}
	if (document.joinform.id.value.length <= 4
			|| document.joinform.id.value.length >= 10) {
		alert("아이디는 5~10자리 입니다.");
		return;
	} else
		// 중복검사시에 페이지를 넘겨서 db로 부터 검사를 하고 출력한다.
		window.open("idchk.jsp", "n",
				"resizable=no, width=1, height=1, left=1500,top=1500  ");

}
// 우편번호 검색
function zipChk() {

	window
			.open(
					"zipbox.jsp",
					"n",
					"width=400, height=400, scrollbars=yes, "
							+ "location=no,titlebar=no,toolbar=no,menubar=no,status=no,left= 0,top= 0");
}

// 비밀번호 일치체크
function pwchk() {
	if (document.joinform.pwd.value != joinform.pwdChk.value) {

		document.getElementById("pwchk1").style.display = "block";
		return;

	} else if (document.joinform.pwd.value == joinform.pwdChk.value) {

		document.getElementById("pwchk1").style.display = "none";
		return;
	}

}

function memChk() // 데이터 입력유무 확인 후 submit하는 스크립트
{

	if (document.joinform.id.value == "") {
		alert("아이디를 입력하세요");
		document.joinform.id.focus();
		return false;
	}
	if (document.joinform.pwd.value == "") {
		alert("비밀번호를 입력하세요");
		document.joinform.pwd.focus();
		return false;
	}
	if (document.joinform.pwdChk.value == "") {
		alert("비밀번호를 다시한번 입력해주세요");
		document.joinform.pwdChk.focus();
		return false;
	}

	if (document.joinform.pwd.value != joinform.pwdChk.value) {
		alert("비밀번호가 다릅니다.");
		document.joinform.pwd.value = "";
		document.joinform.pwdChk.value = "";
		document.joinform.pwd.focus();
		return false;
	}
	if (document.joinform.name.value == "") {
		alert("* 표시 항목은 필수 입력항목입니다.");
		document.joinform.name.focus();
		return false;
	}

	if (document.joinform.email.value == "") {
		alert("이메일을 입력하세요");
		document.joinform.email.focus();
		return false;
	}
	// 메일 수신은 수신동의 selected

	if (document.joinform.address01.value == "") {
		alert("주소를 입력하세요");
		document.joinform.address01.focus();
		return false;
	}

	if (document.joinform.phone01.value == "") {
		alert("전화번호를 선택하세요");
		return false;
	}
	if (document.joinform.phone02.value == "") {
		alert("전화번호를 입력하세요");
		document.joinform.phone02.focus();
		return false;
	}
	if (document.joinform.phone03.value == "") {
		alert("전화번호를 입력하세요");
		document.joinform.phone03.focus();
		return false;
	}
	if (document.getElementById('idoverlap').value != document
			.getElementById('id_txt').value || document.getElementById('mailoverlap').value != document
			.getElementById('email').value) {
		alert("중복확인을 하지 않으셨습니다.");
		return false;
	}

	document.joinform.submit(); // 버튼으로 쓸 땐 return true; 대신 이걸 쓰고 form시작 구문에
								// onsubmit="return memChk()" 는 불필요하여 삭제

}

function cancel() {
	var i = confirm("가입을 취소하시겠습니까?");
	if (i) {
		location.href = "index.jsp";
	} else
		return;

}