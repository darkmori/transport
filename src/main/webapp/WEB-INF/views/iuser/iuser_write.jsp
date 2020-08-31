<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<%@include file="../include/head.jsp"%>
<title>社員登録</title>
<style>
#iuser_form {
	padding-top: 80px;
	width: 400px;
}
</style>

<body>
	<%@include file="../include/admin_header.jsp"%>

	<form method="POST" role="form" class="ui large form container" name="iuser_form" id="iuser_form">
		<div class="ui segment">
			<div class="field">
				<div class="ui left icon input">
					<i class="address book icon"></i>
					<input type="text" name="u_namefirst" id="u_namefirst" placeholder="苗字(漢字)">
				</div>
			</div>
			<div class="field">
				<div class="ui left icon input">
					<i class="address book outline icon"></i>
					<input type="text" name="u_namelast" id="u_namelast" placeholder="名前(漢字)">
				</div>
			</div>
			<div class="field">
				<div class="ui left icon input">
					<i class="address card icon"></i>
					<input type="text" name="u_katafirst" id="u_katafirst" placeholder="苗字(カナ)">
				</div>
			</div>
			<div class="field">
				<div class="ui left icon input">
					<i class="address card outline icon"></i>
					<input type="text" name="u_katalast" id="u_katalast" placeholder="名前(カナ) ">
				</div>
			</div>
			<div class="field">
				<select name="u_gender" id="u_gender" class="ui selection dropdown">
					<option value="m">男</option>
					<option value="f">女</option>
				</select>
			</div>
			<div class="field">
				<div class="ui left icon input">
					<i class="envelope icon"></i>
					<input type="email" name="u_mail" id="u_mail" placeholder="メール  (必須)">
				</div>
			</div>
			<div class="field">
				<div class="ui left icon input">
					<i class="lock icon"></i>
					<input type="password" name="u_password" id="u_password" placeholder="パスワード  (必須)">
				</div>
			</div>
			<div class="field">
				<div class="ui left icon input">
					<i class="envelope icon"></i>
					<input type="text" name="u_tel" id="u_tel" placeholder="電話番号">
				</div>
			</div>
			<div class="field">
				<select name="u_admin" id="u_admin" class="ui selection dropdown">
					<option value="1">管理者</option>
					<option value="2">一般</option>
				</select>
			</div>
			<div>
				<input type="button" value="登録" class="ui primary button" onclick="javascript:itrans_write()">
				<input type="button" value="トップへ" class="ui button" onclick="location.href='${path}/iuser/list'">
			</div>
		</div>
	</form>


	<script>
		function itrans_write() {
			var u_mail = $("#u_mail").val();
			var u_password = $("#u_password").val();
			var u_namefirst = $("#u_namefirst").val();
			var u_namelast = $("#u_namelast").val();
			var u_katafirst = $("#u_katafirst").val();
			var u_katalast = $("#u_katalast").val();
			var u_gender = $("#u_gender").val();
			var u_tel = $("#u_tel").val();
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
			document.iuser_form.action = "${path}/iuser/insert";
			document.iuser_form.submit();
		}

		$('#date_calendar').calendar(
				{
					type : 'date',
					text : {
						days : [ '日', '月', '火', '水', '木', '金', '土' ],
						months : [ '1月', '2月', '3月', '4月', '5月', '6月', '7月',
								'8月', '9月', '10月', '11月', '12月' ],
						monthsShort : [ '1月', '2月', '3月', '4月', '5月', '6月',
								'7月', '8月', '9月', '10月', '11月', '12月' ],
						today : '今日',
						now : '今',
						am : '午前',
						pm : '午後'
					},
					formatter : {
						date : function(date, settings) {
							if (!date)
								return '';
							var year = date.getFullYear();
							var day = date.getDate();
							var month = date.getMonth() + 1;
							return year + '-' + month + '-' + day;
							/* return year + '/' + month + '/' + day; */
						}
					}
				});

		$('.ui.dropdown').dropdown();

		$(document).ready(function() {$('#input_text').keyup(function() {
			if ($(this).val().length > $(this).attr('maxlength')) {
				alert(maxlength+ '以下に入力してください。');
				$(this).val($(this).val().substr(0,$(this).attr('maxlength')));
			}
			});
		});
	</script>
</body>

</html>