<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>



<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>滚动模板</title>

<link rel="stylesheet" type="text/css" href="../css/gundong/base.css" />

<link rel="stylesheet" type="text/css" href="../css/gundong/style.css" />

<script src="../js/gundong/jquery-1.7.2.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(function() {
	$(window).resize(function() {
		imgWH();
	}).resize();
	
	function imgWH() {
		var i = 0,
			imgpnglength = $('.imgpng').length;
		for(i=0; i < imgpnglength; i++) {
			var imgpng = $('.imgpng').eq(i),
				imgpngW = imgpng.width(),
				maximgpngW = imgpng.attr("width");
			if(imgpngW >= maximgpngW){
				imgpng.attr('width', maximgpngW);
			} else {
				imgpng.attr('width', imgpngW);
			}
		}
		var imgtopW = $('.imgtop').width(),
			imgtopH = $('.imgtop').height();
		
		$('.gem-back').css({width:imgtopW*0.375,height:imgtopH*0.19,marginTop:imgtopH*0.259});
	}
});
</script>

</head>
<body>

	<!-- container -->
	<section id="section1" class="section section1">
		<article class="sectionWrapper section1Wrapper fadeInDown">
			<div class="sectionTitle">
				<h1 class="txthide">域名3.0</h1>
				<div class="txthide">
					<span></span> <span>易名中国手机客户端</span>
				</div>
				<div id="gem-back">
					<a class="gem-back" href="http://www.17sucai.com/"></a>
				</div>
				<h2>
					<img src="../images/gundong/text_01.png" alt="易名3.0">
				</h2>
				<div class="iph_dload">
					<a href="http://www.17sucai.com/"><img
						src="../images/gundong/iphone_dload.png" 
						alt="ipone下载"></a>
				</div>
				<div class="andr_dload">
					<a href="http://www.17sucai.com/"><img
						src="../images/gundong/android_dload.png" 
						alt="安卓下载"></a>
				</div>
			</div>
			<div class="secitonbottombg">
				<img src="../images/gundong/fir_bg.jpg" class="imgpng" />
			</div>
			<div class="arrow_down">
				<a href="#section2"><img src="../images/gundong/arrow_down.png"
					alt="arrow_down"></a>
			</div>
		</article>
	</section>

	<section id="section2" class="section section2">
		<article class="sectionWrapper section2Wrapper">
			<div class="secitonbottombg">
				<img src="../images/gundong/sec_bg.jpg" alt="购买域名" />
			</div>
			<div class="arrow_down">
				<a href="#section3"> <img src="../images/gundong/arrow_down.png"
					 alt="arrow_down"></a>
			</div>
		</article>
	</section>

	<section id="section3" class="section section3">
		<article class="sectionWrapper section3Wrapper">
			<div class="secitonbottombg">
				<img src="../images/gundong/thi_bg.jpg" alt="域名交流" />
			</div>
			<div class="arrow_down">
				<a href="#section4"> <img src="../images/gundong/arrow_down.png"
					alt="arrow_down"></a>
			</div>
		</article>
	</section>

	<section id="section4" class="section section4">
		<article class="sectionWrapper section4Wrapper">
			<div class="secitonbottombg">
				<img src="../images/gundong/fou_bg.jpg" alt="域名查询注册" />
			</div>
			<div class="arrow_down">
				<a href="#section5"> <img src="../images/gundong/arrow_down.png"
					alt="arrow_down"></a>
			</div>
		</article>
	</section>

	<section id="section5" class="section section5">
		<article class="sectionWrapper section5Wrapper">
			<div class="secitonbottombg">
				<img src="../images/gundong/fif_bg.jpg" alt="域名管理" />
			</div>
			<div class="arrow_down">
				<a href="#section6"> <img src="../images/gundong/arrow_down.png"
					alt="arrow_down"></a>
			</div>
		</article>
	</section>

	<section id="section6" class="section section6">
		<article class="sectionWrapper section6Wrapper">
			<div class="secitonbottombg">
				<img src="../images/gundong/six_bg.jpg" alt="新闻资讯" /> <a href="#">
					<img src="../images/gundong/download.jpg" 
					alt="立即下载">
				</a>
			</div>
		</article>
	</section>
	<!--回到顶部-->

	<div id="arrow_up">
		<a href="#"><img src="../images/gundong/slide_up.png"  alt="回到顶部"></a>
	</div>

	<script type="text/javascript">

		var h = window.innerHeight || document.documentElement.clientHeight
				|| document.body.clientHeight;
		$(window).scroll(
				function() {
					var Yoffset = window.pageYOffset
							|| document.documentElement.scrollTop;
					if (Yoffset > 2 * h) {
						$("#arrow_up").fadeIn(100);
					} else {
						$("#arrow_up").fadeOut(100);
					}
					;
				});
		
		$("#arrow_up").bind("click", function(e) {
			e.preventDefault();
			$("body").animate({
				"scrollTop" : "0"
			}, 1000);

		});
	</script>

	<script src="../js/gundong/sectionscroll.js" type="text/javascript"></script>
	<script src="../js/gundong/jquery.mousewheel.min.js" type="text/javascript"></script>

</body>
</html>