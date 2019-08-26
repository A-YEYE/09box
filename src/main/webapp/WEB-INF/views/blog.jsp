<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html class="no-js">

	<head>
		<script src="http://code.jquery.com/jquery-latest.js"></script>
		<meta charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>09BOX_insert</title>
		<!-- 썸머노트 -->
		<!-- include summernote bootstrap/jquery-->
		<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
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
		<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
	
 		<!-- include summernote css/js-->
		<link href="summernote/summernote.css" rel="stylesheet">
		<script src="summernote/summernote.js"></script>
		<!-- summer note korean language pack -->
 		<script src="summernote/lang/summernote-ko-KR.js"></script>
 		
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
		
		<link rel="stylesheet"
		href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
		integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
		crossorigin="anonymous">
				
	</head>
	
	
	<body class="page">
	
		<!-- HEADER -->
		<header>
			<div class="wrapper cf">
				
				<!-- nav -->
				<div id="logo">
					<a href="./"><img  src="img/logo.png" alt="Simpler"></a>
				</div>
				
				<ul id="nav" class="sf-menu">
					<li><a href="./">HOME</a></li>
					<li class="current-menu-item"><a href="blog.do">상품올리기</a></li>
					<li><a href="#">카테고리</a>
						<ul>
							<li><a href="page.do">전체보기</a></li>
							<li><a href="#">웹</a></li>
							<li><a href="#">프린트</a></li>
							<li><a href="#">디자인</a></li>
							<li><a href="#">포토</a></li>
						</ul>
					</li>
					<li><a href="portfolio.do">포폴/WORK이건 멀루하징</a></li>
					<li><a href="contact.do">회원가입/로그인</a></li>
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
			    <form name="input" action="./" method="post" enctype="multipart/form-data">
					
					<!-- Tabs -->
					<ul class="tabs">
						<li><a href="#"><span>내용 입력</span></a></li>
						<li><a href="#"><span>상세 입력</span></a></li>
					</ul>
	
					<div class="panes">
						<div>
							<c:if test="${!empty category}">
		        		<select id="category" name="categoryCode" class="form-control" style="min-width:404px; max-width:404px">
							<option value="">카테고리를 선택하세요</option>
							<c:forEach var="category" items="${category}">
								<option value="${category.categoryCode}">${category.categoryName}</option>
							</c:forEach>
						</select>
						</c:if>
							<br>
							<input type="text" name="goodsName" value='' id="goodsName" class="form-control"
									style="height: 35px;" placeholder="상품명을 입력하세요"/>
							<br>
							<div class="inputArea" >
							 <label for="gdsImg">썸네일</label>
							 <input type="file" id="gdsImg" name="file" />
							 <div class="select_img" ><img src="" /></div>
							 <script>
							  $("#gdsImg").change(function(){
							   if(this.files && this.files[0]) {
							    var reader = new FileReader;
							    reader.onload = function(data) {
							     $(".select_img img").attr("src", data.target.result).width(300).height(180);        
							    }
							    reader.readAsDataURL(this.files[0]);
							   }
							  });
							 </script>
							</div>
							<br>	
			        		<textarea class="form-control" id="summary" name="summary" placeholder="간략한 소개를 입력해 주세요" 
		        					style=" height: 60px; min-width:404px; max-width:912px; resize: horizontal;"></textarea>
							<br>
							<textarea id="summernote" name="content" ></textarea>
						</div>
						<div>
						
	  		 			
	        			<br>
		        		<h5>마감일</h5><br>		
		    	 	 		<input type="date" class="form-control" id="sellEnd" name="sellEnd" style="height:35px; min-width:404px; max-width:404px" >
  		 			  
	        			<br>
		        		<h5>목표수량</h5><br>
						<ul>
							<input name="goalNum" value='' id="goalNum" type="number" class="form-control" min="1" style="height:35px; min-width:404px; max-width:404px"/>
						</ul>
	         			
	        			<br>
		        		<h5>옵션</h5><p>
		        		
