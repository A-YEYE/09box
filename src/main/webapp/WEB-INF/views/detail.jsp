<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="kr.or.connect.dto.Member" %>
<!doctype html> 
<html class="no-js">

	<head>
		<script src="http://code.jquery.com/jquery-latest.js"></script>
		<meta charset="utf-8"/>
		<title>상품보기</title>
		
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
		
		<link rel="stylesheet"
		href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
		integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
		crossorigin="anonymous">
		
		<style>
						
		/* GENERAL BUTTON STYLING */
		button,
		button:after {           
		  -webkit-transition: all 0.3s;               
			-moz-transition: all 0.3s;
		  -o-transition: all 0.3s;
			transition: all 0.3s;
		}
		          
		button {
		  background: none;
		  border: 3px solid #595959;
		  border-radius: 5px;
		  color: #595959;
		  display: block;  
		  font-weight: bold;
		  position: relative;
		  text-transform: uppercase;
		}
		
		button::before,
		button::after {
		  background: #EAEAEA;
		  content: '';
		  position: absolute;
		  z-index: -1;
		}
		
		button:hover {
		  border: 3px solid gray;
		  color: gray;
		}
		
		/* BUTTON 2 */
		.btn-2::after {
		  height: 100%;
		  left: 0;
		  top: 0;
		  width: 0;
		}
		
		.btn-2:hover:after {
		  width: 100%;
		}

		</style>
		<!-- 댓글 style -->
		<style>
		.entry-date2 {
		    color: #dcd2be;
		    background: #2d2d2d;
		  	margin: auto;
		    width: 100px;
		    height: 40px;
		   	line-height: 40px;
		    display: block;
		    /*font-family: 'Voltaire', Arial, sans-serif;*/
		    
		    font-size:30%;
		    text-align: center;
		    -moz-border-radius: 60px 60px 60px 60px;
		    -webkit-border-radius: 60px 60px 60px 60px;
		    border-radius: 60px 60px 60px 60px;
		    box-shadow: 4px 4px 0 0 rgba(0, 0, 0, 0.2);
		}


		.select-wrapper li {
		    padding: 10px 0;
		    border-bottom: 1px solid #cdcdcd;
		    position: relative;
		    list-style: none;
		    display: list-item;
		    text-align: -webkit-match-parent;
		    font-size: 14px;
		}

		.select-wrapper input {
		    margin: 0;
		    padding: 0;
		    font-size: 1em;
		    height: 30px;
		    vertical-align: middle;
		    text-rendering: auto;
		    color: initial;
		    letter-spacing: normal;
		    word-spacing: normal;
		    text-transform: none;
		    text-indent: 0px;
		    text-shadow: none;
		}
		
		.select-wrapper input[type="hidden"]{
		    display: none;
		}
		
		.select-wrapper li .opt_name {
		    line-height: 18px;
		    padding: 0 0 5px;
		    width: 100%;
		    text-align: left;
		}
		
		.select-wrapper .sound_only {
			display:none;
		}
		
		.select-wrapper li div .sit_qty_minus ,
		.select-wrapper li div .sit_qty_plus,
		.select-wrapper li div .sit_qty_del{
		    border: none;
		    width: 30px;
		    height: 30px;
		    font-size: 16px;
		    cursor: pointer;
		    border-bottom: 1px solid #cdcdcd;
		}
		
		.select-wrapper div[id=total_price],
		.select-wrapper div[id=ship]{
			font-size: 18px;
		}
		.select-wrapper li div span{
		    width:100%;
		    text-align: right;
		
		}
								
		.tabcontent2 {
		    display: none;
		    padding: 6px 12px;
		    padding: 6px 0 6px 0;
		    /*border: 1px solid #999;*/
		    border-top: none;
		}
		/* Create an active/current tablink class */
		.tab2 button.active {
		    /*background-color: #ccc;*/
		    font-weight: bold;
		    border-bottom: 2px solid #ff0000;
		    color:#ffffff;
		}
		
		.select_table table[id=buytable]{
				font-size: 14px; 
				width: 100%; /* 원하는 너비설정 */ 
				padding: .8em .5em; /* 여백으로 높이 설정 */ 
				/*font-family: inherit;*/ /* 폰트 상속 */
				/*border: 1px solid #999;*/
				border-radius: 0px; /* iOS 둥근모서리 제거 */ 
				-webkit-appearance: none; /* 네이티브 외형 감추기 */ 
				-moz-appearance: none; 
				appearance: none;
		}
		.select_table table input,
		.select_table table button[class=mybtn2]{
				font-size: 14px; 
				width: 100%; /* 원하는 너비설정 */
				height:100%; 
				padding: .8em .5em; /* 여백으로 높이 설정 */ 
				/*font-family: inherit; *//* 폰트 상속 */
				/*border: 1px solid #999;*/
				border-radius: 0px; /* iOS 둥근모서리 제거 */ 
				-webkit-appearance: none; /* 네이티브 외형 감추기 */ 
				-moz-appearance: none; 
				appearance: none;
				border:0;
		}
		.select_table table input[name=item_count],
		.select_table table input[name=item_price]{
			text-align: center;
		}
		.select_table table tr{
			border:1px solid #a9a9a9;
			/*background-color:#a9a9a9;*/
		}
		.total_price{
				width:100%;
				text-align:right;
				font-size: 15px;
		}
		.total_price input[class=totalPrice]{
				display: inline-block;
				font-size: 23px; 
				width: 50%;
				/*width: 100%;
				height:100%; */
				padding: .8em .5em ; /* 여백으로 높이 설정 */ 
				/*font-family: inherit;*/ /* 폰트 상속 */
				/*border: 1px solid #999;*/
				/*border-radius: 0px;
				-webkit-appearance: none;
				-moz-appearance: none; 
				appearance: none;*/
				border:0;
				color:red;
				text-align:right;
		}
		/*total_price">총 <input class="totalPrice*/
		.ship_pay{
				width:100%;
				text-align:right;
				font-size: 15px;
		}
		.tabcontent2 img{
			max-width: 100%;
		}
		.select-wrapper{
			position:relative;
			float: left;
			width:100%;
			margin:0;
			padding-bottom:5px;
			padding-top:5px;
		}
		.select-wrapper select {
			font-size: 14px;
			width: 100%; /* 원하는 너비설정 */
			padding: .15em .8em; /* 여백으로 높이 설정 */ 
			/*font-family: inherit;*/ /* 폰트 상속 */ 
			background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%; /* 네이티브 화살표 대체 */ 
			/*border: 1px solid #999;*/
			border-radius: 0px; /* iOS 둥근모서리 제거 */ 
			-webkit-appearance: none; /* 네이티브 외형 감추기 */ 
			-moz-appearance: none; 
			appearance: none;
		}
		.select-wrapper select:focus{
		    outline: 0;
		}
		
		/* Article Reply */
		
		.reply-wrap {padding:20px; background:#fff}
		/* Reply Form */
		.reply-form {}
		.reply-form dl.reply-guest {}
		.reply-form dl.reply-guest dt {position: absolute; width:1px; height:1px; padding:0; margin:-1px; overflow:hidden; clip:rect(0,0,0,0); border:0;}
		.reply-form dl.reply-guest dd {margin-bottom:10px}
		.reply-form dl.reply-guest dd input {width:100%; padding:10px 0; border:1px solid #ddd; background:#f9f9f9; color:#999; text-indent:10px;}
		.reply-form dl.reply-guest dd input:focus, .reply-form dl.reply-guest dd input:active {background:#fff; color:#111}
		.reply-form .secret {}
		.reply-form .secret label {cursor:pointer}
		.reply-form .secret input {width:24px; height:24px; margin-right:10px; vertical-align:bottom;}
		.reply-form dl.reply-write {margin-top:10px;}
		.reply-form dl.reply-write dt {position: absolute; width:1px; height:1px; padding:0; margin:-1px; overflow:hidden; clip:rect(0,0,0,0); border:0;}
		.reply-form dl.reply-write dd {}
		.reply-form dl.reply-write dd textarea {width:100%; margin-bottom:10px; padding:10px 0; height:80px; border:1px solid #ddd; background:#f9f9f9; color:#999; text-indent:10px;}
		.reply-form dl.reply-write dd textarea:focus, .reply-form dl.reply-write dd textarea:active {background:#fff; color:#111}
		.reply-form button {display:block; width:100%; margin:10px 0 0 0; /*padding:10px 0;*/ border:1px solid #ff7035; background:#ff8149; color:#fff; text-align:center;}
		
		
		/* Reply list */
		.reply-list {margin-bottom:30px; list-style:none; border-bottom:1px solid #e9e9e9}
		.reply-list li {padding:20px 0; border-top:1px solid #e9e9e9}
		.reply-list li:after {display:block; clear:both; content:''}
		.reply-list li .thumb {float:left; width:10%; text-align:center}
		.reply-list li .thumb img {border-radius: 50%;}
		.reply-list li .reply-content {float:right; width:90%}
		.reply-list li .reply-content:after {display:block; clear:both; content:''}
		.reply-list li .reply-content ul {}
		.reply-list li .reply-content ul li {border:0; padding:0}
		.reply-list li .reply-content .info {float:left;}
		.reply-list li .reply-content .info li {font-size:1.2em; display:inline-block}
		.reply-list li .reply-content .info li.date {font-size:1em; color:#bbb} 
		.reply-list li .reply-content .control {float:right}
		.reply-list li .reply-content .control li {display:inline-block; margin-right:10px}
		.reply-list li .reply-content .control li a {color:#ff8149; font:normal 1em /*'NanumBarunGothic', 'Noto Sans', sans-serif*/;}
		.reply-list li .reply-content .control li a .fa {color:#ff8149;}
		.reply-list li .reply-content .control li a.reply-url, .reply-list li .reply-content .control li a.reply-url .fa {color:#999;}
		.reply-list li .reply-content .control li a.reply-modify, .reply-list li .reply-content .control li a.reply-modify .fa {color:#ed145b}
		.reply-list li .reply-content .text {clear:both; padding:10px 0 0; color:#777; font:normal 0.875em /*'NanumBarunGothic', 'Noto Sans', sans-serif*/; line-height:1.5em}
		.reply-list li .reply-content .text{font-size:15px;}
		/* @ 비밀글 */ .reply-list li.rp_secret .reply-content .text {color:#999}
		/* @ 일반 */   .reply-list li.rp_general {}
		/* @ 관리자 */ .reply-list li.rp_admin .reply-content .nickname a {color:#ff8149}
		/* Reply Form */
		/* RE Reply list */
		.reply-list li.re-reply {width:90%; margin-left:10%; border-top:1px solid #f5f5f5}
		</style>
	</head>	
	
	<body class="blog">
	
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
				<!-- ends nav -->

			</div>
		</header>
		<!-- ENDS HEADER -->
		
		<!-- MAIN -->
		<div id="main">
			<div class="wrapper cf">
				<!-- posts list -->
	        	<div id="posts-list" class="cf">   
					<div class="card mb-3">
						<h2 class="card-header">${goodsName}</h2><br><br>
					</div>
					
					<article class="format-standard">
						<div class="feature-image">
							<img src="${pageContext.request.contextPath}/${image}" style="width:100%"/>
						</div>
					</article>
						
						
					<ul class="tabs">
						<li><a href="#"><span>상품설명</span></a></li>
						<li><a href="#"><span>댓글</span></a></li>
					</ul>
	
					<div class="panes">   
						<!-- 상품설명 -->
						<div>
							${content}
						</div>
					<!-- 댓글 -->
					<div id="reply" class="tabcontent2" <c:if test="${reply ne null}">style="display: block"</c:if>>
					<!-- article reply -->
					<div class="article-reply">
			        <div class="reply-wrap">
			            <form name="form0" action="replySave" method="post" id="form0">
			                <div class="reply-form">
			                    <fieldset>
			                        <legend class="sr-only">댓글쓰기 폼</legend>
			                        <dl class="reply-write">
			                        	<input type="hidden" name="loginId" value="${userSession.id}" id="loginId">
			                            <dt><label for="rp_input_comment" class="lab_write screen_out">내용</label></dt>
			                            <input type="hidden" value="${product_code}" name="product_code">
			                            <input type="hidden" value=1 name="reply_order">
			                            <input type="hidden" value="${replyParent}" name="reply_parent">
			                            <dd><textarea name="reply_content" id="rp_input_comment" placeholder="여러분의 소중한 댓글을 입력해주세요" title="댓글 내용 이력"></textarea></dd>
			                        </dl>
			                        <button type="button" class="reply-btn" onclick="rp_onclick_submit('form0')"><i class="fa fa-send"></i> Comment Send</button>
			                    </fieldset>
			                </div>
			            </form> 
			        </div>
					</div>   
					<!-- //article reply -->
				    <ul class="reply-list">
				    <c:forEach items="${listReply}" var="list_reply">
		            <li id="rp_rep_id" class="rp_rep_class <c:if test="${list_reply.replyOrder!=1}">re-reply</c:if>">
		                <div class="thumb">
		                		<c:if test="${list_reply.replyOrder==1}">
		                			<img src="img/Tube.png" style="width:50%;height:50%" class="img_profile" alt="프로필사진">
		                		</c:if>
								<c:if test="${list_reply.replyOrder!=1}">
		                			<img src="img/jayG2.png" width="50%" height="50%" class="img_profile" alt="프로필사진">
		                		</c:if>	
		                </div>
		                <div class="reply-content">
		                    <ul class="info">
		                        <li class="id">${list_reply.id}</li>&nbsp;&nbsp;&nbsp;&nbsp;
		                        <li class="date"><fmt:formatDate value="${list_reply.replyDate}" pattern="yyyy-MM-dd"/></li>
		                    </ul>
		                    <p class="text">${list_reply.replyContent}</p>
		                    <ul class="control">
		                    <c:set var="sessionId" value="${userSession.id}" scope="request" />
		                     	<c:if test="${loginId eq sessionId}">  
			                    	<c:if test="${list_reply.replyOrder==1}">
			                    		<li class=""><a href="#none" onclick="rp_rep_onclick_reply('${list_reply.replyCode}', '${list_reply.replyOrder+1}')" class="reply-reply"><i class="fa fa-mail-reply"></i> 댓글쓰기</a></li>
			                    	</c:if>
		                     	</c:if>  
		                    </ul>
		                </div>
		            </li>
		            <div class="re-reply-form${list_reply.replyCode}">
		            
		            </div>
	            </c:forEach>
	           
				    </ul>
		            
						</div>
						
						<div>
							<p>Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus. </p>
							<p> Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. </p>
	
						</div>
					</div>
					<!-- page-navigation -->
					<div class="page-navigation cf">
						<div class="nav-next"><a href="#">&#8592; Older Entries </a></div>
						<div class="nav-previous"><a href="#">Newer Entries &#8594;</a></div>
					</div>
					<!--ENDS page-navigation -->
					
				
        		</div>
        		<!-- ENDS posts list -->
				
				<!-- sidebar -->
        	<aside id="sidebar">
        		
        		<ul>
	        		<li class="block">
		        		<h4>목표갯수</h4>
		        		<div class="card mb-3">
						 <div class="card-body">
						    <h3 class="card-title">${goalNum} 개</h3>
						  </div>
	        		</li>
	        		
	        		<li class="block">
		        		<h4>팔린갯수</h4>
						<div class="card mb-3">
						 <div class="card-body">
						    <h3 class="card-title">${sellNum} 개</h3>  <h5 class="card-title"><fmt:parseNumber var="test" value="${sellNum/goalNum*100}" integerOnly="true"/>${test}%</h5>
					<!-- 	    <h6 class="card-subtitle text-muted"><fmt:parseNumber var="test" value="${sellNum/goalNum*100}" integerOnly="true"/>${test}%</h6>  -->
						  </div>
	        		</li>
	        		
	        		
	        		<li class="block">
		        		<h4>남은기간</h4>
						<div class="card-body">
						    <c:if test="${time>=0}">
								<h3 class="card-title">0일 0시간</h3>
							</c:if>
							<c:if test="${time<0}">  
								<h3 class="card-title">${(-1)*(day)} 일 ${(-1)*(hour)} 시간</h3>
							</c:if>	
					<!-- 	    <h6 class="card-subtitle text-muted"><fmt:parseNumber var="test" value="${sellNum/goalNum*100}" integerOnly="true"/>${test}%</h6>  -->
						  </div>
	        		</li>
	        		
	        		<li class="block">
	        			 
		        		<h4>배송비</h4>
		        		<div class="card-body"><h3 class="card-title">
		        		<c:set var="deliveryCharge" value="${deliveryCharge}"/>
		        		<fmt:formatNumber type="currency" currencySymbol="￦" value="${deliveryCharge}" var="charge"/>
		        		<c:choose>
		        		<c:when test="${deliveryCharge eq 0}">
		        			${charge}
		        		</c:when>
		        		<c:when test="${deliveryCharge eq 2500}">
		        			${charge}
		        		</c:when>
		        		<c:when test="${deliveryCharge ne 2500 && deliveryCharge ne 0}">
		        			￦ 2,500<br>
							<h6 class="card-subtitle text-muted">${charge} 이상 구매시 무료배송 </h6>
		        		</c:when>
		        		</c:choose>
						</h3></div>                  
	        		</li>
	        		
	        		<li class="block">
		        		<h4>구매</h4>        
		        		<!-- 추가 -->
						<!-- Trigger/Open The Modal -->
						<c:if test="${time>=0}">
								<button type="none" id="myBtn" style="font-size: 20px; padding: 10px 50px; margin: 1em auto;">판매 종료</button>
							</c:if>
							<c:if test="${time<0}">
								<button id="myBtn" style="font-size: 20px; padding: 10px 50px; margin: 1em auto;">옵션 선택</button>
							</c:if>	
					    
					 	<form id="saleForm" action="sale" method="post">
					    <!-- The Modal -->
					    <div id="myModal" class="modal" style="display: none; /* Hidden by default */
											            position: fixed; /* Stay in place */
											            z-index: 1; /* Sit on top */
											            left: 0;
											            top: 0;
											            width: 100%; /* Full width */
											            min-height: 1000px;
											            height: 100%; /* Full height */
											            overflow: auto; /* Enable scroll if needed */
											            background-color: rgb(0,0,0); /* Fallback color */
											            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */">
					 
					      <!-- Modal content -->
					      <div class="modal-content" style=" background-color: #fefefe;
										            margin: 15% auto; /* 15% from the top and centered */
										            padding: 20px;
										            border: 1px solid #888;
										            font-size: 13px;
										            width: 50%; /* Could be more or less, depending on screen size */">
							<!-- Modal Header -->
							<div class="modal-header">
					        <span class="close">&times;</span>
					        </div>
					        
					        <script language="javascript">
							    var liRowIdx = 0;
							    const set = new Set();
							            
							    function myListener(obj){
							//    	var now = $("#selectOption option").index($("#selectOption option:selected"));	// 현재 선택한 리스트 / 필요없어짐
							        var listCount = $("#selectOption option").size();	// listbox 전체 데이터 수
							       
									//var name = $("#selectOption option:selected").text();	// 선택한 값 text(상품명) / 가격은 안나옴.
									
							    	var baseprice = obj.value;	// 선택한 값 value(가격) / 변하면 안됨
									var price = obj.value;	// 선택한 값 value(가격) / 옵션별 가격 용
									var langSelect = document.getElementById("selectOption");
									var num = langSelect.options[langSelect.selectedIndex].id;	// 선택한 값 id(옵션코드)
									var name = langSelect.options[langSelect.selectedIndex].text;	// 선택한 값 text(상품명) / 가격까지 출력
									var rnum = obj.options[obj.options.selectedIndex].getAttribute("name");	// 선택한 값 id(상품코드)
									//var rnum = $("select[rnum=NAME]").val();
									
									rnum = Number(rnum);
									
							       	for(var i=0; i<(set.size)+1; i++){
							       		if(set.has(num)){
							       		//	alert("이미 선택한 옵션입니다.");
							       			
							       		}else{
							       			set.add(num);
							       			success(name, baseprice, price, num, rnum);
							       		}
							       	}
							       	
							     	// selectbox 초기화. 옵션의 첫 번째 값 구함.(선택해주세요로 이동)
						    		$('#selectOption').find('option:first').attr('selected', 'selected');	     
							    }
							    
							    // Row 추가.
							    //$("#selectOption").change(function()
							    function success(name, baseprice, price, num, rnum)
							   {      	
							    	var oRow = document.all.dyntbl1.insertRow();
							    	var loginId = $('#loginId').val();
							 		
							        // onmouseover이벤트가 발생될때 fncOnMouseOver함수를 호출한다.
							        oRow.onmouseover=function(){fncOnMouseOver(this.rowIndex)};
							        
							        var oCell1 = oRow.insertCell();         
							        var oCell2 = oRow.insertCell();
							        var oCell3 = oRow.insertCell();
							        var oCell4 = oRow.insertCell();
							        var oCell5 = oRow.insertCell();
							        var oCell6 = oRow.insertCell();
							        var oCell7 = oRow.insertCell();
							        var oCell8 = oRow.insertCell();
							        var oCell9 = oRow.insertCell();
							        var oCell10 = oRow.insertCell();
							        oCell1.innerHTML = "<input type=text name=item_index id=\"num\" style=\display:none\ value="+ num +">"; // option_code
							        oCell2.innerHTML = "<input type=text name=item_name style=\"width:100%; border:3px solid #808080; border-right:0px; border-left:0px; border-top:0px\" value="+ name +">";	// option_name
							        oCell3.innerHTML = "<button class=mybtn2 type=button onClick=\"minusCount()\" name=buytable_minusCount><i class=\"fas fa-minus\"></i></button>";
							        oCell4.innerHTML = "<input type = number style=\"text-align:center; border:3px solid #808080; border-style:solid; border-right:0px; border-left:0px; border-top:0px\" name=option_count id=\"count\" value=0>";	// option_count
							        oCell5.innerHTML = "<button class=mybtn2 type=button onClick=\"plusCount()\" name=buytable_plusCount><i class=\"fas fa-plus\"></i></button>";
							        oCell6.innerHTML = "<input type = number name=item_price style=\"text-align:right; border:3px solid #808080; border-style:solid; border-right:0px; border-left:0px; border-top:0px\" id=\"price\" value="+ (price-price) +">";	// option_price_total
							        oCell7.innerHTML = "<button class=mybtn2 type=button onClick=\"delRow()\" name=buytable_deleteRow><i class=\"fas fa-times\" ></i></button>";
							        oCell8.innerHTML = "<input type = number name=base_price style=\display:none\ id=\"base_price\" value="+ baseprice +">";	// option_price_base
							        oCell9.innerHTML = "<input type = number name=rnum style=\display:none\ id=\"rnum\" value="+ rnum +">";	// 상품코드
							        oCell10.innerHTML = "<input type=\"hidden\" value="+loginId+" name=\"loginId\">";
							        // RowIndex는 자동으로 재설정 된다는 것을 보여 주기 위한 함수 호출.
							        fncReOrderByTdRowIndex();
							       
							        // RowIndex의 자동 재설정을 보여주기 위해 생성시마다 1씩 증가하는 변수.   
							        liRowIdx++;
							       	
							     
							    }
							 function minusCount(){
								 var count = $("#dyntbl1 tr").eq(dyntbl1.clickedRowIndex).find('input[name="option_count"]').val();
						//		 var count = $( 'input#count' ).val();
								count = Number(count);
							//	$( 'input#count' ).val(count-1);
								if(count > 1){
									var baseprice = $("#dyntbl1 tr").eq(dyntbl1.clickedRowIndex).find('input[id="base_price"]').val();
									baseprice = Number(baseprice);
									$("#dyntbl1 tr").eq(dyntbl1.clickedRowIndex).find('input[name="option_count"]').val(count-1);
									price = $("#dyntbl1 tr").eq(dyntbl1.clickedRowIndex).find('input[id="price"]').val((baseprice*count)-baseprice);
									price = Number(price);
								//	$( 'input#price' ).val((baseprice*count)+baseprice);
								
									var total_price = $( 'input#total_price' ).val();
									total_price = Number(total_price);
									total_price = total_price - baseprice;
									$( 'input#total_price' ).val(total_price);
									
								}else{
									alert("옵션 수량은 1개 이상 입니다.")
								}
							 }
							 
							 function plusCount(){
								var count = $("#dyntbl1 tr").eq(dyntbl1.clickedRowIndex).find('input[name="option_count"]').val();
								count = Number(count);
								var baseprice = $("#dyntbl1 tr").eq(dyntbl1.clickedRowIndex).find('input[id="base_price"]').val();
								baseprice = Number(baseprice);
								$("#dyntbl1 tr").eq(dyntbl1.clickedRowIndex).find('input[name="option_count"]').val(count+1);
								$("#dyntbl1 tr").eq(dyntbl1.clickedRowIndex).find('input[id="price"]').val((baseprice*count)+baseprice);
								
								var total_price = $( 'input#total_price' ).val();
								total_price = Number(total_price);
								total_price = total_price + baseprice;
								$( 'input#total_price' ).val(total_price);
							 }
							
							    // Row 삭제.
							   function delRow() 
							  {
								   var num = $("#dyntbl1 tr").find('input[id="num"]').val();	// 상품 코드 값
								   set.delete(num);
								   
							       // table에서 지정한 줄(tr)을 rows 컬렉션에서 삭제한다.
							       document.all.dyntbl1.deleteRow(dyntbl1.clickedRowIndex);
							    	
							       var total_price = $( 'input#total_price' ).val(0);
							       
							       
							       // Row 삭제후 RowIndex의 변화를 보여주기 위해 호출.
							       fncReOrderByTdRowIndex();
							   }
							 
							
							    // 발생되는 이벤트의 상황을 보여주기 위한 함수.
							    function fncOnMouseOver(selectedIndex)
							    {
							        var lsHelpText = "<font color='blue'>총 Row = " + document.all.dyntbl1.rows.length + "개중";
							            lsHelpText = lsHelpText + " 선택된 RowIndex = " + selectedIndex + "</font>";
							        document.all.dyntbl1.clickedRowIndex = selectedIndex;
							        document.all.dyntd.innerHTML         = lsHelpText;
							    }
							 
							 
							    // RowIndex는 자동으로 재설정 된다는 것을 보여 주기 위한 함수.
							    function fncReOrderByTdRowIndex()
							    {
							        var i = 0;
							        var liTdLength = document.all.dyntbl1.rows.length;  // Row 개수
							        
							        // 설명을 위한 TR태그가 두개 존재하므로 i = 2 부터 시작한다.
							 //       for(i = 2; i<liTdLength; i++)
							 //       {
							            // rows(i)번째 Row의 cells(1)번째(두번째) Td에다가 재설정된 RowIndex를 보여준다.
							 //           document.all.dyntbl1.rows(i).cells(1).innerHTML = document.all.dyntbl1.rows(i).rowIndex;
							  //      }
							    }
								
							    // 댓글  
							    var loginId = $('#loginId').val();
							    function rp_onclick_submit(formName){
									var form = document.getElementById(formName);
									console.log("formName: "+formName);
									if(loginId==""){ 	
										alert("로그인 먼저 해주세요.");
										return false;										
									}
									  
									if (form.reply_content.value=="") {
										alert(loginId);
										alert("댓글을 입력해주세요.");
										form.reply_content.focus();
										return false;
									}
									form.submit();
								}
							    function rp_rep_onclick_reply(reply_code, reply_order){
									if($(".re-reply-form"+reply_code).hasClass('on')){
										$(".re-reply-form"+reply_code).html("");
										$(".re-reply-form"+reply_code).removeClass('on');
									}else{
										var str = "";
										var formName = "form"+reply_code;
										console.log("reply_code: "+reply_code);
										console.log("formName: "+formName);
										str+="<div class=\"article-reply\">"
								        +"<div class=reply-wrap>"
								        +"<form name=\"form\" action=\"replySave\" method=\"post\" id=\""+formName+"\">"
								        +"<div class=\"reply-form\">"
								        +"<fieldset>"
								        +"<legend class=\"sr-only\">댓글쓰기 폼</legend>"
								        +"<dl class=\"reply-write\">"
								        +"<input type=\"hidden\" value=\"${userSession.id}\" name=\"loginId\">"
								        +"<dt><label for=\"rp_input_comment\" class=\"lab_write screen_out\">내용</label></dt>"
								        +"<input type=\"hidden\" value=\"${product_code}\" name=\"product_code\">"
						                +"<input type=\"hidden\" value="+reply_order+" name=\"reply_order\">"
						                +"<input type=\"hidden\" value="+reply_code+" name=\"reply_parent\">"
								        +"<dd><textarea name=\"reply_content\" id=\"rp_input_comment\" placeholder=\"답글을 입력해주세요\" title=\"댓글 내용 이력\"></textarea></dd>"
								        +"</dl>"
								        +"<button type=\"button\" class=\"reply-btn\" onclick=\"rp_onclick_submit('"+formName+"')\"><i class=\"fa fa-send\"></i> Comment Send</button>"
								        +"</fieldset>"
								        +"</div>"
								        +"</form>"
								        +"</div>"
												+"</div>";
											$(".re-reply-form"+reply_code).html(str);
											$(".re-reply-form"+reply_code).addClass('on');
									}
								}
							</script>
 
 
						<div class="modal-body">
						<table id="dyntbl1" border="1">
						<tr>
						    <td colspan="6" id="dyntd" style="display:none"> 메롱 ~ </td>
						   	
							<select id="selectOption" name="selectOption" class="form-control" 
							style="display: block; width: 100%; height: 34px; padding: 6px 12px; font-size: 14px;
										line-height: 1.42857143; color: #555; background-color: #fff; background-image: none;
										border: 1px solid #BDBDBD; border-radius: 4px;" onchange="javascript:myListener(this);">
							<option value="">선택하세요</option>
								<c:forEach var="buyOption" items="${buyOption}">
									<option id="${buyOption.buyOptionCode}" value="${buyOption.optionPrice}" name="${buyOption.rnum}">${buyOption.optionName}  
									<fmt:parseNumber var="num" value="${buyOption.optionPrice}" pattern="00,000" integerOnly="true"/>￦ ${num}</option>
								</c:forEach>
							</select>
								<br>
						</tr>
						<tr>
							<td></td>
						    <td style='width:50%;'></td>  
						    <td style='width:5%;'></td>
						    <td style='width:10%;'></td>
						    <td style='width:5%;'></td>
						    <td style='width:20%;'></td>
						    <td style='width:10%;'></td>
						    <td></td>
						    <td></td>
						</tr>
						</table>
						</div>
							<br>
							<div class="total_price"><input type="number" class="total_price" id="total_price" value="0" readonly 
															style="width:95%; height:30px; size=15px; text-align:right; border-style:solid gray; border-right:0px; border-left:0px; border-top:0px"> 원</div>
						<div class="modal-footer">
						<button type="submit" class="btn-2" style="font-size: 15px; padding: 10px 50px; margin: 1em auto;">구매하기</button>
						</div>
						
						</div>
						</div>		
						<script type="text/javascript">
						// Get the modal
				        var modal = document.getElementById('myModal');
				 
				        // Get the button that opens the modal
				        var btn = document.getElementById("myBtn");
				 
				        // Get the <span> element that closes the modal
				        var span = document.getElementsByClassName("close")[0];     
				   
				        // When the user clicks on the button, open the modal 
				        btn.onclick = function() {
				            modal.style.display = "block";
				        }
				 
				        // When the user clicks on <span> (x), close the modal
				        span.onclick = function() {
				            modal.style.display = "none";
				        }
				 
				        // When the user clicks anywhere outside of the modal, close it
				        window.onclick = function(event) {
				            if (event.target == modal) {
				                modal.style.display = "none";
				            }
				        }

						</script>
						
						</li>
	        			
	        			</form>
	       			</ul>
        			
        	</aside>
			<!-- ENDS sidebar -->
			
			
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