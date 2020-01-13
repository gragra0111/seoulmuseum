<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<meta http-equiv="X-UA-Compatible" content="ie=edge">
  	<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico">
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/bxslider-4-4.2.12/dist/jquery.bxslider.min.css">
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/media.css">
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css">
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  	<script src="${pageContext.request.contextPath}/resources/js/common.js" type="text/javascript"></script>
  	<script src="${pageContext.request.contextPath}/resources/js/bxslider-4-4.2.12/dist/jquery.bxslider.min.js"></script>
  	<script src="${pageContext.request.contextPath}/resources/js/global.js"></script>
  	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,400,500,700&display=swap" rel="stylesheet">
  	<title>석파정 서울미술관</title>
</head>
<script type="text/javascript">
$(function() {
	GF.ajax._html('main');
})
</script>
<body>
	<div id="wrap">
		<!-- header 영역 -->
		<%@ include file="header.jsp"%>
		<!-- container 영역 -->
		<div id="main_container">
		</div>
		<!-- footer 영역 -->
		<%@ include file="footer.jsp"%>
	</div>
	<script>
  $('.samkids_img').bxSlider({
    auto: true,
    autoControls: false,
    stopAutoOnClick: false,
    pager: false
    });
  $('.visual_box').bxSlider({
    auto: true,
    autoControls: false,
    pager: true,
    // slideWidth: 1024
    });
  </script>
</body>
</html>