<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- css파일 -->
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">
<link rel="stylesheet" href="assets/css/templatemo-klassy-cafe.css">
<link rel="stylesheet" href="assets/css/owl-carousel.css">
<link rel="stylesheet" href="assets/css/lightbox.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/question.css">

<link href="./css/sideMenu.css" rel="stylesheet">

<title>가게 관리</title>
</head>
<body>
<!-- ***** Preloader Start ***** --> <!-- !!가운데 로딩 점!! -->
	<div id="preloader">
	    <div class="jumper">
	        <div></div>
	        <div></div>
	        <div></div>
	    </div>
	</div>
	<!-- ***** Preloader End ***** -->
	
	
	<!-- ***** Header Area Start ***** -->
		<jsp:include page="../inc/headerDiv.jsp" />
	<!-- ***** Header Area End ***** -->
	
	
	<!-- sidemenu -->
	<div style="float: left;">
		<jsp:include page="../inc/sideMenuOwner.jsp" />
	</div>
	<!-- sidemenu -->

<!-- main -->
<main>
<div id="top">
	<div id="category" style="margin: 85px 410px 0 410px; min-width: 800px;">


<fieldset>
 			<h2>가게 정보 수정</h2><br>
 			
	 		<form action="RestaurantUpdateAction.on" method="post" id="fr">
 			 	<b>상&nbsp;&nbsp;호&nbsp;&nbsp;명</b>  :  <input type="text" name="name" value="${dto.name}" style="margin-bottom: 3px;"><br>
 			    <b>편의시설</b> : <input type="text" name="convenience" value="${dto.convenience}" style="margin-bottom: 3px;"><br>
 			    <b>휴&nbsp;&nbsp;무&nbsp;&nbsp;일</b>  : <input type="text" name="dayoff" value="${dto.dayoff}" style="margin-bottom: 3px;"><br>
 			    <b>영업시간</b> : <input type="text" name="runtime" value="${dto.runtime}" style="margin-bottom: 3px;"><br>
 			 	<b>가게설명</b> : <input type="text" name="descriptions" value="${dto.descriptions }" style="margin-bottom: 10px;"><br>
 			 	<br>
 			 	<input class="btn-2" type="submit" value="가게정보 수정">
 			 	
 		
 			</form>
 		</fieldset>
</div>
</div>
</main>
<!-- main -->

<!-- ***** Footer Start ***** -->
	<jsp:include page="../inc/footerDiv.jsp" />
<!-- ***** Footer End ***** -->

<!-- jQuery -->
<script src="assets/js/jquery-2.1.0.min.js"></script>

<!-- Bootstrap -->
<script src="assets/js/popper.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

<!-- Plugins -->
<script src="assets/js/owl-carousel.js"></script>
<script src="assets/js/accordions.js"></script>
<script src="assets/js/datepicker.js"></script>
<script src="assets/js/scrollreveal.min.js"></script>
<script src="assets/js/waypoints.min.js"></script>
<script src="assets/js/jquery.counterup.min.js"></script>
<script src="assets/js/imgfix.min.js"></script> 
<script src="assets/js/slick.js"></script> 
<script src="assets/js/lightbox.js"></script> 
<script src="assets/js/isotope.js"></script> 

<!-- Global Init -->
<script src="assets/js/custom.js"></script>
<script>
    $(function() {
        var selectedClass = "";
        $("p").click(function(){
        selectedClass = $(this).attr("data-rel");
        $("#portfolio").fadeTo(50, 0.1);
            $("#portfolio div").not("."+selectedClass).fadeOut();
        setTimeout(function() {
          $("."+selectedClass).fadeIn();
          $("#portfolio").fadeTo(50, 1);
        }, 500);
            
        });
    });
</script>


</body>
</html>