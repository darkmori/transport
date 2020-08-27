
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<title>交通経費リスト</title>
<%@include file="../include/head.jsp"%>
<body>

	<%@include file="../include/user_header.jsp"%>

	<table class="ui yellow celled table">
		<thead>
			<tr class="text-center" style="font-weight: bolder;">
				<th class="one wide">日付</th>
				<th class="one wide">交通手段</th>
				<th class="two wide">出発地</th>
				<th class="two wide">到着地</th>
				<th class="two wide">取引先</th>
				<th class="one wide">片/往</th>
				<th class="two wide">備考</th>
				<th class="one wide" style="text-align: left;">金額</th>
				<th class="one wide">修正</th>
			</tr>
		</thead>
		<tbody>
			<c:set var="sum" value="0" />
			<c:forEach var="row" items="${dto}">
				<tr>
					<td>${row.t_date}</td>
					<td>${row.t_way}</td>
					<td>${row.t_start}</td>
					<td>${row.t_end}</td>
					<td>${row.t_visit}</td>
					<td>${row.t_goback}</td>
					<td>${row.t_memo}</td>
					<td>
						¥&nbsp;
						<fmt:formatNumber value='${row.t_money}' pattern="#,###" />
					</td>
					<td>
						<a href='${path}/itrans/modify.do/${row.t_no}'> <i class="edit icon"></i>
						</a> <a href='${path}/itrans/delete.do/${row.t_no}' onclick="return confirm('本当に削除しますか。');"> <i class="trash alternate icon" style="color: red;"></i>
						</a>
					</td>
				</tr>
				<c:set var="sum" value="${sum+row.t_money }" />
			</c:forEach>
		</tbody>
		<tfoot>
			<tr style="">
				<td colspan="6" style="visibility: hidden"></td>
				<td>合計</td>
				<td>
					¥&nbsp;
					<fmt:formatNumber value='${sum}' pattern="#,###" />
				</td>
			</tr>
		</tfoot>
	</table>
	<%-- 	<input type="button" class="ui large primary submit right floated button" onclick="location.href='${path}/itrans/write.do/${u_no}'" value="登録"> --%>
	<input type="button" class="ui large primary submit right floated button" onclick="location.href='${path}/itrans/write.do/${u_no}'" value="登録">

</body>
</html>