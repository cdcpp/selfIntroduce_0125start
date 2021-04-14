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
	
</script>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Portfolio of Portfolio</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/resources/css/introduce/styles.css" rel="stylesheet" />
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<ul class="navbar-nav">
			<li class="nav-item active"><a class="navbar-brand" href="#">
					Portfolio of Portfolio </a></li>
			<li class="nav-item"><a class="nav-link" href="#">Portfolio</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="#">Introduce</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="#">MiniBoard</a>
			</li>
		</ul>
	</nav>
	<!-- Masthead-->
	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			<!-- Masthead Avatar Image-->
			<div class=".box"
				style="width: 150px; height: 150px; border-radius: 70%; overflow: hidden;">
				<img class="masthead-avatar mb-5"
					style="width: 100%; height: 100%; object-fit: cover;"
					src="../resources/assets/img/park.jpeg" alt="" />
			</div>
			<br>
			<!-- Masthead Heading-->
			<h1 class="masthead-heading text-uppercase mb-0">박태훈</h1>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Masthead Subheading-->
			<p class="masthead-subheading font-weight-light mb-0">웹 백엔드 개발자</p>
		</div>
	</header>
	<!-- Portfolio Section-->
	<section class="page-section portfolio" id="portfolio">
		<div class="container">
			<!-- Portfolio Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Portfolio</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Portfolio Grid Items-->
			<div class="row justify-content-center">
				<!-- Portfolio Item 1-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal1">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid"
							src="../resources/assets/img/portfolio/mycal.png" alt="" style="width:300px;height:300px"/>
					</div>
				</div>
				<!-- Portfolio Item 2-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal2">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid"
							src="../resources/assets/img/portfolio/ssabu.png" style="width:300px;height:300px" alt="" />
					</div>
				</div>
			
			
				</div>
			</div>
	</section>
	<!-- About Section-->
	<section class="page-section bg-primary text-white mb-0" id="about">
		<div class="container">
			<!-- About Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-white">About</h2>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- About Section Content-->
			<div class="row">
				<div class="col-lg-4 ml-auto">
					<p class="lead">발렉스 IT팀에서 2년간 재직하며 시스템 유지보수 및 개발,커스터마이징을 담당했습니다.
					현재 방송통신대학교 컴퓨터과학과 4학년 재학중이며, <br>정보처리기사 실기 준비 및 개인 웹 사이트를 개발중입니다.
					</p>
				</div>
				<div class="col-lg-4 mr-auto">
					<p class="lead">
					 스프링 기반으로 현재 사이트 개발 완료 후, 스프링부트,vue.js를 공부하며 컨버전 할 예정입니다.
					 개발 완료 후 아마존 EC2에 배포 예정입니다
					</p>
				</div>
			</div>
		
		</div>
	</section>
	<!-- Contact Section-->
	<section class="page-section" id="contact">
		<div class="container">
			<!-- Contact Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Contact
				Me</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Contact Section Form-->
			<div class="row">
				<div class="col-lg-8 mx-auto">
					<!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19.-->
					<form id="contactForm" name="sentMessage" novalidate="novalidate">
						<div class="control-group">
							<div
								class="form-group floating-label-form-group controls mb-0 pb-2">
								<label>Name</label> <input class="form-control" id="name"
									type="text" placeholder="Name" required="required"
									data-validation-required-message="Please enter your name." />
								<p class="help-block text-danger"></p>
							</div>
						</div>
						<div class="control-group">
							<div
								class="form-group floating-label-form-group controls mb-0 pb-2">
								<label>Email Address</label> <input class="form-control"
									id="email" type="email" placeholder="Email Address"
									required="required"
									data-validation-required-message="Please enter your email address." />
								<p class="help-block text-danger"></p>
							</div>
						</div>
						<div class="control-group">
							<div
								class="form-group floating-label-form-group controls mb-0 pb-2">
								<label>Phone Number</label> <input class="form-control"
									id="phone" type="tel" placeholder="Phone Number"
									required="required"
									data-validation-required-message="Please enter your phone number." />
								<p class="help-block text-danger"></p>
							</div>
						</div>
						<div class="control-group">
							<div
								class="form-group floating-label-form-group controls mb-0 pb-2">
								<label>Message</label>
								<textarea class="form-control" id="message" rows="5"
									placeholder="Message" required="required"
									data-validation-required-message="Please enter a message."></textarea>
								<p class="help-block text-danger"></p>
							</div>
						</div>
						<br />
						<div id="success"></div>
						<div class="form-group">
							<button class="btn btn-primary btn-xl" id="sendMessageButton"
								type="submit">Send</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container">
			<div class="row">
				<!-- Footer Location-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Location</h4>
					<p class="lead mb-0">
						서울 및 경기도 고양시 <br />
					</p>
				</div>
				
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">현 상태</h4>
					<p class="lead mb-0">
						구직 중 <br />
					</p>
				</div>
				
					<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">PFP</h4>
					<p class="lead mb-0">
						개발 중 <br />
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- Copyright Section-->
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright PFP 2021</small>
		</div>
	</div>
	<!-- Scroll to Top Button (Only visible on small and extra-small screen sizes)-->
	<div class="scroll-to-top d-lg-none position-fixed">
		<a class="js-scroll-trigger d-block text-center text-white rounded"
			href="#page-top"><i class="fa fa-chevron-up"></i></a>
	</div>
	<!-- Portfolio Modals-->
	<!-- Portfolio Modal 1-->
	<div class="portfolio-modal modal fade" id="portfolioModal1"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label"
		aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<button class="close" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><i class="fas fa-times"></i></span>
				</button>
				<div class="modal-body text-center">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal1Label">MyCal</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/cabin.png" alt="" />
								<!-- Portfolio Modal - Text-->
								<p class="mb-5">
								 Swing을 이용한 사칙연산 계산기
								 https://github.com/cdcpp/toy
								</p>
								<button class="btn btn-primary" data-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Close 
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 2-->
	<div class="portfolio-modal modal fade" id="portfolioModal2"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal2Label"
		aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<button class="close" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><i class="fas fa-times"></i></span>
				</button>
				<div class="modal-body text-center">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal2Label">싸부</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/cake.png" alt="" />
								<!-- Portfolio Modal - Text-->
								<p class="mb-5">
								 개인 위주의 SNS(인스타그램) 사이트
								 https://github.com/cdcpp/ssabu
								</p>
								<button class="btn btn-primary" data-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Close
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Bootstrap core JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Third party plugin JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
	<!-- Contact form JS-->
	<script src="/resources/js/introduce/jqBootstrapValidation.js"></script>
	<script src="/resources/js/introduce/contact_me.js"></script>
	<!-- Core theme JS-->
	<script src="/resources/js/introduce/scripts.js"></script>
</body>
</html>
