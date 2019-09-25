<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		
		<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		
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
					<li class="current-menu-item"><a href="portfolio.do">관리자페이지</a>
						<ul>
							<li><a href="http://localhost:8080/09box/admin" class="selected">게시물 확인</a></li>
							<li><a href="adminMember" data-filter="*">회원관리</a></li>
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
			  
			
			<div class="masthead cf">  
				회원 정보 수정
			</div>             
			  
			<!-- ENDS WRAPPER -->
			<form role="form" method="post" action="adminMemberUpdate2">  
					<!-- Modal content-->
		<div style="width:100%; padding:20px; margin:15px; text-align:center">  
		<div class="modal-content" style="width:50%; display:inline-block; ">
				   
			<div class="modal-body" style="padding: 40px 50px; text-align:left">
				<form role="form" method="post" action="./">
					<div class="form-group">
						<label for="id"> ID :</label> <input type="text"
							class="form-control" id="id" name="id" placeholder="Enter ID" value="${member.id}">
					</div>
					<div class="form-group">
						<label for="pw"> 이름 :</label> <input type="name" class="form-control" id="name" name="name"
							value="${member.name}">
					</div>
					<div class="form-group">
						<label for="email"> email :</label> <input type="email" class="form-control" id="email" name="email"
							value="${member.email}">
					</div>
					
					<div class="form-group">
						<label for="authority"> 권한 :<br>    
		                    <select name="authority" id="authority2" class="form-control" style="width:100%">						 		
									
									<option value="USER">USER</option>
									
									<option value="ADMIN">ADMIN</option>
									
								</select>       
					</div>
					<div class="form-group">   
						<span id="spanLoginCheck">
						</span>  
					</div>
					
					<button type="submit" id="loginBtn" class="btn btn-default btn-block" >
						완료</button>
				</form>		
				<script>
				$(document).ready(function(){
					var h = $("select option[value='${member.authority}']").attr("selected", true);	// 로드되면 제일 먼저 시작되는 함수					
				});
				</script>
			</div>	
			</div>
			</div>
			<br><br><br><br>
			<div class="modal-footer"></div>	
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