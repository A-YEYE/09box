<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>전체보기</title>
</head>
<body style='text-align:center'>
	<h1>글 목록</h1>
<!--  <br>전체 글 수: ${count} -->	
<a href='blog'>글쓰기</a><br/>
<table border='1' width='50%' cellpadding='5' align='center'>

	<tr>	
	<th>글번호</th> 
	<th>카테고리</th> 
	<th>썸네일</th>
	<th>제목</th>
	<th>요약</th>
	<th>배송비</th>
	<th>목표갯수</th>
	<th>판매 시작일</th>
	<th>판매 종료일</th>
	</tr>

<c:choose>
<c:when test="${empty list2}">
      <tr>
		<td>데이터가 없습니다.</td>
	</tr>
    </c:when>
    <c:otherwise>
	<c:forEach items="${list2}" var="goods">
	<tr>
		<td>${goods.rnum}</td>		
		<td>${goods.categoryCode}</td>
		<td><img src="${pageContext.request.contextPath}/${goods.image}"/></td>
		<td><a href='detail?rnum=${goods.rnum}'>${goods.goodsName}</a></td>
		<!-- id로 상세페이지를 구분해 줘야함. -->
		<td>${goods.summary}</td>
 		<td>${goods.deliveryCharge}</td> 
		<td>${goods.goalNum}</td>
	 	<td>${goods.sellStart}</td> 
	 	<td>${goods.sellEnd}</td>
	</tr>
	</c:forEach>
</c:otherwise>
</c:choose>
<!-- 	
	<c:forEach items="${pageStartList}" var="pageIndex" varStatus="status">
		<a href="list?start=${pageIndex}">${status.index +1 }</a>&nbsp; &nbsp;
	</c:forEach>
 -->	
</table>

</body>
</html>