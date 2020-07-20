<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<%@include file="../include/head.jsp"%>

<body>
	<%@include file="../include/main_header.jsp"%>
	<form method="POST" role="form" class="ui large form container" name="itrans_form">
		<div class="ui segment">
			<div>
				<input type="hidden" name="u_no" id="u_no" value="${dto.u_no} ">
			</div>
			<div class="field">
				<div class="ui left icon input">
					<i class="envelope icon"></i> <input type="email" name="u_mail" id="u_mail" placeholder="メール  (必須)" value="${dto.u_mail }">
				</div>
			</div>
			<div class="field">
				<div class="ui left icon input">
					<i class="lock icon"></i> <input type="password" name="u_password" id="u_password" placeholder="パスワード  (必須)" value="${dto.u_password }">
				</div>
			</div>
			<div class="field">
				<div class="ui left icon input">
					<i class="address book icon"></i><input type="text" name="u_namefirst" id="u_namefirst" placeholder="苗字(漢字)" value="${dto.u_namefirst }">
				</div>
			</div>
			<div class="field">
				<div class="ui left icon input">
					<i class="address book outline icon"></i> <input type="text" name="u_namelast" id="u_namelast" placeholder="名前(漢字)" value="${dto.u_namelast }">
				</div>
			</div>
			<div class="field">
				<div class="ui left icon input">
					<i class="address card icon"></i> <input type="text" name="u_katafirst" id="u_katafirst" placeholder="苗字(カナ)" value="${dto.u_katafirst }">
				</div>
			</div>
			<div class="field">
				<div class="ui left icon input">
					<i class="address card outline icon"></i> <input type="text" name="u_katalast" id="u_katalast" placeholder="名前(カナ) " value="${dto.u_katalast }">
				</div>
			</div>

			<c:choose>
				<c:when test="${dto.u_gender == 'm'}">
					<div class="inline fields">
						<div class="field">
							<div class="ui radio chekbox">
								<input type="radio" name="u_gender" id="u_gender" value="m" checked="checked"> <i class="male icon"></i>
							</div>
						</div>
						<div class="field">
							<div class="ui radio chekbox">
								<input type="radio" name="u_gender" id="u_gender" value="f"> <i class="female icon"></i>
							</div>
						</div>
					</div>
				</c:when>
				<c:when test="${dto.u_gender == 'f'}">
					<div class="inline fields">
						<div class="field">
							<div class="ui radio chekbox">
								<input type="radio" name="u_gender" id="u_gender" value="m"> <i class="male icon"></i>
							</div>
						</div>
						<div class="field">
							<div class="ui radio chekbox">
								<input type="radio" name="u_gender" id="u_gender" value="f" checked="checked"> <i class="female icon"></i>
							</div>
						</div>
					</div>
				</c:when>
			</c:choose>

			<c:choose>
				<c:when test="${dto.u_admin == '1' }">
					<div class="inline fields">
						<div class="field">
							<div class="ui radio chekbox">
								<input type="radio" name="u_admin" id="u_admin" value="1" checked="checked">管理者
							</div>
						</div>
						<div class="field">
							<div class="ui radio chekbox">
								<input type="radio" name="u_admin" id="u_admin" value="2">一般
							</div>
						</div>
					</div>
				</c:when>
				<c:when test="${dto.u_admin == '2'}">
					<div class="inline fields">
						<div class="field">
							<div class="ui radio chekbox">
								<input type="radio" name="u_admin" id="u_admin" value="1">管理者
							</div>
						</div>
						<div class="field">
							<div class="ui radio chekbox">
								<input type="radio" name="u_admin" id="u_admin" value="2" checked="checked">一般
							</div>
						</div>
					</div>
				</c:when>
			</c:choose>
			<div>
				<input type="button" value="修正" class="ui primary button" onclick="javascript:itrans_update()"> <input type="button" class="ui button" value="リスト" onclick="location.href='${path}/itrans/list.do'">
			</div>
		</div>
	</form>


	<script>
		function itrans_update() {
			var u_no = $("#u_no").val();
			var u_mail = $("#u_mail").val();
			var u_password = $("#u_password").val();
			var u_namefirst = $("#u_namefirst").val();
			var u_namelast = $("#u_namelast").val();
			var u_katafirst = $("#u_katafirst").val();
			var u_katalast = $("#u_katalast").val();
			var u_gender = $("#u_gender").val();
			var u_admin = $("#u_admin").val();

			if (u_mail == "") {
				alert("日付を入力してください");
				$("#u_mail").focus();
				return;
			}
			if (u_password == "") {
				alert("交通手段を入力してください");
				$("#u_password").focus();
				return;
			}
			if (u_namefirst == "") {
				alert("出発地を入力してください");
				$("#u_namefirst").focus();
				return;
			}
			if (u_namelast == "") {
				alert("到着地を入力してください");
				$("#u_namelast").focus();
				return;
			}

			if (u_katafirst == "") {
				alert("摘要を入力してください");
				$("#u_katafirst").focus();
				return;
			}
			if (u_katalast == "") {
				alert("金額を入力してください");
				$("#u_katalast").focus();
				return;
			}
			document.itrans_form.action = "${path}/iuser/update";
			document.itrans_form.submit();
		}

		$('.ui.dropdown').dropdown();
	</script>
</body>

</html>