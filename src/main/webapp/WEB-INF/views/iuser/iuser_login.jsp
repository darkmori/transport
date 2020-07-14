<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<script>
	$(document).ready(function() {
		$("#btnLogin").click(function() {
			// 태크.val() : 태그에 입력된 값
			// 태크.val("값") : 태그의 값을 변경 
			var u_mail = $("#u_mail").val();
			var u_password = $("#u_password").val();
			if (u_mail == "") {
				alert("아이디를 입력하세요.");
				$("#u_mail").focus(); // 입력포커스 이동
				return; // 함수 종료
			}
			if (u_password == "") {
				alert("아이디를 입력하세요.");
				$("#u_password").focus();
				return;
			}
			alert("로그인 하셨습니다.");
			// 폼 내부의 데이터를 전송할 주소
			document.form1.action = "${path}/itrans/list.do"
			// 제출
			document.form1.submit();
		});
	});
</script>
<style type="text/css">
body {
	background-color: #eeeeee;
}

body>.grid {
	height: 100%;
}

.image {
	margin-top: 100px;
}

.column {
	max-width: 450px;
}
</style>
</head>

<body>
	<div class="ui middle aligned center aligned grid">
		<div class="column">
			<h2 class="ui blue image header">
				<img src="http://placehold.it/40x40" class="image"> ILUCKSOLUTION
			</h2>
			<form class="ui large form" id="form1" method="post">
				<div class="ui segment">
					<div class="field">
						<div class="ui left icon input">
							<i class="user icon"></i> <input type="email" name="u_email" id="u_email" placeholder="E-mail address">
						</div>
					</div>
					<div class="field">
						<div class="ui left icon input">
							<i class="lock icon"></i> <input type="password" name="u_password" id="u_password" placeholder="Password">
						</div>
					</div>
					<button type="submit" class="ui large primary submit button" id="btnLogin">ログイン</button>

					<c:if test="${message == 'failure' }">
						<div style="color: red;">アイティーとパスワードが違います。</div>
					</c:if>

					<c:if test="${message == 'logout' }">
						<div style="color: red;">Logoutされました。</div>
					</c:if>
				</div>
			</form>
		</div>
	</div>
</body>

</html>