<!-- 여기부터였음 -->
						<table id="dyntbl1">

								<tr>
									<th><div style="font-size:12px; display:inline; text-align:right;">품목명</div></th>
									<th><div style="font-size:12px; display:inline; text-align:right;">가격</div></th>
									<th></th>
									<th>
										<!--input type=button value=" + " onClick="addRow()"-->
										<button class="mybtn" type="button" onClick="addRow()">
											<i class="fa fa-plus"></i>
										</button>
									</th>
								</tr>
								<tr onMouseOver="dyntbl1.clickedRowIndex=this.rowIndex">
									<td ><input class="form-control" style="width:100%" type=text name=itemcode></td> 
									<td><input class="form-control" style="width:100%" type="number" name=itemname></td>
									<td>
										<!--input type=file name=itemnum-->
									</td>
									<td>
										<!-- input type=button name=dyntbl1_delRow value=" X " onClick="delRow()"-->
										<button class="mybtn" type="button" onClick="delRow()"
											name=dyntbl1_delRow>
											<i class="fas fa-trash-alt"></i>
										</button>
									</td>
								</tr>
							</table>
							<script type="text/javascript">
							function addRow() {
								  var oRow = dyntbl1.insertRow();
								  oRow.onmouseover=function(){dyntbl1.clickedRowIndex=this.rowIndex};
								  var oCell1 = oRow.insertCell();
								  var oCell2 = oRow.insertCell();
								  var oCell3 = oRow.insertCell();
								  var oCell4 = oRow.insertCell();
								  oCell1.innerHTML = "<input style=\"width:100%\" class=form-control type=text name=itemcode>";
								  oCell2.innerHTML = "<input style=\"width:100%\" class=form-control type=number name=itemname>";
								  oCell3.innerHTML = "<!--input type=file name=itemnum-->";
								  oCell4.innerHTML = "<button class=mybtn type=button onClick=\"delRow()\" name=dyntbl1_delRow><i class=\"fas fa-trash-alt\"></i></button>";
								  
								}
								function delRow() {
									var ln = document.getElementById("dyntbl1").rows.length;								
									if(ln>2){
										dyntbl1.deleteRow(dyntbl1.clickedRowIndex);
									}
									else{
										alert("품목은 최소 1개 이상이어야 합니다.");
									}
								}
							
							
							</script>				
											
						<br>	
		        		<h5>배송비</h5>
	 	        		<form style="font-size: 10pt;">
						  <input type=radio name="deliveryCharge" value="0" onClick="this.form.deliveryChargetext.disabled=true">무료배송<br><br>
						  <input type=radio name="deliveryCharge" value="2500" onClick="this.form.deliveryChargetext.disabled=true"><label for="etc">2500원</label><br><br>
						  <input type=radio name="deliveryCharge" id="etc" value="etc" onClick="this.form.deliveryChargetext.disabled=false">기타<br>
						  <input type= text name="deliveryChargetext" id= "text" disabled style="width:100px; text-align:right;">원 이상 무료배송
						</form>
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

						    // 기타 입력했다가 다른 버튼 눌렀을 때 초기화.
						    $(document).ready(function(){
						    	$("input[name=deliveryCharge]").change(function() {
						    		var text = document.getElementById('text').value;
						            $('#text').val('');
						        });
						    });
						    
						    // 기타로 입력한 값 전송
						    var etc  = document.getElementById('etc').value;
						    $('#text').keyup(function(){
						    	var text = document.getElementById('text').value;
						    	var etc  = document.getElementById('etc').value;
						    	
						    	$('#etc').val(document.getElementById('text').value);
						    //	alert(etc); 
						    	
						    });
						</script>
							<br>
							<input type="submit" value="저장" onclick="check()"/>
                			<input type="button" value="취소"/>
						</div>
					</div>
					
					<script>
					<!-- 썸머노트 -->
					 $(document).ready(function() { 
					 $('#summernote').summernote({
				        placeholder: '내용을 입력하세요',
			        	tabsize: 2,
			            height: 500,          // 기본 높이값
			            minHeight: null,      // 최소 높이값(null은 제한 없음)
			            maxHeight: null,      // 최대 높이값(null은 제한 없음)
			            focus: false,          // 페이지가 열릴때 포커스를 지정함
			            lang: 'ko-KR'         // 한국어 지정(기본값은 en-US)
					 });
				      });
					 
					 
					 <!-- 종료일 -->
					 var start = new Date();
					 var end = document.getElementById('sellEnd').valueAsDate; 
										 
					$('#sellEnd').change(function (){
						end = document.getElementById('sellEnd').valueAsDate;
						
						if(end<start){
							alert("날짜를 확인해주세요");
							document.getElementById('sellEnd').valueAsDate = new Date();
						}
					});
					
				    </script>
					</form>
					<!-- ENDS TABS -->
					
					


				    
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