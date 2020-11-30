<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<title>交通費承認</title>
<%@include file="../include/head.jsp"%>
<body>

	<%@include file="../include/admin_header.jsp"%>
	<form method="POST" role="form" class="ui large form">
		<table class="ui yellow celled table">
			<thead>
				<tr class="text-center" style="font-weight: bolder;">
					<th class="one wide">日付</th>
					<th class="one wide">交通手段</th>
					<th class="two wide">出発地</th>
					<th class="two wide">到着地</th>
					<th class="two wide">取引先</th>
					<th class="one wide">片/往</th>
					<th class="two wide">摘要</th>
					<th class="one wide" style="text-align: left;">金額</th>
					<th class="one wide">チェック</th>
				</tr>
			</thead>
			<tbody>
				<c:set var="sum" value="0" />
				<c:forEach var="row" items="${dto}">
					<tr>
						<td hidden="hidden">${row.t_no}</td>
						<td>${row.t_date}</td>
						<td>${row.t_way}</td>
						<td>${row.t_rosen1}&nbsp;${row.t_start}</td>
						<td>${row.t_rosen2}&nbsp;${row.t_end}</td>
						<td>${row.t_visit}</td>
						<td>${row.t_goback}</td>
						<td>${row.t_memo}</td>
						<td>
							¥&nbsp;
							<fmt:formatNumber value='${row.t_money}' pattern="#,###" />
						</td>
						<td>
							<a href='${path}/iuser/check/${row.t_no}' onclick="return confirm('本当にチェックしますか。');"> <i class="red checkmark right icon"></i></a>
						</td>
					</tr>
					<c:set var="sum" value="${sum+row.t_money}" />
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
	</form>


</body>
</html>