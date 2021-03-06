<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html> 
<html class="no-js">

	<head>
		<meta charset="utf-8"/>
		<title>FOLDER TEMPLATE</title>
		
		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link rel="stylesheet" media="all" href="css/style.css"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<!-- Adding "maximum-scale=1" fixes the Mobile Safari auto-zoom bug: http://filamentgroup.com/examples/iosScaleBug/ -->		
		
		<!-- 테이블 -->
		<style>
		table.type11 {
		    border-collapse: separate;
		    border-spacing: 1px;
		    text-align: center;
		    line-height: 1.5;
		    margin: 20px 10px;
		}
		table.type11 th {
		    width: 155px;
		    padding: 10px;
		    font-weight: bold;
		    vertical-align: top;
		    color: ;
		    background: #F6F6F6;
		}
		table.type11 td {
		    width: 155px;
		    padding: 10px;
		    vertical-align: top;
		    border-bottom: 1px solid #F6F6F6;
		}
		</style>
		
		<!-- import -->
		<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
		<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>

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
	
	
	<body class="page" onload="">
	
		<!-- HEADER -->
		<header>
			<div class="wrapper cf">
				
				<div id="logo">
					<a href="./"><img  src="img/gonggu_logo.png" alt="Simpler"></a>
				</div>
				
				<!-- nav -->
				<ul id="nav" class="sf-menu">
					<li><a href="./"><span>HOME</span></a></li>
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
						<li><c:choose>
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
			
			
				
			<!-- page content-->
        	<div id="page-content" class="cf"> 
				<!-- masthead -->
			<div class="masthead cf">
				결제 완료
			</div>
			<!-- ENDS masthead -->
				
				
				<p><h3>결제 확인</h3></p>
				<!-- form -->
				<script type="text/javascript" src="js/form-validation.js"></script>
					<form id="contactForm" action="paySuccess" method="post">
					<fieldset>
					<!-- 주문확인 테이블 -->
					
					<!------ Include the above in your HEAD tag ---------->
					
					<div class="container">
						
						<div class="col-md-9">
				    	 <table class="type11" style="width:100%">
				                    <thead>
				                        <tr>
				                            <th style="text-align:center">옵션</th>
				                            <th style="text-align:center">갯수</th>
				                            <th style="text-align:center">가격</th>
				                        </tr>
				                    </thead>
				                    <tbody>
				                    <c:forEach items="${payOption}" var="optionList">
				                        <tr>
				                            <td style="text-align:left"><input name="buyOptionCode"type="hidden" value="${optionList.buyOptionCode}">${optionList.optionName}</td>
				                            <td><input name="optionCount"type="hidden" value="${optionList.saleOptionCount}">${optionList.saleOptionCount}개</td>
				                            <td style="text-align:right"><fmt:formatNumber pattern="###,###,###" value="${optionList.optionPrice}" />원</td>
				                       </tr>
				                    </c:forEach>  
				                    </tbody>
				         </table>     
						</div>
						
						<div class="col-md-9">
				    	 <table class="type11" style="width:100%">
				                    <thead>
				                        <tr>
				                            <th>가격</th>
				                            <th style="width:5%"></th>
				                            <th>배송비</th>
				                            <th style="width:5%"></th>
				                            <th>총 결제금액</th>
				                        </tr>
				                    </thead>
				                    <tbody>
				                        <tr>
				                            <td style="text-align:center"><fmt:formatNumber pattern="###,###,###" value="${payInfo.totalPrice-payInfo.payDeliveryCharge}" /></td>	<!-- 선택상품수량 * 가격 -->
				                            <td>+</td>
				                            <td style="text-align:center"><fmt:formatNumber pattern="###,###,###" value="${payInfo.payDeliveryCharge}" />원</td>
				                            <td>=</td>
				                            <td style="text-align:center"><fmt:formatNumber pattern="###,###,###" value="${payInfo.totalPrice}" />원</td>
				                        </tr>  
				                    </tbody>
				         </table>   
				       
						</div>
					</div>  		
							
						<p><h3>배송 정보</h3></p>		    			
						
						<input name="loginId"  id="loginId" type="hidden" value="${loginId}"  />     
						<input name="name"  id="name" type="text"value="${payInfo.receiveName}" readonly/>
						<input name="phone"  id="phone" type="text"  value="${payInfo.receivePhon}"/><br>
						<input type="text" id="postCode" name="postCode" value="${payInfo.receivePostCode}" readonly>
						<input type="text" id="address" name="address" value="${payInfo.receiveAddr1}" readonly><br>
						<input type="text" id="detailAddress" name="detailAddress" value="${payInfo.receiveAddr2}" readonly>   
					</fieldset>
					
				</form>
				<p id="sent-form-msg" class="success">Form data sent. Thanks for your comments.</p>
				<!-- ENDS form -->				
				
    		</div>
    		<!-- ENDS page content-->
			
			
			
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
		
		<!-- Start google map -->
	<!-- 	<script>initialize();</script>  -->
	
	</body>
	
	
	
</html>