<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<%@include file="../include/head.jsp"%>
<body>

	<%@include file="../include/main_header.jsp"%>

	<table class="ui yellow celled table">
		<thead>
			<tr class="text-center" style="font-weight: bolder;">
				<th class="one wide">番号</th>
				<th class="two wide">名前(漢字)</th>
				<th class="two wide">名前(カナ)</th>
				<th class="one wide">姓別</th>
				<th class="two wide">登録メール</th>
				<th class="two wide">電話番号</th>
				<th class="one wide">役割</th>
				<th class="one wide">編集・削除</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="row" items="${dto}">
				<tr>
					<td><a href='${path}/iuser/detail/${row.u_no}'>${row.u_no}</a></td>
					<td>${row.u_namefirst}&nbsp;${row.u_namelast}</td>
					<td>${row.u_katafirst}&nbsp;${row.u_katalast}</td>
					<td>${row.u_gender}</td>
					<td>${row.u_mail}</td>
					<td>telnum</td>
					<td>${row.u_admin}</td>
					<td><a href='${path}/iuser/modify/${row.u_no}'> <i
							class="edit icon"></i></a> 
					<a href='${path}/iuser/delete/${row.u_no}'
						onclick="return confirm('本当に削除しますか。');"> <i
							class="trash alternate icon" style="color: red;"></i>
					</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<input type="button" class="ui large primary submit button"
		onclick="location.href='${path}/iuser/write'" value="登録">
</body>
</html>