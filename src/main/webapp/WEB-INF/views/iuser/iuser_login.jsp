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
				<img src="" class="image"> ILUCKSOLUTION
			</h2>
			<form class="ui large form" action="${path}/iuser/login_check" method="post">
				<div class="ui segment">
					<div class="field">
						<div class="ui left icon input">
							<i class="user icon"></i> <input type="email" name="email" placeholder="E-mail address">
						</div>
					</div>
					<div class="field">
						<div class="ui left icon input">
							<i class="lock icon"></i> <input type="password" name="password" placeholder="Password">
						</div>
					</div>
					<button type="submit" class="ui large primary submit button">ログイン</button>
					<c:if test="${message == 'nologin' }">
						<div style="color: red;">ログイン してください。</div>
					</c:if>

					<c:if test="${message == 'error' }">
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