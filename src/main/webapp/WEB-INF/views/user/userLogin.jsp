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
<%@include file="../include/main_header.jsp"%>
<form action="${path}/iuser/login">
	<div class="ui middle aligned center aligned grid">
		<div class="column">
			<h2 class="ui blue image header">
				<img src="themes/default/assets/images/logo_ils_min.png" class="image">
				<div class="content">ILUCKSOLUTION</div>
			</h2>
			<form class="ui large form">
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
					<input type="button" value="ログイン" class="ui large primary submit button">
					<div class="ui large yellow submit button">加入ページ</div>
				</div>
			</form>
		</div>
	</div>
</form>
</body>

</html>