<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<%@include file="../include/head.jsp"%>
<style>
#itrans_form {
	margin-top: 80px;
	width: 770px;
}
</style>

<body>
	<%@include file="../include/user_header.jsp"%>

	<form method="POST" role="form" class="ui large form container" name="itrans_form" id="itrans_form" autocomplete="off">
		<input type="hidden" id="u_no" name="u_no" value="${u_no}">
		<div class="ui segment">
			<div class="two fields">
				<div class="ui calendar field" id="date_calendar">
					<div class="ui input left icon">
						<i class="calendar link icon"></i>
						<input type="text" placeholder="日付 (必須)" id="t_date" name="t_date" maxlength="15">
					</div>
				</div>
				<div class="field">
					<select name="t_way" id="t_way" class="ui selection dropdown">
						<option value="">--交通手段--</option>
						<option value="バス">バス</option>
						<option value="電車">電車</option>
						<option value="タクシー">タクシー</option>
						<option value="車">車</option>
					</select>
				</div>
			</div>
			<div class="two fields">
				<div class="field">
					<div class="ui left icon input">
						<i class="location arrow icon"></i>
						<input type="text" name="t_start" id="t_start" placeholder="出発地  (必須)" maxlength="50">
					</div>
				</div>
				<div class="field">
					<div class="ui left icon input">
						<i class="map marker icon"></i>
						<input type="text" name="t_end" id="t_end" placeholder="到着地  (必須)" maxlength="50">
					</div>
				</div>
			</div>
			<div class="two fields">
				<div class="field">
					<div class="ui left icon input">
						<i class="location train icon"></i>
						<input type="text" name="t_rosen1" id="t_rosen1" placeholder="電車の場合、路線を入力してください。" maxlength="50">
					</div>
				</div>
				<div class="field">
					<div class="ui left icon input">
						<i class="location train icon"></i>
						<input type="text" name="t_rosen2" id="t_rosen2" placeholder="電車の場合、路線を入力してください。" maxlength="50">
					</div>
				</div>
			</div>
			<div class="two fields">
				<div class="field">
					<select name="t_goback" id="t_goback" class="ui selection dropdown">
						<option value="片">片</option>
						<option value="往">往</option>
					</select>
				</div>
				<div class="field">
					<div class="ui left icon input">
						<i class="briefcase icon"></i>
						<input type="text" name="t_visit" id="t_visit" placeholder="訪問先" maxlength="50">
					</div>
				</div>
			</div>
			<div class="field">
				<div class="ui left icon input">
					<i class="location train icon"></i>
					<input type="text" name="t_rosen3" id="t_rosen3" placeholder="電車の場合、路線を入力してください。" maxlength="50">
				</div>
			</div>
			<div class="field">
				<div class="ui left icon input">
					<i class="pencil alternate icon"></i>
					<input type="text" name="t_memo" id="t_memo" placeholder="備考" maxlength="50">

				</div>
			</div>
			<div class="field">
				<div class="ui left icon input">
					<i class="yen sign icon"></i>
					<input type="number" name="t_money" id="t_money" placeholder="金額  (必須)" min="1" maxlength="10" oninput="numberMaxLength(this)">
				</div>
			</div>
		</div>
		<div class="field">
			<input type="button" value="登録" class="ui primary button " onclick="javascript:itrans_write()">
			<input type="button" value="キャンセル" class="ui button" onclick="location.href='${path}/itrans/list.do/${u_no}'">
		</div>
	</form>


	<script>
		function itrans_write() {
			var u_no = $("#u_no").val();
			var t_date = $("#t_date").val();
			var t_way = $("#t_way").val();
			var t_start = $("#t_start").val();
			var t_end = $("#t_end").val();
			var t_visit = $("#t_visit").val();
			var t_rosen1 = $("#t_rosen1").val();
			var t_rosen2 = $("#t_rosen2").val();
			var t_rosen3 = $("#t_rosen3").val();
			var t_memo = $("#t_memo").val();
			var t_goback = $("#t_goback").val();
			var t_money = $("#t_money").val();

			if (t_date == "") {
				alert("日付を入力してください");
				$("#t_date").focus();
				return;
			}
			if (t_way == "") {
				alert("交通手段を入力してください");
				$("#t_way").focus();
				return;
			}
			if (t_start == "") {
				alert("出発地を入力してください");
				$("#t_start").focus();
				return;
			}
			if (t_end == "") {
				alert("到着地を入力してください");
				$("#t_end").focus();
				return;
			}

			if (t_money == "") {
				alert("金額を入力してください");
				$("#t_money").focus();
				return;
			}
			document.itrans_form.action = "${path}/itrans/insert.do";
			document.itrans_form.submit();
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
						}
					}
				});
		$('.ui.dropdown').dropdown();

		function numberMaxLength(e){
	        if(e.value.length > e.maxLength){
	            e.value = e.value.slice(0, e.maxLength);
	        }
	    }
	</script>
</body>

</html>