<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<!-- saved from url=(0038)http://127.0.0.1:8080/v1/survey/sinosig -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">

<title>阳光保险赠险服务</title>
<link rel="stylesheet" type="text/css" href="../sinosig-style/1.css">
<script src="../sinosig-style/jquery.js"></script>

</head>

<body>
	<div class="header_wk">
		<div id="header">
			<h1 class="clearfix">
				<a href="#" id="logo" class="fl"> <img
					src="../sinosig-style/1_pc_logo.jpg">
				</a>
			</h1>
		</div>
	</div>
	<!--end #header-->
	<div class="main">
		<div class="tab_main clearfix">
			<ul class="tab">
				<li class="li5 liall current">
					<div class="main_tab main_tab6">
						<div class="zc_pa pa">
							<div class="zc_pr pr">
								<img src="../sinosig-style/1_pc_img72.png" class="img1">
								<div class="img2">
									<p>
										参与以下调查，填写资料。阳光<br> <span>送您最高10万元</span>保额意外保障，<br>与您分担风雨，共享阳光！
									</p>
								</div>
								<form action="" id="J_form" method="POST">
									<div class="fl">
										<div class="question_wk">
											
											<div class="question question1">
												<h4 class="title">ttttttt</h4>
												
												<span class="item"> 
													<input type="radio" name="result1" value="1">aaaaaaaaaaaaa
												</span>
												<span class="item"> 
													<input type="radio" name="result1" value="1">aaaaaaaaaaaaa
												</span>
												<span class="item"> 
													<input type="radio" name="result1" value="1">aaaaaaaaaaaaa
												</span>
												<span class="item"> 
													<input type="radio" name="result1" value="1">aaaaaaaaaaaaa
												</span>
												<div class="clearfix"></div>

											</div>
											<div class="question question1">
												<h4 class="title">ttttttt</h4>
												
												<span class="item"> 
													<input type="radio" name="result1" value="1">aaaaaaaaaaaaa
												</span>
												<span class="item"> 
													<input type="radio" name="result1" value="1">aaaaaaaaaaaaa
												</span>
												<span class="item"> 
													<input type="radio" name="result1" value="1">aaaaaaaaaaaaa
												</span>
												<span class="item"> 
													<input type="radio" name="result1" value="1">aaaaaaaaaaaaa
												</span>
												<div class="clearfix"></div>

											</div>
										</div>
									</div>

									<!-- 个人信息 -->
									<div class="fr">
										<div class="info_main img3">
											<input type="hidden" name="company"
												value="${questionMap.company}"> <input type="hidden"
												name="product" value="${questionMap.product}">

											<div class="info">
												<div id="message" class="none">
													<div class="errorTips">error</div>
												</div>
												<div class="form_control">
													<span>您的姓名：</span> <input type="text" name="name"
														maxlength="10" value=""
														class="input_name required J_placeholder" data-require="1">

													<input type="radio" name="sex" value="1"><span>男</span>
													<input type="radio" name="sex" value="2"><span>女</span>
												</div>
												<div class="form_control">
													<span>出生日期：</span> <input type="text" name="birthday"
														value="" class="birthday J_placeholder required"
														id="J_datePicker">
													<div class="container">
														<div id="calendar"></div>
													</div>
												</div>

												<div class="form_control">
													<span class="city_span">常驻城市：</span>
													<div class="city_context clearfix">
														<div class="city_level_1 province">
															<a href="javascript:;" class="selector_name"
																data-name="省份">省份</a> <input type="hidden"
																name="province" class="province" value="">
															<ul class="selector_list none">
																<li data-id="1" title="天津市">天津市</li>
																<li data-id="2" title="河北省">河北省</li>
																<li data-id="3" title="山西省">山西省</li>
																<li data-id="5" title="辽宁省">辽宁省</li>
																<li data-id="8" title="上海市">上海市</li>
																<li data-id="9" title="江苏省">江苏省</li>
																<li data-id="10" title="浙江省">浙江省</li>
																<li data-id="11" title="安徽省">安徽省</li>
																<li data-id="12" title="福建省">福建省</li>
																<li data-id="14" title="山东省">山东省</li>
																<li data-id="18" title="广东省">广东省</li>
																<li data-id="19" title="广西壮族自治区">广西壮族自治区</li>
																<li data-id="20" title="海南省">海南省</li>
																<li data-id="22" title="四川省">四川省</li>
																<li data-id="24" title="云南省">云南省</li>
																<li data-id="26" title="陕西省">陕西省</li>
																<li data-id="30" title="新疆维吾尔自治区">新疆维吾尔自治区</li>
															</ul>
														</div>
														<div class="city_level_2 city">
															<a href="javascript:;" class="selector_name"
																data-name="城市">城市</a> <input type="hidden" name="city"
																class="city" value="">
															<ul class="selector_list none"></ul>
														</div>
													</div>
												</div>

												<div class="form_control">
													<span>手机号码：</span> <input type="text" name="phone"
														maxlength="11" value=""
														class="mobile J_placeholder required" data-require="1">
													<!-- <input type="button" name="verify" value="免费获取验证码短信"> -->
												</div>

												<div class="form_control">
													<span>电子邮箱：</span> <input type="text" name="email"
														id="email" class="email J_placeholder required" value=""
														autocomplete="off" data-require="1">
												</div>

												<div class="form_control">
													<input type="button" value="免费领取" class="submit_btn"
														id="submit">
												</div>
											</div>
										</div>
										<!--表单end-->
									</div>
								</form>
							</div>
							<!--注册相对定位end-->
						</div>
						<!--注册绝对定位end-->
					</div> <!--第六屏div end-->
				</li>
			</ul>
			<ul class="nav clearfix" style="bottom: 0px;">
			</ul>
		</div>
	</div>


	<div id="layer_content" class="" style="position: fixed; display: none">
		<div id="layer_four" style="color: #747474">
			<a href="javascript:void(0);" class="closeA layer_close" title="关闭">关闭</a>
			<div id="msg_one">
				<h1 class="title3">提交成功</h1>
				<p class="lh15">感谢您对阳光保险及本次活动的支持，稍后我们的客服将会通过95510专号跟您联系，确认意外保障生效事宜，敬请留意！</p>
				<br>

				<h3>阳光保险诚意向您推荐以下热销产品，祝您幸福安康！</h3>
				<p>
					<span>阳光真心守护意外险:</span> 保至85周岁，最高保额1000万，最高19倍赔付 <a
						href="/index/statistic.html?project_id=30&amp;url=http://product.sinosig.com/product/1695.html&amp;email=545@qq.com&amp;addition=真心相伴"
						target="_blank">了解详情</a>
				</p>
				<p>
					<span>真爱久久两全保险:</span> 返还型重疾险，涵盖重疾和轻疾保障，最高返还115% <a
						href="/index/statistic.html?project_id=30&amp;url=http://product.sinosig.com/product/1694.html&amp;email=545@qq.com&amp;addition=真爱久久"
						target="_blank">了解详情</a>
				</p>
				<p>
					<span>金岁阳光年金险:</span> 交10年保20年，满期4倍基本保额赔付 <a
						href="/index/statistic.html?project_id=30&amp;url=http://product.sinosig.com/product/1696.html&amp;email=545@qq.com&amp;addition=金岁阳光"
						target="_blank">了解详情</a>
				</p>
			</div>
		</div>

		<script type="text/javascript" src="../sinosig-style/ZeroClipboard.js"></script>

		<script>
			$(".closeA").on('click', function(event) {
				$("#layer_content").hide();
				$("#J_form").css('display', 'block');
			});
		</script>
	</div>


	<script src="../sinosig-style/hm.js"></script>
	<script type="text/javascript">
		var DefaultArea = "北京市";
	</script>
	<script>
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "//hm.baidu.com/hm.js?2d3ea8122e2189aa25a23eb502ed9c49";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
	</script>

	<script src="../sinosig-style/layer.js"></script>
	<script src="../sinosig-style/jquery.cityselector.add.js"></script>
	<script src="../sinosig-style/cityTwo.js"></script>
	<script src="../sinosig-style/laydate.js"></script>
	<script src="../sinosig-style/mailAutoComplete-4.0.js"></script>
	<script src="../sinosig-style/jquery-tab.js"></script>
	<script src="../sinosig-style/page.js"></script>

	<script type="text/javascript">
		$("input[name='verify']").click(function() {

			$.post("../survey/verify", {
				verify : $("input[name='verify']").val(),
				phone : $("input[name='phone']").val()
			}, function(data) {
				alert(data);
			});

		})

		function checkSubmitParameter() {
			//问卷选择校验
			var msg = "";

			var que_div_m = $(".question_wk").find(".question");

			$('div.question').each(function(index) {
				if ($(this).find('input:checked').length > 0) {

				} else {
					var num = parseInt(index) + 1;

					msg = "请回答第" + num + "项问题";

					return msg;
				}
			});
		}
	</script>

	<!-- //IOS设备、安卓设备、PC设备 检查 -->

	<script type="text/javascript">
		$(function() {

			var type = fBrowserRedirect();
			
			$.post("../survey/OsDeviceInfor", {
				type:type
			}, function(data) {
				//alert(data);
			});

		})

		//操作系统
		function detectOS() {
			var sUserAgent = navigator.userAgent;
			var isWin = (navigator.platform == "Win32")
					|| (navigator.platform == "Windows");
			var isMac = (navigator.platform == "Mac68K")
					|| (navigator.platform == "MacPPC")
					|| (navigator.platform == "Macintosh");

			if (isMac)
				return "Mac";
			var isUnix = (navigator.platform == "X11") && !isWin && !isMac;
			if (isUnix)
				return "Unix";
			var isLinux = (String(navigator.platform).indexOf("Linux") > -1);
			if (isLinux)
				return "Linux";
			if (isWin) {
				var isWin2K = sUserAgent.indexOf("Windows NT 5.0") > -1
						|| sUserAgent.indexOf("Windows 2000") > -1;
				if (isWin2K)
					return "Win2000";
				var isWinXP = sUserAgent.indexOf("Windows NT 5.1") > -1
						|| sUserAgent.indexOf("Windows XP") > -1;
				if (isWinXP)
					return "WinXP";
				var isWin2003 = sUserAgent.indexOf("Windows NT 5.2") > -1
						|| sUserAgent.indexOf("Windows 2003") > -1;
				if (isWin2003)
					return "Win2003";
			}

			return "Other";
		}

		//设备类型
		var bForcepc = query("dv") == "pc";
		function fBrowserRedirect() {
			var sUserAgent = navigator.userAgent.toLowerCase();
			// alert(sUserAgent);
			var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
			var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
			var bIsMidp = sUserAgent.match(/midp/i) == "midp";
			var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
			var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
			var bIsAndroid = sUserAgent.match(/android/i) == "android";
			var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
			var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";
			if (bIsIpad) {
				if (!bForcepc) {
					//alert("ipad");
					return "ipad";
				}
			} else if (bIsIphoneOs ) {
				if (!bForcepc) {
					//alert("苹果");
					return "iphone";
				}
			} else if (bIsAndroid) {
				if (!bForcepc) {
					//alert("安卓");
					return "Android";
				}
			}else if (bIsMidp || bIsUc7 || bIsUc || bIsCE || bIsWM) {
				if (!bForcepc) {
					//alert("bIsUcbIsUc");
					return "bIsUcbIsUc";
				}
			} else {
				//alert("PC");
				return "PC";
			}
		}

		function query(name) {
			var sUrl = window.location.search.substr(1);
			var r = sUrl.match(new RegExp("(^|&)" + name + "=([^&]*)(&|$)"));
			return (r == null ? null : (r[2]));
		}
		
	</script>
	<ul class="emailist"
		style="min-width: 258px; visibility: hidden; z-index: 11; left: -6972px;"></ul>
</body>
</html>