<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.*, java.io.*"%>

<%
	// 생성된 토큰 받음
String g_recaptcha_response = request.getParameter("g-recaptcha-response");
// 토큰과 보안키를 가지고 성공 여부를 확인 함
HttpURLConnection conn = (HttpURLConnection) new URL("https://www.google.com/recaptcha/api/siteverify")
		.openConnection();
String params = "secret=6LfN8KcaAAAAABpkvN31n5YGFJi09N5-PEUJgRBz" + "&response=" + g_recaptcha_response;
conn.setRequestMethod("POST");
conn.setDoOutput(true);
DataOutputStream wr = new DataOutputStream(conn.getOutputStream());
wr.writeBytes(params);
wr.flush();
wr.close();

// 결과코드 확인(200 : 성공)
int responseCode = conn.getResponseCode();
StringBuffer responseBody = new StringBuffer();
if (responseCode == 200) {

	// 데이터 추출
	BufferedInputStream bis = new BufferedInputStream(conn.getInputStream());
	BufferedReader reader = new BufferedReader(new InputStreamReader(bis));
	String line;
	while ((line = reader.readLine()) != null) {
		responseBody.append(line);
	}
	bis.close();
}
%>



<html>

<script type="text/javascript"
	src="/resources/jquery-3.5.1/jquery-3.5.1.min.js"></script>
<script type="text/javascript"
	src="/resources/bootstrap-4.3.1/js/bootstrap.js"></script>
<script
	src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"
	async defer></script>
<script src="/resources/js/login/popper.js"></script>
<script src="/resources/js/login/main.js"></script>

<script type="text/javascript">
	var correctCaptcha = function(response) {
		console.log();
	};
	var onloadCallback = function() {
		grecaptcha.render('html_element', {
			'sitekey' : '6LfN8KcaAAAAAJvnnX9Gm4jNEFX3nY4pguvwSkWu',
			'callback' : correctCaptcha
		});

	};

	$(document).ready(function() {
		$("#openEmailModal").click(function() {
			$("#exampleModal").modal();
		});
	});
</script>



<head>
<title>Portfolio For Portfolio</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="/resources/css/login/style.css">

</head>
<body>
	<form action="/login/doLogin.do" method="post" id="loginForm">
		<section class="ftco-section">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-6 text-center mb-5">
						<h2 class="heading-section">Portfolio For Portfolio</h2>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-12 col-lg-10">
						<div class="wrap d-md-flex">
							<div
								class="text-wrap p-4 p-lg-5 text-center d-flex align-items-center order-md-last">
								<div class="text w-100">
									<h2>Portfolio For Portfolio</h2>
									<p>계정을 잊으셨나요?</p>
									<button type="button" id="openEmailModal"
										class="btn btn-white btn-outline-white">회원가입</button>
								</div>
							</div>
							<div class="login-wrap p-4 p-lg-5">
								<div class="d-flex">
									<div class="w-100"></div>
									<div class="w-100">
										<p class="social-media d-flex justify-content-end">
											<a href="#"
												class="social-icon d-flex align-items-center justify-content-center"><span
												class="fa fa-facebook"></span></a> <a href="#"
												class="social-icon d-flex align-items-center justify-content-center"><span
												class="fa fa-twitter"></span></a>
										</p>
									</div>
								</div>
								<form action="#" class="signin-form">
									<div class="form-group mb-3">
										<label class="label" for="name">Email</label> <input
											type="text" class="form-control" placeholder="Email"
											id="memberId" name="memberId" value="${cookie.user_id.value}"
											required>
									</div>
									<div class="form-group mb-3">
										<label class="label" for="password">Password</label> <input
											type="password" class="form-control" placeholder="Password"
											id="memberPwd" name="memberPwd" required>
									</div>
									<div class="form-group">
										<button id="loginBtn" onclick="doLogin();" type="button"
											class="form-control btn btn-primary submit px-3">Login</button>
									</div>

									<div class="form-group">
										<button id="nonloginBtn" type="button"
											class="form-control btn btn-primary submit px-3">non-member
											Login</button>
										<br>
										<br>
										<div id="html_element"></div>
									</div>

									<div class="form-group d-md-flex">
										<div class="w-50 text-left">
											<label class="checkbox-wrap checkbox-primary mb-0">ID
												저장 <input type="checkbox" checked id="checkSaveId"
												name="checkSaveId"> <span class="checkmark"></span>
											</label>
										</div>
										<div class="w-50 text-md-right">
											<a href="#">비밀번호를 잊으셨나요?</a>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">회원가입</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">회원가입할 이메일 / 패스워드를 양식에 맞춰 작성 후 이메일
							보내기 버튼을 클릭해주세요. 관리자 승인 후 가입 완료되며, 환영 메일이 발송됩니다</div>

						<div class="form-group">
							<label for="usr">Email:</label> <input type="text"
								class="form-control" id="join-email" value="">
						</div>
						<div class="form-group">
							<label for="pwd">Password:</label> <input type="password"
								class="form-control" id="join-password" value="">
						</div>


						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">닫기</button>
							<button type="button" onclick="sendJoinEmail();" class="btn btn-primary">이메일 보내기</button>
						</div>
					</div>
				</div>
			</div>



		</section>
	</form>



</body>
</html>
