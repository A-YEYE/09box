<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html> 
<html class="no-js">

	<head>
		<meta charset="utf-8"/>
		<title>전체보기</title>
		
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
		
		<!-- jplayer -->
		<link href="player-skin/jplayer-black-and-yellow.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.jplayer.min.js"></script>
		
		<!-- flexslider -->
		<link rel="stylesheet" href="css/flexslider.css" >
		<script src="js/jquery.flexslider.js"></script>
		
		<!-- reply move form -->
		<script src="js/moveform.js"></script>
		
	</head>
	
	
	<body class="page">
	
		<!-- HEADER -->
		<header>
			<div class="wrapper cf">
				<!-- nav -->
					<div id="logo">
						<a href="./"><img  src="img/logo.png" alt="Simpler"></a>
					</div>
					
					<ul id="nav" class="sf-menu">
						<li class="current-menu-item"><a href="./">HOME</a></li>
						<li><a href="blog.do">상품올리기</a></li>
						<li><a href="#">카테고리</a>
							<ul>
								<li><a href="list2.do">전체보기</a></li>
								<li><a href="#">식품</a></li>
								<li><a href="#">KIDS</a></li>
								<li><a href="#">굿즈</a></li>
								<li><a href="#">반려동물</a></li>
							</ul>
						</li>
						<li><a href="portfolio.do">포폴/WORK이건 멀루하징</a></li>
						<li><a href="contact.do">회원가입/로그인</a></li>
					</ul>
					<div id="combo-holder"></div>

				<!-- ends nav -->

			</div>
		</header>
		<!-- ENDS HEADER -->
		
		<!-- MAIN -->
		<div id="main">
			<div class="wrapper cf">
			
			
			
			
			
				
			<!-- portfolio content-->
        	<div id="portfolio-content" class="cf">        	
				
				
				
				<ul id="filter-buttons">
					<li><a href="#" data-filter="*" class="selected">전체보기</a></li>
					<li><a href="#" data-filter=".web">식품</a></li>
					<li><a href="#" data-filter=".print">KIDS</a></li>
					<li><a href="#" data-filter=".design">굿즈</a></li>
					<li><a href="#" data-filter=".photo">반려동물</a></li>
				</ul>
				
				
				<c:forEach items="${list2}" var="goods">
				<!-- Filter container -->
				<div id="filter-container" class="cf">
					<figure class="web">
						<a href="project.do" class="thumb">
						<img src="${pageContext.request.contextPath}/${goods.image}"/></a>
						<figcaption>
							<a href="project.do">
								<h5 class="heading">
									<span class="font_weight">
										<a href='detail?rnum=${goods.rnum}'>${goods.goodsName}</a>
									</span>
								</h5>
							</a>
							얘도 마찬가지로 글자수 좀 조정해야합니다 자꾸 내려가요 어케하나여?  |  카테고리명 이렇게 넣을까요?
							<!-- 프로그레스바 -->					
							<div id="myProgress">
							  	<div id="myBar"></div>
							</div>
							<div class="period">
								<div class="p_left">
									<img src="${pageContext.request.contextPath}/${goods.image}"/>
									<span class="font_weight">
									34
									</span>
									일 남음
								</div>
								
								<div class="p_right">
									<span class="font_weight">5,693,000 원</span>
									<span class="font_percent">600%</span>
								</div>
							</div>
						</figcaption>
					</figure>
					
					<figure class="print">
						<a href="project.do" class="thumb">
						<img src="${pageContext.request.contextPath}/${goods.image}"/></a>
						<figcaption>
							<a href="project.do">
								<h5 class="heading">
									<span class="font_weight">
										<a href='detail?rnum=${goods.rnum}'>${goods.goodsName}</a>
									</span>
								</h5>
							</a>
							뚜
							<!-- 프로그레스바 -->					
							<div id="myProgress">
							  	<div id="myBar"></div>
							</div>
							<div class="period">
								<div class="p_left">
									<img src="${pageContext.request.contextPath}/${goods.image}"/>
									<span class="font_weight">
									34
									</span>
									일 남음
								</div>
								
								<div class="p_right">
									<span class="font_weight">5,693,000 원</span>
									<span class="font_percent">600%</span>
								</div>
							</div>
						</figcaption>
					</figure>
					
					
					<figure class="design">
						<a href="project.do" class="thumb">
						<img src="${pageContext.request.contextPath}/${goods.image}"/></a>
						<figcaption>
							<a href="project.do"><h3 class="heading"><a href='detail?rnum=${goods.rnum}'>${goods.goodsName}</a> </h3></a>
							3번 </figcaption>
					</figure>
					
					
					<figure class="photo">
						<img src="${pageContext.request.contextPath}/${goods.image}"/></a>
						<figcaption>
							<a href="project.do"><h3 class="heading"><a href='detail?rnum=${goods.rnum}'>${goods.goodsName}</a> </h3></a>
							4번 </figcaption>
					</figure>
					
					
					<figure class="web photo">
						<a href="project.do" class="thumb">
						<img src="${pageContext.request.contextPath}/${goods.image}"/></a>
						<figcaption>
							<a href="project.do"><h3 class="heading"><a href='detail?rnum=${goods.rnum}'>${goods.goodsName}</a> </h3></a>
							5번 </figcaption>
					</figure>
					
					
					<figure class="web print">
						<a href="project.do" class="thumb">
						<img src="${pageContext.request.contextPath}/${goods.image}"/></a>
						<figcaption>
							<a href="project.do"><h3 class="heading"><a href='detail?rnum=${goods.rnum}'>${goods.goodsName}</a> </h3></a>
							6번 </figcaption>
					</figure>
					
					
					<figure class="photo">
						<a href="project.do" class="thumb">
						<img src="${pageContext.request.contextPath}/${goods.image}"/></a>
						<figcaption>
							<a href="project.do"><h3 class="heading"><a href='detail?rnum=${goods.rnum}'>${goods.goodsName}</a> </h3></a>
							7번 </figcaption>
					</figure>
					
					
					<figure class="web photo">
						<a href="project.do" class="thumb"><img src="${pageContext.request.contextPath}/${goods.image}"/></a>
						<figcaption>
							<a href="project.do"><h3 class="heading"><a href='detail?rnum=${goods.rnum}'>${goods.goodsName}</a> </h3></a>
							8번 </figcaption>
					</figure>
					
					
					<figure class="web print">
						<a href="project.do" class="thumb"><img src="${pageContext.request.contextPath}/${goods.image}"/></a>
						<figcaption>
							<a href="project.do"><h3 class="heading"><a href='detail?rnum=${goods.rnum}'>${goods.goodsName}</a> </h3></a>
							9번 </figcaption>
					</figure>
					
				</div><!-- ENDS Filter container -->
				
			</div>
			<!-- ENDS featured -->
			</c:forEach>							
				
			
			
			
			</div><!-- ENDS WRAPPER -->
			
		</div>
		<!-- ENDS MAIN -->
		
		
		<!-- FOOTER -->
		<footer>
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