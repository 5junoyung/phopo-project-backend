<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title> Trip | HOME </title>
<link rel="stylesheet" href="css/common.css">
<script src="js/jquery.js"></script>
<script src="js/jquery.bxslider.min.js"></script>
<script src="js/isotope.pkgd.min.js"></script>
<script src="js/common.js"></script>
<script src="js/main.js"></script>
<link rel="stylesheet" href="css/jquery.bxslider.min.css">
</head>
<script>
	$(function() {
		$(".slide_gallery").bxSlider({
			auto : true,
			autoControls : false,
			pagerCustom : ".slider-pager"
		});
	});
</script>
</head>
<body>
	<!--��� ����-->
	<div id="header-wrap">
		<header class="header-inner">
			<h1>
				<img src="images/daehan.png" width="200px" height="50px" alt="">
				<img src="images/korea.png" width="80px" height="80px" alt="">
				<img src="images/bang.png" width="200px" height="50px" alt="">
			</h1>
			<button>
				<span class="blind">�޴� ����</span> <span></span> <span></span> <span></span>
			</button>
			<ul class="util-menu">
				<li><a href="#">�α���</a></li>
				<li><a href="#">ȸ������</a></li>
				<li><a href="#">�Խ���</a></li>
				<li><a href="#">����������</a></li>
				<li><a href="#">������</a></li>
			</ul>
			<nav id="gnb">
				<h2 class="blind">���θ޴�</h2>
				<ul>
					<li class="m1"><a href="#">����</a>
						<ul>
							<li><a href="#">����</a></li>
							<li><a href="#">����</a></li>
							<li><a href="#">����</a></li>
							<li><a href="#">����</a></li>
						</ul></li>
					<li class="m2"><a href="#">�λ�</a>
						<ul>
							<li><a href="#">�߱�</a></li>
							<li><a href="#">����</a></li>
							<li><a href="#">����</a></li>
							<li><a href="#">����</a></li>
							<li><a href="#">�ϱ�</a></li>
						</ul></li>
					<li class="m3"><a href="#">����</a>
						<ul>
							<li><a href="#">���ֽ�</a></li>
							<li><a href="#">������</a></li>
						</ul></li>
					<li class="m4 no-sub"><a href="#">��������</a></li>
				</ul>
			</nav>
			<button>
				<span class="blind">�޴��ݱ�</span> <span></span> <span></span>
			</button>
		</header>
	</div>

	<!--//��� ����-->
	<!--�����̳� ����-->
	<div id="container">
		<div id="gallery_wrap">
			<ul class="slide_gallery">
				<li><img class="img1" src="images/seoul.jpg" alt="����1"></li>
				<li><img class="img1" src="images/seoul1.jpg" alt="����2"></li>
				<li><img class="img1" src="images/busan.jpg" alt="����3"></li>
				<li><img class="img1" src="images/busan1.jpg" alt="����4"></li>
				<li><img class="img1" src="images/jeju.jpg" alt="����5"></li>
				<li><img class="img1" src="images/jeju1.jpg" alt="����6"></li>
			</ul>
			<ul class="slider-pager">
				<li><a href="#" data-slide-index="0"><img class="img2"
						src="images/seoul.jpg"></a></li>
				<li><a href="#" data-slide-index="1"><img class="img2"
						src="images/seoul1.jpg"></a></li>
				<li><a href="#" data-slide-index="2"><img class="img2"
						src="images/busan.jpg"></a></li>
				<li><a href="#" data-slide-index="3"><img class="img2"
						src="images/busan1.jpg"></a></li>
				<li><a href="#" data-slide-index="4"><img class="img2"
						src="images/jeju.jpg"></a></li>
				<li><a href="#" data-slide-index="5"><img class="img2"
						src="images/jeju1.jpg"></a></li>
			</ul>
		</div>
		<article id="trip_box">
			<div class="trip_box">
				<h4 class="place">����</h4>
				<img class="small_pic" src="images/box_img/namsan.webp" alt="">
				<div class="word">���</div>
				<div class="small_word">���� Ÿ��</div>
				<br> <img class="small_pic" src="images/box_img/namdaemoon.jpg" alt="">
				<div class="word">�߱�</div>
				<div class="small_word">���빮</div>

			</div>

			<div class="trip_box">
				<h4 class="place">�λ�</h4>
				<img class="small_pic" src="images/box_img/hae.jfif" alt="">
				<div class="word">�ؿ��</div>
				<div class="small_word">�ؿ�� �ؼ�����</div>
				<br> <img class="small_pic" src="images/box_img/lottehotel.jpg" alt="">
				<div class="word">����</div>
				<div class="small_word">�Ե� ȣ��</div>
			</div>

			<div class="trip_box">
				<h4 class="place">����</h4>
				<img class="small_pic" src="images/box_img/newstar.jpg" alt="">
				<div class="word">�ֿ�</div>
				<div class="small_word">��������</div>
				<br> <img class="small_pic" src="images/box_img/dragon.jpg" alt="">
				<div class="word">�ȴ�</div>
				<div class="small_word">��Ӹ� �ؾ�</div>
			</div>

			<div id="clear"></div>
			<div class="trip_box">
				<h4 class="place">����</h4>
				<img class="small_pic" src="images/box_img/tower.jfif" alt="">
				<div class="word">����</div>
				<div class="small_word">���� Ÿ��</div>
				<br> <img class="small_pic" src="images/box_img/palace.jpg" alt="">
				<div class="word">����</div>
				<div class="small_word">�溹��</div>
			</div>

			<div class="trip_box">
				<h4 class="place">�λ�</h4>
				<img class="small_pic" src="images/box_img/bridge.jfif" alt="">
				<div class="word">����</div>
				<div class="small_word">���ȸ�</div>
				<br> <img class="small_pic" src="images/box_img/zul.webp" alt="">
				<div class="word">����</div>
				<div class="small_word">�ص� ��û�</div>
			</div>

			<div class="trip_box">
				<h4 class="place">����</h4>
				<img class="small_pic" src="images/box_img/hanla.webp" alt="">
				<div class="word">����</div>
				<div class="small_word">�Ѷ��</div>
				<br> <img class="small_pic" src="images/box_img/gold.webp" alt="">
				<div class="word">�Ѹ�</div>
				<div class="small_word">�ݴ� �ؼ�����</div>
			</div>

	</div>

	<!--//�����̳� ����-->
	<!--Ǫ�� ����-->
	<!--//Ǫ�� ����-->
</body>
</html>
</html>