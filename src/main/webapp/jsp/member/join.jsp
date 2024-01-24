<%@ page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 페이지</title>
</head>
<body>

	<h2>회원 가입</h2>

	<form name="joinFrom" method="POST" action="doJoin">
		<div>
			아이디 : <input type="text" placeholder="아이디는 5자 이상, 16자 미만으로 입력하세요!"
				name="loginId" />
		</div>
		<div>
			비밀번호 : <input type="password" placeholder="비밀번호는 8자리 이상으로 입력하세요!"
				name="loginPw" />
		</div>
		<div>
			비밀번호 확인 : <input type="password" placeholder="비밀번호를 다시 입력해주세요"
				name="loginPw" />
		</div>
		<div>
			이름 : <input type="text" placeholder="이름을 입력하세요" name="name" />
		</div>
		<div>
			<input type="button" value="가입완료" onclick="check()">
		</div>

	</form>
</body>
<script src="user.js">
function check(){
	let frm = document.join;
	let loginId = frm.loginId;
	let loginPw = frm.loginPw;
	let loginPw_re = frm.loginPw_re;
	let name = frm.name;
	 
 	// 아이디를 입력하세요
 	if( loginId.value == "" ){
		alert("아이디를 입력하세요");
		loginId.focus();
		return false;
	}
 
 	// 아이디는 5자 이상, 16자 미만
 	if( loginId.value.length <= 4 || loginId.value.length >= 16 ){
		alert("아이디는 5자 이상, 16자 미만으로 입력하세요!");
		userid.focus();
		return false;
	}
 
 	// 비밀번호 입력
 	// 비밀번호는 8자 이상
 	if( loginPw.value == "" ){
		alert("비밀번호를 입력하세요");
		loginPw.focus();
		return false;
	} else {
		if( loginPw.value.length < 8 ){
			alert("비밀번호는 8자리 이상으로 입력하세요!");
			loginPw.focus();
			return false;
		}
	}
 
 	// 비밀번호 == 비밀번호확인
 	if( loginPw.value != loginPw_re.value ){
		alert("비밀번호 확인을 다시하세요!");
		loginPw_re.focus();
		return false;
	}
 
 	// 이름
 	if( name.value == ""  ){
		alert("이름을 입력하세요!");
		name.focus();
		return false;
	}
	// submit
 	frm.submit();
}

</script>

<div>
	<a style="color: green" href="list">리스트로 돌아가기</a>
</div>


</html>