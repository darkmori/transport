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
				<input type="hidden" name="t_no" id="t_no" value="${dto.t_no} ">
			</div>
			<div class="ui calendar field" id="date_calendar">
				<div class="ui input left icon">
					<i class="calendar icon"></i> <input type="text" placeholder="日付 (必須)" id="t_date" name="t_date" value="${dto.t_date} ">
				</div>
			</div>
			<div class="field">
				<select name="t_way" id="t_way" class="ui selection dropdown">
					<c:choose>
						<c:when test="${dto.t_way == '電車'}">
							<option value="電車" selected="selected">電車</option>
							<option value="バス">バス</option>
							<option value="タクシー">タクシー</option>
							<option value="車">車</option>
							<option value="その他">その他</option>
						</c:when>
						<c:when test="${dto.t_way == 'バス'}">
							<option value="電車">電車</option>
							<option value="バス" selected="selected">バス</option>
							<option value="タクシー">タクシー</option>
							<option value="車">車</option>
							<option value="その他">その他</option>
						</c:when>
						<c:when test="${dto.t_way == 'タクシー'}">
							<option value="電車">電車</option>
							<option value="バス">バス</option>
							<option value="タクシー" selected="selected">タクシー</option>
							<option value="車">車</option>
							<option value="その他">その他</option>
						</c:when>
						<c:when test="${dto.t_way == '車'}">
							<option value="電車">電車</option>
							<option value="バス">バス</option>
							<option value="タクシー">タクシー</option>
							<option value="車" selected="selected">車</option>
							<option value="その他">その他</option>
						</c:when>
						<c:when test="${dto.t_way == 'その他'}">
							<option value="電車">電車</option>
							<option value="バス">バス</option>
							<option value="タクシー">タクシー</option>
							<option value="車">車</option>
							<option value="その他" selected="selected">その他</option>
						</c:when>
					</c:choose>
				</select>
			</div>
			<div class="field">
				<div class="ui left icon input">
					<i class="location arrow icon"></i> <input type="text" name="t_start" id="t_start" placeholder="出発地  (必須)" value="${dto.t_start} ">
				</div>
			</div>
			<div class="field">
				<div class="ui left icon input">
					<i class="map marker icon"></i> <input type="text" name="t_end" id="t_end" placeholder="到着地  (必須)" value="${dto.t_end} ">
				</div>
			</div>
			<div class="field">
				<div class="ui left icon input">
					<i class="briefcase icon"></i> <input type="text" name="t_visit" id="t_visit" placeholder="訪問先" value="${dto.t_visit} ">
				</div>
			</div>
			<div class="field">
				<select name="t_goback" id="t_goback" class="ui selection dropdown">
					<c:choose>
						<c:when test="${dto.t_goback == '片'}">
							<option value="片" selected="selected">片</option>
							<option value="往">往</option>
						</c:when>
						<c:when test="${dto.t_goback == '往'}">
							<option value="片">片</option>
							<option value="往" selected="selected">往</option>
						</c:when>
					</c:choose>
				</select>
			</div>
			<div class="field">
				<div class="ui left icon input">
					<i class="pencil alternate icon"></i> <input type="text" name="t_writer" id="t_writer" placeholder="摘要  (必須)" value="${dto.t_writer}">
				</div>
			</div>
			<div class="field">
				<div class="ui left icon input">
					<i class="yen sign icon"></i> <input type="text" name="t_money" id="t_money" placeholder="金額  (必須)" value="${dto.t_money}">
				</div>
			</div>
			<div>
				<input type="button" value="修正" class="ui primary button" onclick="javascript:itrans_update()"> <input type="button" class="ui button" value="リスト" onclick="location.href='${path}/itrans/list.do'">
			</div>
		</div>
	</form>


	<script>
		function itrans_update() {
			var t_no = $("#t_no").val();
			var t_date = $("#t_date").val();
			var t_way = $("#t_way").val();
			var t_start = $("#t_start").val();
			var t_end = $("#t_end").val();
			var t_visit = $("#t_visit").val();
			var t_goback = $("#t_goback").val();
			var t_writer = $("#t_writer").val();
			var t_money = $("#t_money").val();

			if (t_way == "") {
				alert("交通手段を入力してください");
				$("#t_way").focus();
				return;
			}
			if (t_start == "") {
				alert("出発区間を入力してください");
				$("#t_start").focus();
				return;
			}
			if (t_end == "") {
				alert("到着区間を入力してください");
				$("#t_end").focus();
				return;
			}
			if (t_writer == "") {
				alert("摘要を入力してください");
				$("#t_writer").focus();
				return;
			}
			if (t_money == "") {
				alert("金額を入力してください");
				$("#t_money").focus();
				return;
			}
			document.itrans_form.action = "${path}/itrans/update.do";
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
							/* return year + '/' + month + '/' + day; */
						}
					}
				});
		$('.ui.dropdown').dropdown();
	</script>
</body>

</html>