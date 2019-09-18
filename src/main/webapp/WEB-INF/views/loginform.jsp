<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<html>
<head>
		<head>
		
		<meta charset="utf-8"/>
		<title>LOGIN TEMPLATE</title>
		<link rel="stylesheet" href="css/join.css"/>
		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link rel="stylesheet" media="all" href="css/style.css"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<!-- Adding "maximum-scale=1" fixes the Mobile Safari auto-zoom bug: http://filamentgroup.com/examples/iosScaleBug/ -->		
				
		<!-- JS -->
		<script src="js/jquery-1.7.1.min.js"></script>
		<script src="js/custom.js"></script>
		<script src="js/tabs.js"></script>
		<script src="js/css3-mediaqueries.js"></script>
		<script src="js/jquery.columnizer.min.js"></script>
		
		<!-- Isotope -->
		<script src="js/jquery.isotope.min.js"></script>
		
		<!-- Lof slider -->
		<script src="js/jquery.easing.js"></script>
		<script src="js/lof-slider.js"></script>
		<link rel="stylesheet" href="css/lof-slider.css" media="all"  /> 
		<!-- ENDS slider -->
		
		<!-- Tweet -->
		<link rel="stylesheet" href="css/jquery.tweet.css" media="all"  /> 
		<script src="js/tweet/jquery.tweet.js" ></script> 
		<!-- ENDS Tweet -->
		
		<!-- superfish -->
		<link rel="stylesheet" media="screen" href="css/superfish.css" /> 
		<script  src="js/superfish-1.4.8/js/hoverIntent.js"></script>
		<script  src="js/superfish-1.4.8/js/superfish.js"></script>
		<script  src="js/superfish-1.4.8/js/supersubs.js"></script>
		<!-- ENDS superfish -->
		
		<!-- prettyPhoto -->
		<script  src="js/prettyPhoto/js/jquery.prettyPhoto.js"></script>
		<link rel="stylesheet" href="js/prettyPhoto/css/prettyPhoto.css"  media="screen" />
		<!-- ENDS prettyPhoto -->
		
		<!-- poshytip -->
		<link rel="stylesheet" href="js/poshytip-1.1/src/tip-twitter/tip-twitter.css"  />
		<link rel="stylesheet" href="js/poshytip-1.1/src/tip-yellowsimple/tip-yellowsimple.css"  />
		<script  src="js/poshytip-1.1/src/jquery.poshytip.min.js"></script>
		<!-- ENDS poshytip -->
		
		<!-- JCarousel -->
		<script type="text/javascript" src="js/jquery.jcarousel.min.js"></script>
		<link rel="stylesheet" media="screen" href="css/carousel.css" /> 
		<!-- ENDS JCarousel -->
		
		<!-- GOOGLE FONTS -->
		<link href='http://fonts.googleapis.com/css?family=Voltaire' rel='stylesheet' type='text/css'>

		<!-- modernizr -->
		<script src="js/modernizr.js"></script>
		
		<!-- SKIN -->
		<link rel="stylesheet" media="all" href="css/skin.css"/>
		
		<!-- Less framework -->
		<link rel="stylesheet" media="all" href="css/lessframework.css"/>
		
		<!-- flexslider -->
		<link rel="stylesheet" href="css/flexslider.css" >
		 
		<script src="js/jquery.flexslider.js"></script>
		
		<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>

