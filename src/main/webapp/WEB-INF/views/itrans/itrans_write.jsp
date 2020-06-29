<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<%@include file="../include/head.jsp" %>

<body>
	<%@include file="../include/main_header.jsp"  %>
	
	<form method="POST" role="form" class="container" name="itrans_form">
		<legend>交通費精算書</legend>
		<!-- <div class="form-group">
            <label for="t_date" class="col-sm-2">日付</label>
            <input type="date" name="" id="t_date" class="form-control" value="" required="required" title="">
        </div> -->
		<div class="form-group">
			<label for="t-way" class="col-sm-2">交通手段</label> 
			<!--  <input name="t_way" id="t_way" class="form-control"> </input> -->
			<select name="t_way" id="t_way" class="form-control">
				<option value="電車">電車</option>
				<option value="バス">バス</option>
				<option value="タクシー">タクシー</option>
				<option value="車">車</option>
				<option value="その他">その他</option>
				
			</select>
		</div>
		<div class="form-group">
			<label for="t-start" class="col-sm-2">出発地</label> <input type="text" name="t_start" id="t_start" class="form-control" value="" required="required">
		</div>
		<div class="form-group">
			<label for="t-end" class="col-sm-2">到着地</label> <input type="text" name="t_end" id="t_end" class="form-control" value="" required="required">
		</div>
		<div class="form-group">
			<label for="t_goback" class="col-sm-2">片/往</label> <select name="t_goback" id="t_goback" class="form-control">
				<option value="片">片</option>
				<option value="往">往</option>
			</select>
		</div>
		<div class="form-group">
			<label for="t-writer" class="col-sm-2">摘要</label> <input type="text" name="t_writer" id="t_writer" class="form-control" value="" required="required">
		</div>
		<div class="form-group">
			<label for="t-money" class="col-sm-2">金額</label> <input type="text" name="t_money" id="t_money" class="form-control" value="" required="required">
		</div>
		<div>
			<input type="button" value="登録" class="btn btn-default pull-right" onclick="javascript:itrans_write()"> <input type="button" class="btn btn-default" value="リスト" onclick="location.href='${path}/itrans/list.do'">
		</div>
	</form>


	<script>
		function itrans_write() {
			var t_way = $("#t_way").val();
			var t_start = $("#t_start").val();
			var t_end = $("#t_end").val();
			var t_goback = $("#t_goback").val();
			var t_writer = $("#t_writer").val();
			var t_money = $("#t_money").val();

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
			document.itrans_form.action = "${path}/itrans/insert.do";
			document.itrans_form.submit();
		}
	</script>
</body>

</html>