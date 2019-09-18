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
		<div class="modal-dialog">

		<div>
		</div>
		<!-- Modal content-->
		<div class="modal-content">

			<div class="modal-header" style="padding: 35px 50px;">
				<h4>
					<span class="glyphicon glyphicon-lock"></span> 회원가입
				</h4>
				<label>공구상자를 이용하기 위한 정보를 입력해 주세요.</label>
			</div>
			<div class="modal-body" style="padding: 40px 50px;">
				<form role="form" method="post" action="join" name="frm" id="frm">
					<div class="form-group">
						<label for="id"> 아이디 :</label> <input type="text"
							class="form-control" id="id" name="id" placeholder="Enter ID"
							required="required">
							<input type="button" class="btn btn-default" style="width: 25%;" value="중복확인" onclick="idcheck()" />
				
					</div>
					<div class="form-group">
						<label for="pw"> 비밀번호 :</label> <input type="password"
							class="form-control" id="pwd" name="pwd"
							placeholder="Enter Password" required="required">
					</div>
					<div class="form-group">
						<label for="pw"> 비밀번호 확인 :</label> <input type="password"
							class="form-control" id="pwdCfm" name="pwdCfm"
							placeholder="Retype the password" required="required">
					</div>
					<div class="form-group">
						<label for="pw"> 이름 :</label> <input type="name"
							class="form-control" id="name" name="name"
							placeholder="Enter Name" required="required">
					</div>
					<div class="form-group">
						<label for="pw"> 이메일 :</label> <input type="email"
							class="form-control" id="email" name="email"
							placeholder="Enter Email" required="required">
					</div>
					<button type="button" class="btn btn-default btn-block" onclick="DoJoin()">
						회원가입</button>
				</form>		
				
				<script>
				//아이디 체크여부 확인 (아이디 중복일 경우 = 0 , 중복이 아닐경우 = 1 )
				var idck = 0;
				function idcheck() {
				        
				        var id =  $("#id").val(); 
				        
				        $.ajax({
				            async: true,
				            type : 'POST',
				            data : id,
				            url : "idcheck.do",
				            dataType : "json",
				            contentType: "application/json; charset=UTF-8",
				            success : function(data) {
				                if (data.cnt > 0) {
				                    
				                    alert("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
				                    //아이디가 존제할 경우 빨깡으로 , 아니면 파랑으로 처리하는 디자인
				                    $("#id").addClass("has-error")
				                    $("#id").removeClass("has-success")
				                    $("#id").focus();
				                    
				                
				                } else {
				                    alert("사용가능한 아이디입니다.");
				                    //아이디가 존제할 경우 빨깡으로 , 아니면 파랑으로 처리하는 디자인
				                    $("#id").addClass("has-success")
				                    $("#id").removeClass("has-error")
				                    $("#pwd").focus();
				                    //아이디가 중복하지 않으면  idck = 1 
				                    idck = 1;
				                    
				                }
				            },
				            error : function(error) {
				                
				                alert("error : " + error);
				            }
				        });
				    };
				
				// 회원가입 유효성 검사
				function DoJoin(){
					var re = /^[a-zA-Z0-9]{4,12}$/ // 아이디와 패스워드가 적합한지 검사할 정규식
			        var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			        // 이메일이 적합한지 검사할 정규식
			       
					var id = $("#id").val();
					var pwd = $("#pwd").val();
					var pwdCfm = $("#pwdCfm").val();
					var name = $("#name").val();
					var email = $("#email").val();
					var emailCfm = $("#emailCfm").val();
					
					if(!re.test(id)){
						alert("아이디는 4~12자의 영문 대소문자와 숫자로만 입력하세요");
						$("#id").focus();
						return;
					}  
					
					if(!re.test(pwd)){
						alert("비밀번호는 4~12자의 영문 대소문자와 숫자로만 입력하세요");
						$("#pwd").focus();
						return;
					}
					
					if(pwd != pwdCfm){
						alert("비밀번호가 상이 합니다.")
						pwd.value = "";
						pwdCfm.value = "";
						$("#pwd").focus();
						return;
					}
					
					if(email.value=="") {
			           alert("이메일을 입력해 주세요");
			           email.focus();
			           return;
			       }
				if(confirm("회원가입을 하시겠습니까?")){
			        if(idck==0){
			            alert('아이디 중복체크를 해주세요');
			            return false;
			        }else{
			        alert("메일인증을 완료해 주세요");
			        $("#frm").submit();
			        }
			    }
				}
				</script>
			</div>
			<div class="modal-footer"></div>
		</div>

	</div>
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