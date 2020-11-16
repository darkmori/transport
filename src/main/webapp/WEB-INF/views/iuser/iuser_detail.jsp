<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<%@include file="../include/head.jsp"%>
<title>交通費承認</title>
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
							<c:choose>
								<c:when test="${row.t_check1 ='1'}">
									<input type="checkbox" id="t_check1" name="t_check1" checked="checked">
								</c:when>
								<c:otherwise>
									<input type="checkbox" id="t_check2" name="t_check2">
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${row.t_check2 ='1'}">
									<input type="checkbox" id="t_check2" name="t_check2" checked="checked">
								</c:when>
								<c:otherwise>
									<input type="checkbox" id="t_check2" name="t_check2">
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${row.t_check3 ='1'}">
									<input type="checkbox" id="t_check3" name="t_check3" checked="checked">
								</c:when>
								<c:otherwise>
									<input type="checkbox" id="t_check3" name="t_check3">
								</c:otherwise>
							</c:choose>
							<c:if test="${row.t_check1 ='1'}&&${row.t_check2 ='1'}&&${row.t_check3 ='1'}">
								<i class="large green checkmark icon"></i>
							</c:if>
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