<body>
	<!-- HEADER -->
	<header>
		<div class="wrapper cf">
			<!-- nav 상단메뉴 -->

				<div id="logo">
					<a href="./"><img  src="img/gonggu_logo.png" alt="Simpler"></a>
				</div>
				
				<ul id="nav" class="sf-menu">
					<li><a href="./">HOME</a></li>
					<li><a href="#" onclick="alert('로그인을 해주세요'); return false;"">상품올리기</a></li>
					<!-- 회원가입임시 -->	
					<li><a href="list/category/0">카테고리</a>
						<ul>
							<c:forEach items="${list_category}" var="list_category">
								<li><a href="list/category/${list_category.category_code}">${list_category.category_name}</a></li>
							</c:forEach>
						</ul>
					</li>
					<li class="current-menu-item"><a href="login.do">회원가입/로그인</a></li>
				</ul>
				<div id="combo-holder"></div>

			<!-- ends nav 상단메뉴 -->
			
			
			<!-- SLIDER -->				

			<!-- ENDS SLIDER -->
		</div>
	</header>
		<!-- ENDS HEADER ----------------------------------------------------------------------------------------------------------------------------------------------------------------------->
		<c:if test="${not empty cookie.user_check}">
			<c:set value="checked" var="checked"/>
		</c:if>

		<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">

			<div class="modal-header" style="padding: 35px 50px;">
				<h4>
					<span class="glyphicon glyphicon-lock"></span> 로그인
				</h4>
				<label>정상적인 서비스 사용을 위해서 로그인해야 합니다.</label>
			</div>
			<div class="modal-body" style="padding: 40px 50px;">
				<form role="form" method="post" action="j_spring_security_check">
					<div class="form-group">
						<label for="id"> ID :</label> <input type="text"
							class="form-control" id="id" name="j_username" placeholder="Enter ID"
							required="required" value="${cookie.user_check.value}">
					</div>
					<div class="form-group">
						<label for="pw"> Password :</label> <input type="password"
							class="form-control" id="pw" name="j_password"
							placeholder="Enter Password" required="required">
					</div>
					<div class="form-group">
						<span id="spanLoginCheck">
						</span>
					</div>
					<div class="form-group"> 
						<label for="rememberId"> ID 기억하기</label> <input type="checkbox"
							 id="rememberId" name="rememberId" ${checked}>
					</div>
					<button type="button" id="loginBtn" class="btn btn-default btn-block">
						Login</button>
					<a href="./join" class="btn btn-default btn-block">회원가입</a>
				</form>		
				
			</div>
			<div class="modal-footer"></div>
		</div>

	</div>
	<script>
	$('#loginBtn').click(function() {
		var id = $('#id').val();
		var pw = $('#pw').val();
		var remember_us = $('#rememberId').is(':checked');
			$.ajax({
			type : 'post',
			url : '${pageContext.request.contextPath}/loginform',
			data : {
				user_id : id,
				user_pw : pw,
				remember_userId : remember_us
				},
				success : function(data) {
					if (data == 0) { //로그인 실패시
						console.log(data);
						$('#spanLoginCheck').text('로그인 정보를 정확히 입력해주세요.');
					} else if (data == -2) { //인증하지 않았다면?
						console.log(data);
						$('#spanLoginCheck').text('이메일 인증을 해주셔야 합니다!');						
					} //else if (data == -3) { // 아이디가 사용중이라면?
					//	console.log(data);
					//	location.href = '${pageContext.request.contextPath}/user/redundant?id=' + id + '&pw=' + pw + '&rememberId=' + rememberId;						
				//	} 
					else { //로그인 성공시
						console.log(data);
						location.href = '${pageContext.request.contextPath}/loginsuccess';
					}
				}
			});
		});
	</script>
  <!-- FOOTER -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
		<footer id="footer">
			<div class="wrapper cf">
			
				<!-- widgets -->
				<ul  class="widget-cols cf">
					<li class="first-col">
						<div class="widget-block">
							<div id="tweets" class="footer-col tweet">
		         				<h4>
		         					<a href="./">이용약관</a>
		         				</h4>
		         			</div>
						</div>
					</li>
					
					<li class="second-col">
						<div class="widget-block">
							<div id="tweets" class="footer-col tweet">
		         				<h4>
		         					<a href="./">개인정보 보호정책</a>
		         				</h4>
		         			</div>
						</div>
					</li>
					
					<li class="third-col">
						
						<div class="widget-block">
							<div id="tweets" class="footer-col tweet">
		         				<h4>
		         					<a href="./">고객센터</a>
		         				</h4>
		         			</div>
		         		</div>
		         		
					</li>
					
					<li class="fourth-col">
						<div class="widget-block">
							<div id="tweets" class="footer-col tweet">
		         				<h4>
		         					<a href="./">Q&A</a>
		         				</h4>
		         			</div>
						</div>
					</li>	
				</ul>
				<!-- ENDS widgets -->	
				
				
				<!-- bottom -->
				<div class="footer-bottom">
					<div class="left">텀블벅(주) | 대표 염재승 105-87-52823 | 서울시 중구 삼일대로 343, 13층 |<br/> 통신판매업 2017-서울중구-1156 | 대표전화 02-6080-0760
						<a href="http://luiszuno.com" >© 2017 Tumblbug Inc.</a>
					</div>
						<ul id="social-bar" class="cf sb">
							<li><a href="http://www.facebook.com"  title="Become a fan" class="facebook">Facebook</a></li>
							<li><a href="http://www.twitter.com" title="Follow my tweets" class="twitter"></a></li>
							<li><a href="http://plus.google.com" title="Enter my circles" class="plus"></a></li>
						</ul>
				</div>	
				<!-- ENDS bottom -->
			
			</div>
		</footer>
		
		<!-- ENDS FOOTER -->
</body>
</html>