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
<link rel="stylesheet" href="css/question.css">
<link rel="stylesheet" href="css/main.css">



<title>~렛츠기링~</title>
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

<!-- header -->
<jsp:include page="../inc/headerDiv.jsp" />
<!-- header -->


<!-- main -->
<main>
<div id="top" style="min-width: 650px;">
	<div class="container-fluid" style="margin-top: 200px;">
		<div>
			<div class="dvh"><h2> 음식의 종류를 선택하세요. </h2></div>
			<div class="conta">
				<div class="box">
					<form action="./RecommendList.ad" method="GET">
						<input type="hidden" name="foodMenu" value="kf">
						<div class="cont">
							<button type="submit" class="btn-1">한식</button>
						</div>
					</form>
				</div><br>
				<div class="box">
					<form action="./RecommendList.ad" method="GET">
						<input type="hidden" name="foodMenu" value="wf">
						<button type="submit" class="btn-1">양식</button>
					</form>
				</div><br>
				<div class="box"> 
					<form action="./RecommendList.ad" method="GET">
						<input type="hidden" name="foodMenu" value="cf">
						<div class="cont">
							<button type="submit" class="btn-1">중식</button>
						</div>
					</form>
				</div><br>
				<div class="box">
					<form action="./RecommendList.ad" method="GET">
						<input type="hidden" name="foodMenu" value="jf">
						<div class="cont">
							<button type="submit" class="btn-1">일식</button>
						</div>
					</form>
				</div><br>
				<div class="box">
					<form action="./RecommendList.ad" method="GET">
						<input type="hidden" name="foodMenu" value="sf">
						<div class="cont">
							<button type="submit" class="btn-1">분식</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>	
</main>
<!-- main -->
	
<!-- footer -->
<jsp:include page="../inc/footerDiv.jsp" />
<!-- footer -->
	
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