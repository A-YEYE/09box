<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" %>

<html>
<head>
	<title>제목</title>
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

	    
</head>

<body style='text-align:center'>
<form name="input" method="post" action="list2">

<table style="width:100%;" border = "1" >

<tr>

<td colspan="3"><input type="text" name="goodsName" style="width:100%; height:50px;" placeholder="상품명을 입력하세요"></td>

</tr>

<tr>

		<td>카테고리</td>
	

<td rowspan="3">
	<input type="file" name="image"
			style="max-height: 120px; max-width:130px;">
</td>

<td rowspan="3">
	 <textarea id="summary" name="summary" placeholder="간략한 소개를 입력해 주세요" 
	 			style="max-height: 120px; width:430px;"></textarea>
</td>
</tr>
<tr>
<td>
<input type="date" style="max-height: 40px; width:200px;">
</td>
</tr>
<tr>
<td>

<input type="number" style="max-height: 40px; width:200px;" min="1">
</td>
</tr>

<tr>
	<td colspan="1" style="max-height: 40px; width:260px;">
  	배송비 선택
   </td>
  	<td colspan="2" style="max-height: 40px; width:300px;">
    	옵션선택
   </td>
  </tr>

<tr>

<td colspan="3">
    <textarea id="summernote" name="content"></textarea>
    <script>
     $('#summernote').summernote({
       placeholder: '내용을 입력하세요',
      	tabsize: 2,
          height: 800,          // 기본 높이값
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
</body>

</html>
