<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet"
	href="/resources/bootstrap-4.3.1/css/bootstrap.css">
<script type="text/javascript"
	src="/resources/jquery-3.5.1/jquery-3.5.1.min.js"></script>
<script type="text/javascript"
	src="/resources/bootstrap-4.3.1/js/bootstrap.js"></script>
<script>
	$(document).ready(function() {

		$.ajax({
			url : "/miniboard/getMiniBoardList.do",
			type : "get",
			data : {
				test : "1"
			},
			dataType : "JSON",
			success : function(data) {

				let list = data.list;
				const size = list.length;
				let tbody = "";

				if (size > 0) {

					for (var i = 0; i < size; i++) {
						
						tbody += "<tr>";
						tbody += "<td>" + list[i].seq + "</td>";
						tbody += "<td>" + list[i].title + "</td>";
						tbody += "<td>" + list[i].regId + "</td>";
						tbody += "<td>" + list[i].regDt + "</td>";
						tbody += "</tr>";
						
					};
					

					$("#ajaxTbody").html(tbody);

				} else {

				}

			},
			error : function() {
				alert("반란군이다");
			}
		});

	});
</script>

<title>MiniBoard</title>
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item active">
      <a class="navbar-brand" href="#">
    	Portfolio of Portfolio
  	</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="http://127.0.0.1:8080/introduce/pageIntroduce.do">Portfolio</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Introduce</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">MiniBoard</a>
    </li>
  </ul>
</nav>
	

	<div class="container">
		<table class="table table-striped">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>등록시간</th>
			</tr>
			<tbody id="ajaxTbody">
				
			</tbody>
		</table>
		<hr>
		<a class="btn btn-outline-dark">글작성</a>
	</div>
</body>
</html>
