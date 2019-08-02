<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<script src="http://code.jquery.com/jquery-latest.js"></script>
		<meta charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>insert</title>
  		<!-- 썸머노트 -->
		<!-- include summernote bootstrap/jquery-->
		<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
		<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
		
		<!-- include summernote css/js-->
		<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
		
		<!-- 한국어 적용 -->
		<script src="summernote/lang/summernote-ko-KR.js"></script> 
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
	    
	    <!-- 썸머노트에서 에러나서 넣어줌 -->
	    <script>
			// jQuery import 바로아래에 넣어 주면 됩니다.
			// Cannot read property 'msie' of undefined 에러 나올때
			jQuery.browser = {};
			(function () {
			    jQuery.browser.msie = false;
			    jQuery.browser.version = 0;
			    if (navigator.userAgent.match(/MSIE ([0-9]+)\./)) {
			        jQuery.browser.msie = true;
			        jQuery.browser.version = RegExp.$1;
			    }
			})();
			</script>
		
		
		  
		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link rel="stylesheet" media="all" href="css/style.css"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<!-- Adding "maximum-scale=1" fixes the Mobile Safari auto-zoom bug: http://filamentgroup.com/examples/iosScaleBug/ -->		
				
		<!-- JS -->
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
				
				<div id="logo">
					<a href="./"><img  src="img/logo.png" alt="Simpler"></a>
				</div>
				
				<!-- nav -->
				<ul id="nav" class="sf-menu">
					<li><a href="./"><span>HOME</span></a></li>
					<li><a href="blog.do">BLOG</a></li>
					<li class="current-menu-item"><a href="page.do">ABOUT</a>
						<ul>
							<li><a href="page-elements.do">Elements</a></li>
							<li><a href="page-icons.do">Icons</a></li>
							<li><a href="page-typography.do">Typography</a></li>
						</ul>
					</li>
					<li><a href="portfolio.do">WORK</a></li>
					<li><a href="contact.do">CONTACT</a></li>
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
				REGULAR PAGE WITH SIDEBAR
			</div>
			<!-- ENDS masthead -->
			
			
				
			<!-- page content-->
        	<div id="page-content-sb" class="cf">        	
	        	<!-- hyoeun -->	
	        	<!-- entry-content -->	
	        	<div class="entry-content cf">
	        		
					<form id="frm" action="insert.jsp" method="post" >
			<table  style="width=100%; border: 6px solid #FFFFFF;">
        <tr>
            <td colspan="2"><input type="text" id="title" name="title"  placeholder="상품명"
			            			style="border-width:0px 0px 5px 0px; border-color : #8C8C8C; 
			            			width:650px; height: 45px; font-size: 20pt; color: #8C8C8C;"/>
            </td>
        </tr>
     
        <tr>
        	<td><img alt="썸네일" src="img/bg.jpg" style="width:220px; height: 150px"></td>
        	<td ><textarea id="summary" placeholder="간략한 소개를 입력해 주세요" style=" Vertical-align: middle;height: 150px; width:430px;"></textarea></td>
        </tr>
       
        <tr>
            <td colspan="2">
                <textarea id="summernote"></textarea>
			    <script>
		      $('#summernote').summernote({
		        placeholder: '내용을 입력하세요',
	        	tabsize: 2,
	            height: 1000,          // 기본 높이값
	            minHeight: null,      // 최소 높이값(null은 제한 없음)
	            maxHeight: null,      // 최대 높이값(null은 제한 없음)
	            focus: true,          // 페이지가 열릴때 포커스를 지정함
	            lang: 'ko-KR'         // 한국어 지정(기본값은 en-US)
		      });
		    </script>
           
            </td>
      	</tr>
        <tr>
            <td colspan="2">
                <input type="button" id="save" value="저장"/>
                <input type="button" value="취소"/>
            </td>
        </tr>
		</table>
		</form>
										
				</div>
				<!-- ENDS entry content -->
				<!-- ENDS hyoeun -->
				
    		</div>
    		<!-- ENDS page content-->
			<!-- hyoeun -->
			<!-- sidebar -->
        	<aside id="sidebar">
        		
        		<ul>
	        		<li class="block">
		        		<h4>카테고리를 선택하세요</h4>
						<select name="fluit" style="height:35px; width:210px;" class="form-control">
						  <option value="바나나">바나나</option>
						  <option value="사과">사과</option>
						  <option value="파인애플" selected="selected">파인애플</option>
						</select> 
	        		</li>
	        		
	        		<li class="block">
		        		<h4>마감일</h4>
		<!-- 캘린더 -->
		<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
		<link rel="stylesheet" href="demos/jquery-ui.min.css">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>
	    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
	    <script type='text/javascript' src='//code.jquery.com/jquery-1.8.3.js'></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
	    <script type='text/javascript' src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
	    <script src="js/bootstrap-datepicker.kr.js" charset="UTF-8"></script>
		
		<!-- datepicker 입력창 크기 조정 -->
		<style>
		.input-group.date{ font-size: 12px; width: 210px; }
		</style>
		<script type='text/javascript'>
			
		    $(function(){
		    	
		        $('.input-group.date').datepicker({
		            calendarWeeks: false,
		            todayHighlight: true,
		            autoclose: true,
		            format: "yyyy/mm/dd",
		            language: "kr"
		        });
		
		    });
		
		    </script>
			<div class="container">
		        <div class="input-group date">
		            <input type="text" class="form-control">
		            <span class="input-group-addon">
		            <i class="glyphicon glyphicon-calendar"></i></span>
		        </div>
			</div>
 
	        		</li>
	        		
	        		<li class="block">
		        		<h4>목표수량</h4>
		        		<style>
						.goalNum{height: 35px; }
						</style>
						<ul>
							<input name="goalNum" value='' id="goalNum" type="number" class="form-control" />
						</ul>
	        		</li>
	        		
	        		<li class="block">
		        		<h4>옵션</h4>
		        		
						<script language="JavaScript">

						
						
						</script>
 
	        		</li>
        		
        		</ul>
        		
        	</aside>
			<!-- ENDS sidebar -->
			<!-- ENDShyoeun -->
			
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