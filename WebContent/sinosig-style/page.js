// JavaScript Document
// 
var window_h = $(window).height();
// console.log(window_h);
// alert(window_h);
var biantai = 0;
$(function() {

    var $J_form = $('#J_form'),
        $birthday = $('.birthday');

    var $tabMain = $(".tab_main"),
        $tab = $(".tab"),
        $liall = $(".liall"),
        $nav = $('.nav'),
        $miantab6 = $('.main_tab6');
    var window_w = $(window).width();

    var header_h = $('#header').height(),
        margin_t = 57,
        footer_h = $("#footer").height();
    //ie9什么鬼什么不兼容为什么要+50？我也不知道
    $tabMain.height(window_h - header_h - footer_h - margin_t).width(window_w);
    $tab.width(window_w * 6);
    $liall.width(window_w);
    if (window_h < 800) {
        $tabMain.height(window_h - header_h - footer_h).width(window_w);
        // $(".tab .li2 .tab2_img3").css('bottom', '33px');
    }
    if (window_h < 736) {
        $(".tab_main").css('overflow-x', 'hidden');
        // $(".tab_main").css('overflow-y', 'auto');
        $(".tab_main").css('overflow-y', 'hidden');
        $tabMain.height(window_h - footer_h);
        $nav.css('bottom', '0');
        $miantab6.css('margin-top', '-286px');
    }
    //对手提电脑兼容。。。
    if (window_h < 668) {
        $('.main_tab1 .img1').css({
            'width': '350px',
            'top': '119px',
            'left': '330px'
        });
        $('.main_tab1 .img2').css({
            'width': '600px',
            'top': '351px',
            'left': '191px'
        });
        $('.main_tab1 .img3').css({
            'width': '200px',
            'top': '425px',
            'left': '401px'
        });
        $('.main_tab2 .img4,.main_tab3 .img4,.main_tab4 .img4').css({
            'top': '592px'
        });
        // $('.main_tab6 .img1').css({
        //     'width': '270px',
        //     'top': '52px',
        //     'left': '360px'
        // });
        // $('.main_tab6 .img2 p').css({
        //     'font-size': '24px'
        // });
        // $('.main_tab6 .img2').css({
        //     'top': '235px'
        // });
    }

    $("#J_datePicker,#email").on('focus', function() {
        biantai = 1;
    });

    $("#email").on('blur', function() {
        biantai = 0;
    });

    /*黑名单名字验证*/
    var userNameStr = "妈,尼玛,泥妈,呢码,妮马,尼马,泥马,操你,卧槽,曹旎,曹你,曹尼,屌丝,他妈,贱,老子,劳资,煞笔,王八,什么,猪,鸡,鸭,呵呵,啊啊,阿阿,脑残,垃圾,麻痹,阿斯顿,阿斯达,阿斯大,奥巴马,士大夫,打飞机,爸,爷,妈逼,你猜,你爹,你管我,你妹,知道,奥特曼,大叔,屎,尿,屁,死,一坨,傻,骗,八嘎,是片子,变态,操你,毛泽东,周恩来,朱德,邓小平,江泽民,胡锦涛,温家宝,习近平,测试";

    var userNameJson = userNameStr.split(",");
    $(".name").on('blur', function(event) {
        nameCheck($(this));
    });

    function nameCheck(obj) {
        var userName = obj.val();
        for (var i = 0; i < userNameJson.length; i++) {
            var jsonRet = userName.match(userNameJson[i]);
            if (jsonRet) {
                var tips = '姓名不能出现' + userNameJson[i];
                $.tip({
                    text: tips
                });
                return false;
            }
        }
    }

    // 选择性别
    $(".qr").on("click", function(event) {
        var index = Number($(this).parent('td').find('span').index(this)) + 1;

        if (index == 1) {
            $(this).parent('td').find('span').removeClass('woman_choose');
            $(this).addClass('man_choose');
        } else {
            $(this).parent('td').find('span').removeClass('man_choose');
            $(this).addClass('woman_choose');
        }
    });
    $(".qr").eq(0).on('click', function(event) {
        $(this).parent('td').find('input[type="hidden"]').val(1);
    });
    $(".qr").eq(1).on('click', function(event) {
        $(this).parent('td').find('input[type="hidden"]').val(0);
    });

    var nowDate = new Date(),
        year = nowDate.getFullYear() + "",
        month = nowDate.getMonth() + 1 + "",
        day = nowDate.getDate() + "",
        agemax = (year - 25) + "-" + month + "-" + day,
        agemin = (year - 50) + "-" + month + "-" + day,
        agedefult = (year - 40) + "-" + month + "-" + day;

    //生日
    laydate({
        elem: '#J_datePicker',
        event: 'focus',
        min: agemin,
        max: agemax,
        start: agedefult,
        choose: function(dates) { //选择好日期的回调
            biantai = 0;
            $birthday.removeClass('J_placeholder');
        }
    });

    //placeholder加背景图的方法
    $J_form.on('focus',':text',function(){
        $this = $(this);
        $value = $this.val();
        if($value == ''){
            $this.removeClass('J_placeholder');
        }
    });
    $J_form.on('blur',':text',function(){
        $this = $(this);
        $value = $this.val();
        if($value == ''){
            $this.addClass('J_placeholder');
        }else{
            $this.removeClass('J_placeholder');
        }
    });

    //城市下拉
    //var DefaultArea='广东省';
    $('.city_context').cityselector({
        dataJson: jsonData,
        defaultArea: DefaultArea,
        filterData:['福建省','广东省','广西壮族自治区','江苏省','辽宁省','山东省','上海市','天津市','云南省','浙江省','安徽省','新疆维吾尔自治区','河北省','陕西省','海南省','四川省','山西省'],
        level: 2
    });

    //邮箱自动补全
    $("#email").mailAutoComplete({
        email: ["qq.com", "126.com", "163.com", "gmail.com", "sohu.com", "sina.com", "vip.qq.com", "21cn.com"]
    });
    var pianyi_x = $("#email").offset().left - $(".liall").width() * 2;
    // var pianyi_y = $("#email").offset().top + $("#email").height();
    $(".emailist").css({
        left: pianyi_x + "px"
    });
    $("#email").on('focus', function(event) {
        var $m_width = $("#email").outerWidth() - 2;
        var $top = $("#email").offset().top + $("#email").outerHeight() - 1;
        var $left = $("#email").offset().left;
        $('.emailist').css({
            'min-width': $m_width,
            'top': $top,
            'left': $left
        });
    });

    //邮箱缩回
    $(".age,.selector_name").on("click", function() {
        $(".emailist").addClass('none');
    });
    $("#email").on("focus", function() {
        $(".emailist").removeClass('none');
    });

    //验证表单
    $require = $("*[data-require]");
    var type = ['姓名', '手机', '邮箱'];
    var rel = ['/^[\u4e00-\u9fa5]{2,}$/', '/^1[3|4|5|6|7|8][0-9]([0-9]){8}$/', '/^[a-zA-Z0-9_.]+@[a-zA-Z0-9-]+[.][.a-zA-Z]+$/'];
    var texts = ["请填写姓名！", "手机号码格式不正确！", "邮箱格式不正确！"];
    
    $require.on('blur.abc', function(event) {
        $this = $(this);
        var options = $this.attr('data-require');
        var value = $this.val();
        var index = $require.index($this);
        var re = rel[index];
        re = strToJson(re);
        var times = 0;
        if (options) {
            if (!value) {
                var tips = type[index] + '不能为空！';
                $.tip({
                    text: tips
                });
                return false;
            }
            if (!re.test(value) && (index != 2)) {
                var tips = texts[index];
                $.tip({
                    text: tips
                });
            }
        }
    });
    //$('#J_form').layer({url:"http://m.test.com/update/73.html?user_id=c1fced5f1417%2FSsmncgblXp3%2FRCCiW0Q1ck0OmC7t7J3LroJOQ"});
    //提交表单

   /* $('#J_form').on('submit', function(event) {
    	
    	event.preventDefault();
        
        var $this = $(this);
        alert("ss"+$this );
        
        $.ajaxForm($this).then(function(data) {
        	
            var result = data.status ? true : false;
            alert("result="+result);
            
            $this.data('limit', 0);
            
            if (data.status === 1) {

                $this.layer({
                    url: data.url
                });
            };
            if (data.status === 2) {
                $this.layer({
                    url: data.url,
                    shadow: false,
                    success: function() {
                        $("#layer_content").css({
                            'top': '80px'
                        })
                    }
                });
            }

            $.tip({
                text: data.info,
                status: result
            });
        }, function(err) {
            $this.data('limit', 0);
        });
    });*/
    
	$("#submit").click(function(){
		
			$.post("../survey/submitSurvy",$("#J_form").serialize(),function(data,result){
				if(data!="success"){
					$.tip({
		                text: data,
		                status: false
		            });
				}else{
					$("#J_form").css('display','none'); 
					
					$("#layer_content").show();
					
					 $("#layer_content").css({
                         'top': '80px'
                     })
                     
				}			
			});
		
	});
	
	
    $.extend({
        tip: function(options) {

        	$(".info").addClass('info_error');

            var param = $.extend({
                obj: "#message",
                text: '',
                timeout: 3000,
                status: true
            }, options);

            var obj = param.obj instanceof $ ? param.obj : $(param.obj);

            var count = obj.data('count') || 1;

            var status = param.status ? 'success' : 'error';

            clearTimeout(obj.data('count'));

            obj.html('<span class="' + status + '">' + param.text + '</span>');

            obj.removeClass('none');
            obj.data('count', setTimeout(function() {

                obj.addClass('none');
                $(".info").removeClass('info_error');

            }, param.timeout));
        },
        ajaxForm: function(form) {

            var $this = form instanceof $ ? form : $(form);

            if (!$this.data('limit')) {
                $this.data('limit', 1);
                return $.ajax({
                    url: $this.attr('action'),
                    //url:'/pkufi_1.html' ,
                    type: 'POST',
                    dataType: 'json',
                    data: $this.serialize()
                });
            }
        }
    });




});

function strToJson(str) {
    if (str == '' || typeof(str) == 'object') {
        return str;
    }
    var json = eval('(' + str + ')');
    return json;
}
