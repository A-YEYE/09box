<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html> 
<html class="no-js">

	<head>
		<meta charset="utf-8"/>
		<title>MyPage</title>
		
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
		
		<style type="text/css">
		table.type09 {
		    border-collapse: collapse;
		    line-height: 1.5;
		
		}
		table.type09 thead th {
		    padding: 10px;
		    font-weight: bold;
		    vertical-align: top;
		    color: #369;
		    border-bottom: 3px solid #036;
		    text-align: center;
		}
		table.type09 tbody th {
		    width: 150px;
		    padding: 10px;
		    font-weight: bold;
		    vertical-align: top;
		    border-bottom: 1px solid #ccc;
		    background: #f3f6f7;
		}
		table.type09 td {
		    width: 350px;
		    padding: 10px;
		    vertical-align: middle;
		    border-bottom: 1px solid #ccc;
		}
		</style>
		
	</head>
	
	
	<body class="page">
	
		<!-- HEADER -->
		<header>
			<div class="wrapper cf">
				
				<div id="logo">
					<a href="./"><img  src="img/gonggu_logo.png" alt="Simpler"></a>
				</div>
				
				<!-- nav -->
				<ul id="nav" class="sf-menu">
					<li><a href="./">HOME</a></li>
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
					<li class="current-menu-item"><c:choose>
							<c:when test="${userSession != null}">
								<a>${userSession.id} 님</a>
								<ul>
									<li><a href="logout">로그아웃</a></li>
									<li><a href="http://localhost:8080/09box/myOrder" class="selected">주문 확인</a></li>
									<li><a href="http://localhost:8080/09box/mySell" data-filter="*">판매 확인</a></li>
								</ul>
							</c:when>  
							<c:otherwise> 
								<a href="./loginform">회원가입/로그인</a>
							</c:otherwise>
						</c:choose>
					</li>
				</ul>
				<div id="combo-holder"></div>
				<!-- ends nav -->

			</div>
		</header>
		<!-- ENDS HEADER -->
		
		<!-- MAIN -->
		<div id="main">
			<div class="wrapper cf">
			
			
			<!-- masthead -->
			<div class="masthead cf">
				나의 판매
			</div>
			<!-- ENDS masthead -->
			
			
				
			<!-- page content-->
        	<div class="cf">        	
	        		
	        	<form name="form1" method="get">
					

					<c:choose>
					<c:when test="${empty list}">
					      <tr>
							<td>데이터가 없습니다.</td>       
						</tr>
					    </c:when>
					    <c:otherwise>
						<c:forEach var="list2" items="${list}" varStatus="status">
						
						<table class="type09" style="width:100%">
						<tr>	
							<td colspan="6">판매 날짜: ${list2.sellStart}</td>
						</tr>
						
						<tr>
							<td rowspan="3"><img src="${pageContext.request.contextPath}/${list2.image}" style="width:300px"/></td>
							<td colspan="3"><a href='detail?rnum=${list2.rnum}'>${list2.goodsName}</a></td>  						
						</tr>
						
						<tr>
							<td style="text-align:center">목표 수량</td>
							<td style="text-align:center">판매 수량</td>	
							<td style="text-align:center">진행 상황</td>							
						</tr>
						<tr>
							<td style="text-align:center">${list2.goalNum}</td>
							<td style="text-align:center">${list2.sellNum}</td>	
							<td style="text-align:center">
							<c:set var="toDay" value="<%= new java.util.Date() %>" />
							
							<fmt:parseDate var="regDate" value="${list2.sellEnd}" pattern="yyyy-MM-dd"/>
		        			<fmt:parseNumber var="nowDays" value="${toDay.time/(1000*60*60*24)}" integerOnly="true"/>
		        			<fmt:parseNumber var="oldDays" value="${(regDate.time/(1000*60*60*24))+1}" integerOnly="true"/>
		        			<fmt:parseNumber var="result" value="${(-1)*(nowDays-oldDays)}" integerOnly="true"/>
							</span>
							
							<c:choose>
							<c:when test="${result > -1 }">
							진행중
							</c:when>
							<c:otherwise>
								<c:set var="progress" value="${list2.progress}"/>
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
							</td>							
						</tr>
						</table><p><p>
						</c:forEach>
						
					</c:otherwise>
					</c:choose>
					
				</form>
				
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
							<h4>RECENT POSTS</h4>
							<div class="recent-post cf">
								<a href="#" class="thumb"><img src="img/dummies/54x54.gif" alt="Post" /></a>
								<div class="post-head">
									<a href="#">Pellentesque habitant morbi senectus</a><span> March 12, 2011</span>
								</div>
							</div>
							<div class="recent-post cf">
								<a href="#" class="thumb"><img src="img/dummies/54x54.gif" alt="Post" /></a>
								<div class="post-head">
									<a href="#">Pellentesque habitant morbi senectus</a><span> March 12, 2011</span>
								</div>
							</div>
							<div class="recent-post cf">
								<a href="#" class="thumb"><img src="img/dummies/54x54.gif" alt="Post" /></a>
								<div class="post-head">
									<a href="#">Pellentesque habitant morbi senectus</a><span> March 12, 2011</span>
								</div>
							</div>
						</div>
					</li>
					
					<li class="second-col">
						
						<div class="widget-block">
							<h4>ABOUT</h4>
							<p>Folder it's completely free this means you don't have to pay anything <a href="http://luiszuno.com/blog/license" tar >read license</a>.</p> 
							<p>Visit <a href="http://templatecreme.com/" >Template Creme</a> and find the most beautiful free templates up to date.</p>
						</div>
						
					</li>
					
					<li class="third-col">
						
						<div class="widget-block">
							<div id="tweets" class="footer-col tweet">
		         				<h4>TWITTER WIDGET</h4>
		         			</div>
		         		</div>
		         		
					</li>
					
					<li class="fourth-col">
						
						<div class="widget-block">
							<h4>CATEGORIES</h4>
							<ul>
								<li class="cat-item"><a href="#" >Design</a></li>
								<li class="cat-item"><a href="#" >Photo</a></li>
								<li class="cat-item"><a href="#" >Art</a></li>
								<li class="cat-item"><a href="#" >Game</a></li>
								<li class="cat-item"><a href="#" >Film</a></li>
								<li class="cat-item"><a href="#" >TV</a></li>
							</ul>
						</div>
		         		
					</li>	
				</ul>
				<!-- ENDS widgets -->	
				
				
				<!-- bottom -->
				<div class="footer-bottom">
					<div class="left">by <a href="http://luiszuno.com" >luiszuno.com</a></div>
						<ul id="social-bar" class="cf sb">
							<li><a href="http://www.facebook.com"  title="Become a fan" class="facebook">Facebbok</a></li>
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