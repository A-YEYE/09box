<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html class="no-js">

	<head>
		<meta charset="utf-8"/>
		<title>FOLDER TEMPLATE</title>
		 
		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->               
		<link rel="stylesheet" media="all" href="${root}css/style.css"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<!-- Adding "maximum-scale=1" fixes the Mobile Safari auto-zoom bug: http://filamentgroup.com/examples/iosScaleBug/ -->		
				
		<!-- JS -->
		<script src="${root}js/jquery-1.7.1.min.js"></script>
		<script src="${root}js/custom.js"></script>
		<script src="${root}js/tabs.js"></script>
		<script src="${root}js/css3-mediaqueries.js"></script>
		<script src="${root}js/jquery.columnizer.min.js"></script>
		
		<!-- Isotope -->
		<script src="${root}js/jquery.isotope.min.js"></script>
		
		<!-- Lof slider -->
		<script src="${root}js/jquery.easing.js"></script>
		<script src="${root}js/lof-slider.js"></script>
		<link rel="stylesheet" href="${root}css/lof-slider.css" media="all"  /> 
		<!-- ENDS slider -->
		
		<!-- Tweet -->
		<link rel="stylesheet" href="${root}css/jquery.tweet.css" media="all"  /> 
		<script src="${root}js/tweet/jquery.tweet.js" ></script> 
		<!-- ENDS Tweet -->
		
		<!-- superfish -->
		<link rel="stylesheet" media="screen" href="${root}css/superfish.css" /> 
		<script  src="${root}js/superfish-1.4.8/js/hoverIntent.js"></script>
		<script  src="${root}js/superfish-1.4.8/js/superfish.js"></script>
		<script  src="${root}js/superfish-1.4.8/js/supersubs.js"></script>
		<!-- ENDS superfish -->
		
		<!-- prettyPhoto -->
		<script  src="${root}js/prettyPhoto/js/jquery.prettyPhoto.js"></script>
		<link rel="stylesheet" href="${root}js/prettyPhoto/css/prettyPhoto.css"  media="screen" />
		<!-- ENDS prettyPhoto -->
		
		<!-- poshytip -->
		<link rel="stylesheet" href="${root}js/poshytip-1.1/src/tip-twitter/tip-twitter.css"  />
		<link rel="stylesheet" href="${root}js/poshytip-1.1/src/tip-yellowsimple/tip-yellowsimple.css"  />
		<script  src="${root}js/poshytip-1.1/src/jquery.poshytip.min.js"></script>
		<!-- ENDS poshytip -->
		
		<!-- JCarousel -->
		<script type="text/javascript" src="${root}js/jquery.jcarousel.min.js"></script>
		<link rel="stylesheet" media="screen" href="${root}css/carousel.css" /> 
		<!-- ENDS JCarousel -->
		
		<!-- GOOGLE FONTS -->
		<link href='http://fonts.googleapis.com/css?family=Voltaire' rel='stylesheet' type='text/css'>

		<!-- modernizr -->
		<script src="${root}js/modernizr.js"></script>
		
		<!-- SKIN -->
		<link rel="stylesheet" media="all" href="${root}css/skin.css"/>
		
		<!-- Less framework -->
		<link rel="stylesheet" media="all" href="${root}css/lessframework.css"/>
		
		<!-- flexslider -->
		<link rel="stylesheet" href="${root}css/flexslider.css" >
		<script src="${root}js/jquery.flexslider.js"></script>
		
		<style type="text/css">
		.c {
	        background-size: cover;
	      }
		</style>

	</head>
	
	
	<body class="home">
	
		<!-- HEADER -->
		<header>
			<div class="wrapper cf">
				<!-- nav 상단메뉴 -->

					<div id="logo">
						<a href="${root}./"><img  src="${root}img/gonggu_logo.png" alt="Simpler"></a>
					</div>
					
					<ul id="nav" class="sf-menu">
						<li class="current-menu-item"><a href="./">HOME</a></li>
						<li><a href="./blog">상품올리기</a></li>
						<li><a href="#">카테고리</a>  
							<ul>
								<li><a href="#" data-filter="*">전체보기</a></li>
								<li><a href="#" data-filter=".web"  class="selected">식품</a></li>
								<li><a href="#" data-filter=".print">KIDS</a></li>
								<li><a href="#" data-filter=".design">굿즈</a></li>
								<li><a href="#" data-filter=".photo">반려동물</a></li>
							</ul>
						</li>
						<li><a href="portfolio.do">포폴/WORK이건 멀루하징</a></li>
						<li><c:choose>
								<c:when test="${userSession != null}">
									<a>${userSession.id} 님</a>
									<ul><li><a href="logout">로그아웃</a></li></ul>
								</c:when>  
								<c:otherwise> 
									<a href="./loginform">회원가입/로그인</a>
								</c:otherwise>
							</c:choose>
						</li>
					</ul>
					<div id="combo-holder"></div>

				<!-- ends nav 상단메뉴 -->
				
				
				<!-- SLIDER -->				
				<div id="home-slider" class="lof-slidecontent">
					
					<div class="preload"><div></div></div>
					
					<!-- slider content --> 
					<div class="main-slider-content" >
					<ul class="sliders-wrap-inner">
					    <li>
					          <img src="${root}img/dummies/slides/01.jpg" title="" alt="alt" />           
					          <div class="slider-description">
					            <h4>고양이야옹야옹</h4>
					            <p>고양이는 호랑이가 낳은 새끼입니다.
					            <a class="link" href="#">더보기</a>
					            </p>
					         </div>
					    </li>
					    
					    <li>
					          <img src="${root}img/dummies/slides/02.jpg" title="" alt="alt" />           
					          <div class="slider-description">
					            <h4>2번슬라이더/no.2 slider</h4>
					            <p>상세문구
					            <a class="link" href="#">Read more </a>
					            </p>
					         </div>
					    </li>
					    
					    <li>
					          <img src="${root}img/dummies/slides/03.jpg" title="" alt="alt" />           
					          <div class="slider-description">
					            <h4>3번슬라이더/no.3 slider</h4>
					            <p>상세문구
					            <a class="link" href="#">Read more </a>
					            </p>
					         </div>
					    </li>
					    
					    <li>
					          <img src="${root}img/dummies/slides/04.jpg" title="" alt="alt" />           
					          <div class="slider-description">
					            <h4>4번슬라이더/no.4 slider</h4>
					            <p>상세문구
					            <a class="link" href="#">Read more </a>
					            </p>
					         </div>
					    </li>
					    
					    <li>
					          <img src="${root}img/dummies/slides/05.jpg" title="" alt="alt" />           
					          <div class="slider-description">
					            <h4>5번슬라이더/no.5 slider</h4>
					            <p>상세문구
					            <a class="link" href="#">Read more </a>
					            </p>
					         </div>
					    </li>
					    
					    <li>
					          <img src="${root}img/dummies/slides/06.jpg" title="" alt="alt" />           
					          <div class="slider-description">
					            <h4>6번슬라이더/no.6 slider</h4>
					            <p>상세문구
					            <a class="link" href="#">Read more </a>
					            </p>
					         </div>
					    </li>
					    
					    <li>
					          <img src="${root}img/dummies/slides/07.jpg" title="" alt="alt" />           
					          <div class="slider-description">
					            <h4>7번슬라이더/no.7 slider</h4>
					            <p>상세문구
					            <a class="link" href="#">Read more </a>
					            </p>
					         </div>
					    </li>
					    
					  </ul>  	
					</div>
					<!-- ENDS slider content --> 
				           
					<!-- slider nav -->
					<div class="navigator-content">
					  <div class="navigator-wrapper">
					        <ul class="navigator-wrap-inner">
					           <li><img src="${root}img/dummies/slides/01_thumb.jpg" alt="alt" /></li>
					           <li><img src="${root}img/dummies/slides/02_thumb.jpg" alt="alt" /></li>
					           <li><img src="${root}img/dummies/slides/03_thumb.jpg" alt="alt" /></li>
					           <li><img src="${root}img/dummies/slides/04_thumb.jpg" alt="alt" /></li>
					           <li><img src="${root}img/dummies/slides/05_thumb.jpg" alt="alt" /></li>
					           <li><img src="${root}img/dummies/slides/06_thumb.jpg" alt="alt" /></li>
					           <li><img src="${root}img/dummies/slides/07_thumb.jpg" alt="alt" /></li>
					        </ul>
					  </div>
					  <div class="button-next">Next</div>
					  <div  class="button-previous">Previous</div>
					  <!-- REMOVED TILL FIXED <div class="button-control"><span>STOP</span></div> -->
					</div> 
					<!-- slider nav -->         
				 </div> 
				<!-- ENDS SLIDER -->
			</div>
		</header>
		<!-- ENDS HEADER -->
		
		<!-- MAIN -->
		<div id="main">
			<div class="wrapper cf">
	 		
		
			<!-- featured -->
	 <!--  카테고리 잘 되는 것. -->	
		                
 		<div class="home-featured">
		 	<ul id="filter-buttons" class="category">
	<!--	 		<li><a href="#" data-filter="*" class="selected" >전체보기</a></li>
	-->		<c:if test="${!empty category}">
				<c:forEach var="category" items="${category}">
				 	<li><a href="category/${category.categoryCode}" data-filter="*" onclick="buttonClick('${category.categoryCode}'); return false" <c:if test="${list eq category.categoryCode}">class="selected"</c:if>>${category.categoryName}</a></li>
				
				 	
		<!-- 		 <li><a href="#" onclick="buttonClick('${category.categoryCode}'); return false" >${category.categoryName}</a></li>
		 -->		</c:forEach>	
			</c:if>
			</ul>
		

		<script>           
			function buttonClick(list){
				location.replace("${root}category/"+list); 
			}
		</script>	
		
		<div class="list">
			<article class="post" data-cat="list">
			<div id="filter-container" class="cf">
				<c:forEach items="${all}" var="list">
	 			<!-- Filter container -->
					<figure class="list">
				<a href='detail?rnum=${list.rnum}' background-size:cover class="thumb"><img src="${pageContext.request.contextPath}/${list.image}" width="300" height="180"/></a>
				<figcaption>
						<h5 class="heading">
							<span class="font_weight">
								<a href='detail?rnum=${list.rnum}'>${list.goodsName}</a>
							</span>
						</h5>
					<!-- 프로그레스바 -->					
					<div id="myProgress">
					  	<div id="myBar"></div>
					</div>
					<div class="period">
						<div class="p_left">
							<span class="font_weight">
							<c:set var="toDay" value="<%= new java.util.Date() %>" />
							
							<fmt:parseDate var="regDate" value="${list.sellEnd}" pattern="yyyy-MM-dd"/>
		        			<fmt:parseNumber var="nowDays" value="${toDay.time/(1000*60*60*24)}" integerOnly="true"/>
		        			<fmt:parseNumber var="oldDays" value="${regDate.time/(1000*60*60*24)}" integerOnly="true"/>
		        			<fmt:parseNumber var="result" value="${(-1)*(nowDays-oldDays)}" integerOnly="true"/>
							</span>
							
							<c:choose>
							<c:when test="${result > -1 }">
							${result}일 남음
							</c:when>
							<c:otherwise>
								<c:set var="progress" value="${list.progress}"/>
								<c:choose>
								<c:when test="${progress eq 1 }">
									<span style="font-weight: bold; color: blue;">
									공구 성공
									</span>
								</c:when>
								<c:when test="${progress eq 2 }">
									<span style="font-weight: bold; color: grey;">
									공구 실패
									</span>
								</c:when>
								</c:choose>
							</c:otherwise>
							</c:choose>
						</div>
						
						<div class="p_right">
							<span class="font_weight">5,693,000 원</span>
							<span class="font_percent">600%</span>
						</div>
					</div>
				</figcaption>
					</figure>
					</c:forEach>
					</div>
			</article>
			</div> 
		
		</div>			
			<!-- 페이징 -->	 
			<ul class="btn-group pagination">
			    <c:if test="${pageMaker.prev }">
			    <li>
			        <a href='<c:url value="/?page=${pageMaker.startPage-1 }"/>'><i class="fa fa-chevron-left"></i></a>
			    </li>
			    </c:if>
			    <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="rnum">
			    <li>
			        <a href='<c:url value="/?page=${rnum}"/>'><i class="fa">${rnum}</i></a>
			    </li>
			    </c:forEach>
			    <c:if test="${pageMaker.next && pageMaker.endPage >0 }">
			    <li>
			        <a href='<c:url value="/?page=${pageMaker.endPage+1 }"/>'><i class="fa fa-chevron-right"></i></a>
			    </li>
			    </c:if>
			</ul>
		
				
			<!-- ENDS featured -->
			
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