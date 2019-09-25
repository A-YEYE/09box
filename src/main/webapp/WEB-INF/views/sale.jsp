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
				결제 하기
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
				                    <c:forEach items="${optionList}" var="optionList">
				                        <tr>
				                            <td style="text-align:left"><input name="buyOptionCode"type="hidden" value="${optionList.buyOptionCode}">${optionList.optionName}</td>
				                            <td><input name="optionCount"type="hidden" value="${optionList.optionCount}">${optionList.optionCount}개</td>
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
				                            <td style="text-align:center"><fmt:formatNumber pattern="###,###,###" value="${totalPrice}" /></td>	<!-- 선택상품수량 * 가격 -->
				                            <td>+</td>
				                            <td style="text-align:center"><fmt:formatNumber pattern="###,###,###" value="${deliveryCharge}" />원</td>
				                            <td>=</td>
				                            <td style="text-align:center"><fmt:formatNumber pattern="###,###,###" value="${totalPrice+deliveryCharge}" />원</td>
				                        </tr>  
				                    </tbody>
				         </table>   
				         <p>
							<input type="hidden" name="totalPrice" value="${totalPrice+deliveryCharge}">
							<input type="hidden" name="payDeliveryCharge" value="${deliveryCharge}">
							<input type="hidden" name="rnum" value="${rnum}">
							<input type="hidden" name="imp_uid" id="imp_uid">
						</p>
						</div>
					</div>  				
						<p><h3>배송 정보</h3></p>		    			
						
						<input name="loginId"  id="loginId" type="hidden" value="${loginId}" placeholder="id" />     
						<input name="name"  id="name" type="text" placeholder="이름" />
						<input name="phone"  id="phone" type="text" placeholder="핸드폰 번호" /><br>
						<input type="text" id="postCode" name="postCode" style="width:40%" onclick="sample6_execDaumPostcode()" placeholder="우편번호" readonly>
						<input type="button" onclick="sample6_execDaumPostcode()" style="width:10%" value="우편번호 찾기"><br>
						<input type="text" id="address" name="address" placeholder="주소"><br>
						<input type="text" id="detailAddress" name="detailAddress" placeholder="상세주소">   
						
						<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
						<script>
						    function sample6_execDaumPostcode() {
						        new daum.Postcode({
						            oncomplete: function(data) {
						                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
						
						                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
						                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						                var addr = ''; // 주소 변수
						                var extraAddr = ''; // 참고항목 변수
						
						                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
						                    addr = data.roadAddress;
						                } else { // 사용자가 지번 주소를 선택했을 경우(J)
						                    addr = data.jibunAddress;
						                }
						
						                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						                if(data.userSelectedType === 'R'){
						                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
						                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
						                        extraAddr += data.bname;
						                    }
						                    // 건물명이 있고, 공동주택일 경우 추가한다.
						                    if(data.buildingName !== '' && data.apartment === 'Y'){
						                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
						                    }
						                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						                    if(extraAddr !== ''){
						                        extraAddr = ' (' + extraAddr + ')';
						                    }
						                    // 조합된 참고항목을 해당 필드에 넣는다.
						                    document.getElementById("detailAddress").value = extraAddr;
						                
						                } else {
						                    document.getElementById("detailAddress").value = '';
						                }
						
						                // 우편번호와 주소 정보를 해당 필드에 넣는다.
						                document.getElementById('postCode').value = data.zonecode;
						                document.getElementById("address").value = addr;
						                // 커서를 상세주소 필드로 이동한다.
						                document.getElementById("detailAddress").focus();
						            }
						        }).open();
						    }
						</script>						
						<button type="button" onclick="requestPay()" style="background-color:white;margin-left:25%;margin-right:25%;text-align: center;width:50%;color:black;font-size: 18px;padding: 10px;vertical-align: middle;" >
							<i class="fas fa-comment" style="color:black;"></i> kakaoPAY
						</button>
						<script>
						function requestPay() {
							// 결제완료 후 보여줄 내용들. 필수 값 체크
							var name = $('#name').val();
							var phone = $('#phone').val();
							var postCode = $('#postCode').val();
							var address = $('#address').val();
							var detailAddress = $('#detailAddress').val();
							if(name ==  "") { alert("이름을 입력하세요"); return;}
							if(phone ==  "") { alert("핸드폰 번호를 입력하세요"); return; }
							if(postCode ==  "") { alert("우편주소를 선택하세요"); return; }
							
							var IMP = window.IMP; // 생략가능
						    IMP.init('imp02414568');  // 가맹점 식별 코드
						   IMP.request_pay({
						       pg : 'kakao', // 결제방식
						       pay_method : 'card',	// 결제 수단
						       merchant_uid : 'merchant_' + new Date().getTime(),
						       name : '주문명: 결제 테스트',	// order 테이블에 들어갈 주문명 혹은 주문 번호
						       amount : ${totalPrice+deliveryCharge},	// 결제 금액
						       buyer_email : '',	// 구매자 email
						       buyer_name :  $('#name').val(),	// 구매자 이름
						       buyer_tel :  $('#phone').val(),	// 구매자 전화번호
						//       buyer_addr :  $('#address').val() + $('#detailAddress').val(),	// 구매자 주소
						       buyer_postcode :  $('#postCode').val(),	// 구매자 우편번호
						       kakaoOpenApp : true
						      // m_redirect_url : "http://localhost:8080/09box/payments/complete"	// "/payments/complete", // 결제 완료 후 보낼 컨트롤러의 메소드명
						   }, function(rsp) {
							if ( rsp.success ) { // 성공시
								//[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
						    	jQuery.ajax({
						    		url: "payments/complete", //cross-domain error가 발생하지 않도록 주의해주세요
									// var msg = '결제가 완료되었습니다.';
							    	type: 'POST',
						    		dataType: 'json',
						    		data: {
							    		imp_uid : rsp.imp_uid
							    //		merchant_uid: rsp.merchant_uid
							    		//기타 필요한 데이터가 있으면 추가 전달
						    		}
						    	}).done(function(data) {
						    		//[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
						    		if ( data != null ) {
						    			var msg = '결제가 완료되었습니다.';
						    			msg += '\n고유ID : ' + rsp.imp_uid;
						    			msg += '\n상점 거래ID : ' + rsp.merchant_uid;
						    			msg += '\결제 금액 : ' + rsp.paid_amount;
						    			msg += '카드 승인번호 : ' + rsp.apply_num;
						    			
						    		//	alert(msg);
						    			payOk(rsp.imp_uid);
						    		} else {
						    			//[3] 아직 제대로 결제가 되지 않았습니다.
						    			//[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
						    		}
						    	});
						    } else {
						        var msg = '결제에 실패하였습니다.';
						        msg += '에러내용 : ' + rsp.error_msg;
						      //실패시 이동할 페이지
				                location.href="<%=request.getContextPath()%>/payFail";
						        alert(msg);
						    }
						})};
						function payOk(imp_uid){
							$("#imp_uid").val(imp_uid);
							$("#contactForm").submit();
						}
						function payFail(imp_uid){
							$("#imp_uid").val(imp_uid);
							$("#contactForm").submit();
						}
						</script>					
						
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