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
				상품올리기
			</div>
			<!-- ENDS masthead -->
			
			
				
			<!-- page content-->
        	<div id="page-content-sb" class="cf">        	
	        	<!-- hyoeun -->	
	        	<!-- entry-content -->	
	        	<div class="entry-content cf">
	        		
					<form name="input" action="portfolio" method="post">
			<table  style="width:100%; border: 6px solid #FFFFFF;">
        <tr>
            <td colspan="2"><input type="text" id="title" name="goodsName"  placeholder="상품명을 입력하세요"
			            			style="border-width:0px 0px 5px 0px; border-color : #8C8C8C; 
			            			width:650px; height: 45px; font-size: 20pt; color: #8C8C8C;"/>
            </td>
        </tr>
     
        <tr>
<!--         	<td><input type="file" name="image" alt="썸네일" required="required" src="img/bg.jpg" style="width:220px; height: 150px"></td>  --> 
 <!-- 썸넬 필체        	<td><input type="file" name="image" required="required" style="Vertical-align: top; width:220px; height: 150px"></td>
        	<td><input type="file" name="image"  style="Vertical-align: top; width:220px; height: 150px"></td> -->
        	<td ><textarea id="summary" name="summary" placeholder="간략한 소개를 입력해 주세요" style="height: 130px; width:430px;"></textarea></td>
        </tr>
        <tr>
			<td colspan="2">
				<input type="submit" value="업로드">
				<input type="reset" value="취소">
			</td>
		</tr>
       
        <tr>
            <td colspan="2">
                <textarea id="summernote" name="content"></textarea>
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
                <input type="submit" value="저장" onclick="check()"/>
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
        	   	<form name="input" action="portfolio" method="post" enctype="multipart/form-data">
        		<ul>
	        		<li class="block">
		        		<h4>카테고리를 선택하세요</h4>
		        		<c:if test="${empty category}">
		        		<select name="categoryCode" id="category" style="width:180px; height:20px;" class="category">
		        		<td>${category.categoryName}</td>
		        		<c:forEach items="${category}" var="category">
								<option value="${category.categoryCode}">${category.categoryName}</option>
								
						</c:forEach>
						</select>
						</c:if>
	        		</li>
	     		<!-- 카테고리 -->
	  
	        		<li class="block">
		        		<h4>마감일</h4>		
		   				<input type="date" class="form-control" name="sellEnd" style="height:35px;">
 
	        		</li>
	        		
	        		<li class="block">
		        		<h4>목표수량</h4>
		        		<style>
						.goalNum{height: 35px; }
						</style>
						<ul>
							<input name="goalNum" value='' id="goalNum" type="number" class="form-control" min="1"/>
						</ul>
	        		</li>
	        		
	        		<li class="block">
		        		<h4>옵션</h4>
		        		
						<script language="JavaScript">

						
						
						</script>
 
	        		</li>
	        		
	        		<li class="block">
		        		<h4>배송비</h4>
		        		<form style="font-size: 10pt;" >
						  <input type=radio name="deliveryCharge" value="free" onClick="this.form.text1.disabled=true">무료배송<br><br>
						  <input type=radio name="deliveryCharge" value="charge" onClick="this.form.text1.disabled=true">2500원<br><br>
						  <input type=radio name="deliveryCharge" value="etc" onClick="this.form.text1.disabled=false">기타<br>
						  <input type= text name="deliveryCharge" disabled style="width:100px; text-align:right;">원 이상 무료배송
						<form>
  						<script type="text/javascript">
						    function radio_chk() {
						        //라디오 버튼 Name 가져오기
						        var radio_btn = document.getElementsByName("deliveryCharge");
						 
						        //라디오 버튼이 체크되었나 확인하기 위한 변수
						        var radio_btn_check = 0;
						        for(var i = 0; i<radio_btn.length; i++){
						            //만약 라디오 버튼이 체크가 되어있다면 true
						            if(radio_btn[i].checked==true){
						                //라디오 버튼 값
						                alert(radio_btn[i].value);
						                //라디오 버튼이 체크되면 radio_btn_check를 1로 만들어준다.
						                radio_btn_check++;
						            }
						        }
						        
						        if(radio_btn_check==0){
						            alert("라디오 버튼을 선택해주세요");
						            return;
						        }
						    }
						</script>

	        		</li>
        		
        		</ul>
        		</form>
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
							<li><a href="http://plus.google.com" title="Enter my circles" class="plus"></a></li>
						</ul>
				</div>	
				<!-- ENDS bottom -->
			
			</div>
		</footer>
		<!-- ENDS FOOTER -->
		
	</body>
</html>