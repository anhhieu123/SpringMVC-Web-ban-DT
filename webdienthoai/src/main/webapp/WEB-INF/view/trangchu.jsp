<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<meta charset="utf-8">
<title>NYC SHOP</title>
<script type="text/javascript">
		$(function() {
			var pull        = $('#pull');
			menu        = $('nav ul');
			menuHeight  = menu.height();

			$(pull).on('click', function(e) {
				e.preventDefault();
				menu.slideToggle();
			});
		});

		$(window).resize(function(){
			var w = $(window).width();
			if(w > 320 && menu.is(':hidden')) {
				menu.removeAttr('style');
			}
		});
	</script>
</head>
<body>    
	<!-- header -->
	<header id="header">
		<div class="container">
			<div class="row">
				<div id="logo" class="col-md-3 col-sm-12 col-xs-12">
					<h1>
						<a href="#"><img src='<c:url value = "/resources/img/home/logo1.png"/>'></a>						
						<nav><a id="pull" class="btn btn-danger" href="#">
							<i class="fa fa-bars"></i>
						</a></nav>			
					</h1>
				</div>
				<div id="search" class="col-md-5 col-sm-12 col-xs-12">
					<input type="text" name="text" value="Nhập từ khóa ...">
					<input type="submit" name="submit" value="Tìm Kiếm">
				</div>
				<div  class="col-md-2 col-sm-12 col-xs-12">
					<a id="dn" href="dangnhap/">Đăng nhập</a>
				</div>
				<div id="cart" class="col-md-2 col-sm-12 col-xs-12">
					<a class="display" href="#">Giỏ hàng</a>
					<a href="#">6</a>				    
				</div>
			</div>			
		</div>
	</header><!-- /header -->
	<!-- endheader -->

	<!-- main -->
	<section id="body">
		<div class="container">
			<div class="row">
				<div id="sidebar" class="col-md-3">
					<nav id="menu">
						<ul>
							<li class="menu-item">danh mục sản phẩm</li>
							
								<c:forEach var="listdssp" items="${listcate}">
									<li class="menu-item"><a href="#" title="">${listdssp.getCate_name()}</a></li>						
								</c:forEach>
												
						</ul>
						<!-- <a href="#" id="pull">Danh mục</a> -->
					</nav>

					<div id="banner-l" class="text-center">
						<div class="banner-l-item">
							<a href="#"><img src='<c:url value = "/resources/img/home/banner-l-1.png"/>' alt="" class="img-thumbnail"></a>
						</div>
						<div class="banner-l-item">
							<a href="#"><img src='<c:url value = "/resources/img/home/banner-l-1.png"/>' alt="" class="img-thumbnail"></a>
						</div>
						<div class="banner-l-item">
							<a href="#"><img src='<c:url value = "/resources/img/home/banner-l-1.png"/>' alt="" class="img-thumbnail"></a>
						</div>
						<div class="banner-l-item">
							<a href="#"><img src='<c:url value = "/resources/img/home/banner-l-1.png"/>' alt="" class="img-thumbnail"></a>
						</div>
						<div class="banner-l-item">
							<a href="#"><img src='<c:url value = "/resources/img/home/banner-l-1.png"/>' alt="" class="img-thumbnail"></a>
						</div>
						<div class="banner-l-item">
							<a href="#"><img src='<c:url value = "/resources/img/home/banner-l-1.png"/>' alt="" class="img-thumbnail"></a>
						</div>
						<div class="banner-l-item">
							<a href="#"><img src='<c:url value = "/resources/img/home/banner-l-1.png"/>' alt="" class="img-thumbnail"></a>
						</div>
					</div>
				</div>

				<div id="main" class="col-md-9">
					<!-- main -->
					<!-- phan slide la cac hieu ung chuyen dong su dung jquey -->
					<div id="slider">
						<div id="demo" class="carousel slide" data-ride="carousel">

							<!-- Indicators -->
							<ul class="carousel-indicators">
								<li data-target="#demo" data-slide-to="0" class="active"></li>
								<li data-target="#demo" data-slide-to="1"></li>
								<li data-target="#demo" data-slide-to="2"></li>
							</ul>

							<!-- The slideshow -->
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img src='<c:url value = "/resources/img/home/slide-1.png"/>' alt="Los Angeles" >
								</div>
								<div class="carousel-item">
									<img src='<c:url value = "/resources/img/home/slide-2.png"/>' alt="Chicago">
								</div>
								<div class="carousel-item">
									<img src='<c:url value = "/resources/img/home/slide-3.png"/>' alt="New York" >
								</div>
							</div>

							<!-- Left and right controls -->
							<a class="carousel-control-prev" href="#demo" data-slide="prev">
								<span class="carousel-control-prev-icon"></span>
							</a>
							<a class="carousel-control-next" href="#demo" data-slide="next">
								<span class="carousel-control-next-icon"></span>
							</a>
						</div>
					</div>

					<div id="banner-t" class="text-center">
						<div class="row">
							<div class="banner-t-item col-md-6 col-sm-12 col-xs-12">
								<a href="#"><img src='<c:url value = "/resources/img/home/banner-t-1.png"/>' alt="" class="img-thumbnail"></a>
							</div>
							<div class="banner-t-item col-md-6 col-sm-12 col-xs-12">
								<a href="#"><img src='<c:url value = "/resources/img/home/banner-t-1.png"/>' alt="" class="img-thumbnail"></a>
							</div>
						</div>					
					</div>

					<div id="wrap-inner">
						<div class="products">
							<h3>sản phẩm nổi bật</h3>
							<div class="product-list row">
								
								<c:forEach var="sanpham" items="${listSanPham}">
									<div class="product-item col-md-3 col-sm-6 col-xs-12">
										<a href=""><img src='<c:url value = "/resources/img/home/${sanpham.getProd_img()}"/>' class="img-thumbnail"></a>
										<p><a href="">${sanpham.getProd_name()}</a></p>
										<p class="price">${sanpham.getProd_price()}</p>	  
										<div class="marsk">
											<a href="chitiet/${sanpham.getProd_id()}">Xem chi tiết</a>
										</div>                                    
									</div>
								</c:forEach>
								
							</div>                	                	
						</div>

						<div class="products">
							<h3>sản phẩm mới</h3>
							<div class="product-list row">
								
								<c:forEach var="sanpham" items="${listSanPham}">
									<div class="product-item col-md-3 col-sm-6 col-xs-12">
										<a href="#"><img src='<c:url value = "/resources/img/home/${sanpham.getProd_img()}"/>' class="img-thumbnail"></a>
										<p><a href="#">${sanpham.getProd_name()}</a></p>
										<p class="price">${sanpham.getProd_price()}</p>	  
										<div class="marsk">
											<a href="chitiet/${sanpham.getProd_id()}">Xem chi tiết</a>
										</div>                                    
									</div>
								</c:forEach>
								
							</div>    
						</div>
					</div>
					
					<!-- end main -->
				</div>
			</div>
		</div>
	</section>
	<!-- endmain -->

	<!-- footer -->
	<footer id="footer">			
		<div id="footer-t">
			<div class="container">
				<div class="row">				
					<div id="logo-f" class="col-md-3 col-sm-12 col-xs-12 text-center">						
						<a href="#"><img src='<c:url value = "/resources/img/home/logo1.png"/>'></a>		
					</div>
					<div id="about" class="col-md-3 col-sm-12 col-xs-12">
						<h3>About us</h3>
						<p class="text-justify">Vietpro Academy thành lập năm 2009. Chúng tôi đào tạo chuyên sâu trong 2 lĩnh vực là Lập trình Website & Mobile nhằm cung cấp cho thị trường CNTT Việt Nam những lập trình viên thực sự chất lượng, có khả năng làm việc độc lập, cũng như Team Work ở mọi môi trường đòi hỏi sự chuyên nghiệp cao.</p>
					</div>
					<div id="hotline" class="col-md-3 col-sm-12 col-xs-12">
						<h3>Hotline</h3>
						<p>Phone Sale: (+84) 0988 550 553</p>
						<p>Email: sirtuanhoang@gmail.com</p>
					</div>
					<div id="contact" class="col-md-3 col-sm-12 col-xs-12">
						<h3>Contact Us</h3>
						<p>Address 1: B8A Võ Văn Dũng - Hoàng Cầu Đống Đa - Hà Nội</p>
						<p>Address 2: Số 25 Ngõ 178/71 - Tây Sơn Đống Đa - Hà Nội</p>
					</div>
				</div>				
			</div>
			<div id="footer-b">				
				<div class="container">
					<div class="row">
						<div id="footer-b-l" class="col-md-6 col-sm-12 col-xs-12 text-center">
							<p>Học viện Công nghệ Vietpro - www.vietpro.edu.vn</p>
						</div>
						<div id="footer-b-r" class="col-md-6 col-sm-12 col-xs-12 text-center">
							<p>© 2017 Vietpro Academy. All Rights Reserved</p>
						</div>
					</div>
				</div>
				<div id="scroll">
					<a href="#"><img src='<c:url value = "/resources/img/home/scroll.png"/>'></a>
				</div>	
			</div>
		</div>
	</footer>
	<!-- endfooter -->
		<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
