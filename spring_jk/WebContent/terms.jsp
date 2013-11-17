<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.move{
	padding-top: 35px;

}

</style>
<script type="text/javascript">
	function joinok(){
		if(document.form1.yaok2.checked==false || document.form1.yaok.checked==false){
			alert("약관에 동의해야 회원가입을 할 수 있습니다");
			
			return;
		}
			
		location.href="join_member.jsp";
		
		
	}
	function joincan(){
		
		location.href="login.jsp";
	}

</script>
</head>
<body>

	<div align="center" class="page-body">
	
		<form method="post" name="form1" action="">
			<input name="type" value="ok" type="hidden"> <input
				name="mem_type" value="PERSON" type="hidden"> <input
				name="brandcode" value="" type="hidden"> <input name="first"
				value="" type="hidden"> <input name="" value=""
				type="hidden"> <input name="" value="" type="hidden">
			<fieldset>
			
				<div class="new-privercy-contract">
					<h3 class="w-normal">
						회원 가입을 하기에 앞서 <strong>회원약관</strong>을 읽어보시기 바랍니다.
					</h3>
					<div class="privercy-contract">
						<textarea cols="80" rows="10" readOnly="readonly">가. 수집하는 개인정보의 항목첫째, 회사는 회원가 입, 원활한 고객상담, 각종 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은 최소한의 개인정보를 필수항목으로 수집하고 있습니다.
회원가입
- 이름, 생년월일, 성별, 아이디, 비밀번호, 별명, 연락처(메일주소, 휴대폰 번호 중 선택), 가입인증정보
만14세 미만 아동 회원가입 
- 이름, 생년월일, 성별, 법정대리인 정보, 아이디, 비밀번호, 연락처 (메일주소, 휴대폰 번호 중 선택), 가입인증정보
단체아이디 회원가입 
- 단체아이디, 회사명, 대표자명, 대표 전화번호, 대표 이메일 주소, 단체주소, 관리자 아이디, 관리자 연락처, 관리자 부서/직위
- 선택항목 : 대표 홈페이지, 대표 팩스번호
둘째, 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
- IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록
셋째, 네이버 아이디를 이용한 부가 서비스 및 맞춤식 서비스 이용 또는 이벤트 응모 과정에서 해당 서비스의 이용자에 한해서만 개인정보 추가 수집이 발생할 수 있으며, 이러한 경우 별도의 동의를 받습니다. 
넷째, 성인컨텐츠, 유료/게임 등 일부 서비스 이용시 관련 법률 준수를 위해 본인인증이 필요한 경우, 아래와 같은 정보들이 수집될 수 있습니다. 
- 이름, 생년월일, 성별, 중복가입확인정보(DI), 암호화된 동일인 식별정보(CI), 휴대폰 번호(선택), 아이핀 번호(아이핀 이용시), 내/외국인 정보
다섯째, 유료 서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다. 
- 신용카드 결제시 : 카드사명, 카드번호 등
- 휴대전화 결제시 : 이동전화번호, 통신사, 결제승인번호 등
- 계좌이체시 : 은행명, 계좌번호 등
- 상품권 이용시 : 상품권 번호
나. 개인정보 수집방법회사는 다음과 같은 방법으로 개인정보를 수집합니다. 
- 홈페이지, 서면양식, 팩스, 전화, 상담 게시판, 이메일, 이벤트 응모, 배송요청
- 협력회사로부터의 제공 
- 생성정보 수집 툴을 통한 수집



						

본 약관은 2009년06월11일부터 적용됩니다.
</textarea>
					</div>
					<div class="privercy-agree">
						<label><input class="MS_input_checkbox" name="yaok2"
							value="Y" type="checkbox"> 위의 <strong>‘회원약관’</strong> 내용에
							동의합니다.</label>
					</div>
					<h3>개인정보 취급방침</h3>

					<div class="tab-content">
						<div class="privercy-contract">
							<textarea cols="70" rows="10" readOnly="readonly">수집하는 개인정보의 항목 및 수집방법
 회원가입, 비회원 구매, 상담, 불량이용의 방지 등을 위해 
아래와 같은 개인정보를 수집하고 있습니다.
- 필수항목 : 이름, ID, 비밀번호, 이메일, 전화번호, 주소, IP Address, 결제기록
- 선택항목 : 개인맞춤 서비스를 제공하기 위하여 회사가 필요로 하는 정보
개인정보의 수집 및 이용목적
수집한 개인정보를 다음의 목적을 위해 활용합니다.

가. 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산, 콘텐츠 제공, 
구매 및 요금 결제, 물품배송 또는 청구지 등 발송, 금융거래 본인 인증 및 금융서비스
나. 회원 관리
회원제 서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 
비인가 사용 방지, 가입 의사 확인, 연령확인, 불만처리 등 민원처리, 고지사항 전달
다. 마케팅 및 광고에 활용
이벤트 등 광고성 정보 전달, 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계
개인정보의 보유 및 이용기간
원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 
파기합니다. 단, 상법 및 “전자상거래등에서의 소비자보호에 관한 법률” 등 관련 
법령의 규정에 의하여 다음과 같이 거래 관련 관리 의무 관계의 확인 등을 이유로 
일정기간 보유하여야 할 필요가 있을 경우에는 일정기간 보유합니다.
- 계약 또는 청약철회 등에 관한 기록 : 5년 (전자상거래등에서의 소비자보호에 관한 법률)
- 대금결제 및 재화 등의 공급에 관한 기록 : 5년 (전자상거래등에서의 소비자보호에 관한 법률)
- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년 (전자상거래등에서의 소비자보호에 관한 법률)
- 설문조사, 이벤트 등 일시적 목적을 위하여 수집한 경우 : 당해 설문조사, 이벤트 등의 종료 시점
- 본인확인에 관한 기록 : 6개월(정보통신망 이용촉진 및 정보보호 등에 관한 법률)
- 방문(로그)에 관한 기록 : 3개월(통신비밀보호법)
</textarea>
						</div>
						
						
					</div>
					<div class="privercy-agree">
						<label><input class="MS_input_checkbox" name="yaok"
							value="Y" type="checkbox"> 위의 <strong>‘개인정보
								수집,이용’</strong>에 동의합니다. </label>
					</div>
				</div>
				
				<div class="move">
					<input type="button" value="확인" onclick="joinok()"/> 
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="button" value="취소" onclick="joincan()"/>
				</div>
			</fieldset>
		</form>
	</div>

</body>
</html>