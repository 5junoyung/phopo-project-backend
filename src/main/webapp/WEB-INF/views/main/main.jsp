<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title> Trip | HOME </title>
<link rel="stylesheet" href="/main/css/common.css">
<script src="/main/js/jquery.js"></script>
<script src="/main/js/jquery.bxslider.min.js"></script>
<script src="/main/js/isotope.pkgd.min.js"></script>
<script src="/main/js/common.js"></script>
<script src="/main/js/main.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="/main/css/jquery.bxslider.min.css">
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
				<a href="/main"><img src="/main/images/daehan.png" width="200px" height="50px" alt="">
				<img src="/main/images/korea.png" width="80px" height="80px" alt="">
				<img src="/main/images/bang.png" width="200px" height="50px" alt=""></a>
			</h1>
			<button>
				<span class="blind">�޴� ����</span> <span></span> <span></span> <span></span>
			</button>
			<ul class="util-menu">
			
			<c:set var="s" value="${sessionScope.sessionid }" />	
			
			<c:choose>
				<c:when test="${empty s}">
				<li><a href="/login">�α���</a></li></c:when>
				<c:otherwise>
					<c:choose>
						<c:when test="${s eq 'admin'}">
						<li><a>[������]</a></li>
						<li><a href="/logout">�α׾ƿ�</a></li></c:when>
						<c:otherwise>
						<li><a>${s}�� ȯ���մϴ�</a></li>
						<li><a href="/logout">�α׾ƿ�</a></li>
						</c:otherwise>
					</c:choose>
				</c:otherwise>
			</c:choose>

			
				
				<li><a href="/join">ȸ������</a></li>
				<li><a href="/board/list">�Խ���</a></li>
				<li><a href="#">����������</a></li>
				<li><a href="#">������</a></li>
			</ul>
			<nav id="gnb">
				<h2 class="blind">���θ޴�</h2>
				<ul>
					<li class="m1"><a href="/post/list?loc=seoul">����</a>
						<ul>
							<li><a href="#">����</a></li>
							<li><a href="#">����</a></li>
							<li><a href="#">����</a></li>
							<li><a href="#">����</a></li>
						</ul></li>
					<li class="m2"><a href="/post/list?loc=busan">�λ�</a>
						<ul>
							<li><a href="#">�߱�</a></li>
							<li><a href="#">����</a></li>
							<li><a href="#">����</a></li>
							<li><a href="#">����</a></li>
							<li><a href="#">�ϱ�</a></li>
						</ul></li>
					<li class="m3"><a href="/post/list?loc=jeju">����</a>
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
				<li><img class="img1" src="/main/images/seoul.jpg" alt="����1"></li>
				<li><img class="img1" src="/main/images/seoul1.jpg" alt="����2"></li>
				<li><img class="img1" src="/main/images/busan.jpg" alt="����3"></li>
				<li><img class="img1" src="/main/images/busan1.jpg" alt="����4"></li>
				<li><img class="img1" src="/main/images/jeju.jpg" alt="����5"></li>
				<li><img class="img1" src="/main/images/jeju1.jpg" alt="����6"></li>
			</ul>
			<ul class="slider-pager">
				<li><a href="#" data-slide-index="0"><img class="img2"
						src="/main/images/seoul.jpg"></a></li>
				<li><a href="#" data-slide-index="1"><img class="img2"
						src="/main/images/seoul1.jpg"></a></li>
				<li><a href="#" data-slide-index="2"><img class="img2"
						src="/main/images/busan.jpg"></a></li>
				<li><a href="#" data-slide-index="3"><img class="img2"
						src="/main/images/busan1.jpg"></a></li>
				<li><a href="#" data-slide-index="4"><img class="img2"
						src="/main/images/jeju.jpg"></a></li>
				<li><a href="#" data-slide-index="5"><img class="img2"
						src="/main/images/jeju1.jpg"></a></li>
			</ul>
		</div>
		<article id="trip_box">
			<div class="trip_box">
				<h4 class="place">����</h4>
				<img class="small_pic" src="/main/images/box_img/namsan.webp" alt="">
				<div class="word">���</div>
				<div class="small_word">���� Ÿ��</div>
				<br> <img class="small_pic" src="/main/images/box_img/namdaemoon.jpg" alt="">
				<div class="word">�߱�</div>
				<div class="small_word">���빮</div>

			</div>

			<div class="trip_box">
				<h4 class="place">�λ�</h4>
				<img class="small_pic" src="/main/images/box_img/hae.jfif" alt="">
				<div class="word">�ؿ��</div>
				<div class="small_word">�ؿ�� �ؼ�����</div>
				<br> <img class="small_pic" src="/main/images/box_img/lottehotel.jpg" alt="">
				<div class="word">����</div>
				<div class="small_word">�Ե� ȣ��</div>
			</div>

			<div class="trip_box">
				<h4 class="place">����</h4>
				<img class="small_pic" src="/main/images/box_img/newstar.jpg" alt="">
				<div class="word">�ֿ�</div>
				<div class="small_word">��������</div>
				<br> <img class="small_pic" src="/main/images/box_img/dragon.jpg" alt="">
				<div class="word">�ȴ�</div>
				<div class="small_word">��Ӹ� �ؾ�</div>
			</div>

			<div id="clear"></div>
			<div class="trip_box">
				<h4 class="place">����</h4>
				<img class="small_pic" src="/main/images/box_img/tower.jfif" alt="">
				<div class="word">����</div>
				<div class="small_word">���� Ÿ��</div>
				<br> <img class="small_pic" src="/main/images/box_img/palace.jpg" alt="">
				<div class="word">����</div>
				<div class="small_word">�溹��</div>
			</div>

			<div class="trip_box">
				<h4 class="place">�λ�</h4>
				<img class="small_pic" src="/main/images/box_img/bridge.jfif" alt="">
				<div class="word">����</div>
				<div class="small_word">���ȸ�</div>
				<br> <img class="small_pic" src="/main/images/box_img/zul.webp" alt="">
				<div class="word">����</div>
				<div class="small_word">�ص� ��û�</div>
			</div>

			<div class="trip_box">
				<h4 class="place">����</h4>
				<img class="small_pic" src="/main/images/box_img/hanla.webp" alt="">
				<div class="word">����</div>
				<div class="small_word">�Ѷ��</div>
				<br> <img class="small_pic" src="/main/images/box_img/gold.webp" alt="">
				<div class="word">�Ѹ�</div>
				<div class="small_word">�ݴ� �ؼ�����</div>
			</div>


		</article>
		<div class="line"></div>
		<div id="banner">
			<article id="customer">
				<img class="title" src="/main/images/customer.png" width="150" height="30">
				<img class="more" src="/main/images/more.png" width="30" height="10">
				<img class="phone" src="/main/images/call.png" width="220" height="95">
			</article>
			<article id="notice">
				<img class="title" src="/main/images/gong.png" width="150" height="30">
				<img class="more" src="/main/images/more.png" width="30" height="10">
				<div class="clear"></div>
				<ul>
					<li>
						<div class="subject">���� �� ���� ��������.</div>
						<div class="date">2023-01-01</div>
						<div class="clear"></div>
					</li>
					<li>
						<div class="subject">���� �� ���� ��������.</div>
						<div class="date">2022-01-01</div>
						<div class="clear"></div>
					</li>
					<li>
						<div class="subject">���� �� ���� ��������.</div>
						<div class="date">2021-01-01</div>
						<div class="clear"></div>
					</li>
					<li>
						<div class="subject">���� �� ���� ��������.</div>
						<div class="date">2020-01-01</div>
						<div class="clear"></div>
					</li>
					<li>
						<div class="subject">���� �� ���� ��������.</div>
						<div class="date">2019-01-01</div>
						<div class="clear"></div>
					</li>
				</ul>
			</article>

			<article id="faq">
				<img id="jejubanner" src="/main/images/jejubanner.jpg" onclick="javascript_:window.open('/main/images/fireposter.jpg', 'new', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no, width=550,height=700')"> 
				<img id="tour" src="/main/images/tour.jpg" onclick="javascript_:window.open('/main/images/tripposter.jpg', 'new', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no, width=450,height=600')"> 
				<img id="gamja" src="/main/images/gamja.jpg" onclick="javascript_:window.open('/main/images/gamja.jpg', 'new', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no, width=400,height=450')">
				<img id="loopy" src="/main/images/gif.gif" onclick="javascript_:window.open('https://www.youtube.com/embed/AYgsiY2TpXc', 'new', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no')">
			</article>
			<div class="clear"></div>
		</div>
	</div>

	<!--//�����̳� ����-->
	<!--Ǫ�� ����-->
	<div id="footer-wrap">
		<footer id="footer">

			<article id="address">
				<ul id="footer_menu">
					<li>�������� ��޹�ħ | �̿� �ȳ� | �̸��� ���ܼ��� �ź�</li>
					<li>���α���119���� | ������� �Ű� | ���� �ο� ���� | ������ �ȳ� | �������Ű���</li>
				</ul>
				<ul id="company_info">
					<li>�������̵� �糪��(��)</li>
					<li>��ǥ�̻� : ����</li>
					<li>�ּ� : ���ȣ</li>
					<li>��ȭ : (02)123-1234, FAX : (02)134-4747</li>
					<li id="copyright">Copyright by �Ƿη� All Rights Reserved.</li>
				</ul>
			</article>
			<article id="link">
				<h3>������ 1577-1577</h3>
				<select>
					<option>���̹�</option>
					<option>����</option>
					<option>����</option>
				</select>
				<div id="icons">
					<img src="/main/images/naver.png" width="20" height="20"> <img
						src="/main/images/daum.png" width="20" height="20"> <img
						src="/main/images/google.png" width="20" height="20">
				</div>
			</article>
		</footer>
	</div>
	<!--//Ǫ�� ����-->
</body>
</html>
