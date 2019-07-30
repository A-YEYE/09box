<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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
			
			
			
				
			<!-- page content-->
        	<div id="page-content" class="cf">        	
	        	<!-- entry-content -->	
	        	<div class="entry-content cf">		
	        		
					<!-- Dropcaps -->
					<h3 class="heading">Drop caps</h3>
					<p class="dropcap">Aliquam enim ac eros eu erat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.Lacus enim ac eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, nt quis, accumsan porttitor, facilisis luctus, metus.Lacus eni quis,tincidunt quis, facilisis luctus.</p>	
					<p class="dropcap dark">Aliquam enim ac eros eu erat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.Lacus enim ac eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, nt quis, accumsan porttitor, facilisis luctus, metus.Lacus eni quis,tincidunt quis, facilisis luctus.</p>
					<!-- ENDS Dropcaps -->
					
					<div class="block-divider"></div>
					
					<!-- Infos -->
					<h4 class="heading">Box Info</h4>
					<p class="infobox-info">Important Infoâ¦</p>
					<p class="infobox-warning">Warning Infoâ¦</p>
					<p class="infobox-success">Success Infoâ¦</p>
					<p class="infobox-error">Error Infoâ¦</p>
					<!-- ENDS Infos -->
					
					<div class="block-divider"></div>
					
					<!-- Lists -->
					<h4 class="heading">Bullet list</h4>
					<div class="lists-check">
						<ul>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
						</ul>
					</div>
					
					<div class="lists-arrow">
						<ul>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
						</ul>
					</div>
					
					<div class="lists-plus">
						<ul>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
						</ul>
					</div>
					
					<div class="lists-star">
						<ul>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
						</ul>
					</div>
					
					<div class="lists-heart">
						<ul>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
						</ul>
					</div>
					<!-- ENDS  Lists -->
					
					<div class="block-divider"></div>
					
					<!-- Quotes -->
					<h4 class="heading">Quotes</h4>
					<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.<span class="pullquote-right">THIS IS A PULL QUOTE RIGHT, LOREM IPSUM DOLOR AMET</span> Quisque sit amet est et sapien ullamcorper pharetra.  Ut felis. Praesent dapibus, neque id cursus faucibus,  Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci.</p>
					
					<p><span class="pullquote-left">THIS IS A PULL QUOTE RIGHT, LOREM IPSUM DOLOR AMET</span> Quisque sit amet est et sapien ullamcorper pharetra.  Ut felis. Praesent dapibus, neque id cursus faucibus,  Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim.</p>				
					<!-- ENDS Quotes -->
					
					<div class="block-divider"></div>
					
					<!-- Highlight -->
					<h4 class="heading">Highlighted text</h4>
					<p><span class="highlight">Pellentesque habitant morbi tristique senectus</span> et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra.</p>	
			    
			    
				</div>
				<!-- entry-content -->	
	        		
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
		
	</body>
	
	
	
</html>