var isIE = document.all && !window.atob;
var animateEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
    animateStart = 'webkitAnimationStart mozAnimationStart MSAnimationStart oanimationStart animationStart';
$(function() {
    var $nav = $(".nav a"),
        $tab = $(".tab"), //选项卡ul
        $tabli = $(".liall"), //选项卡li
        $main = $(".tab_main"),
        $navMain = $(".nav");
    var browser;
    /(Firefox)/.test(navigator.userAgent) ? broswer = "DOMMouseScroll" : broswer = "mousewheel";
    var _width = $(window).width();
    var up = 0,
        down = 0,
        max = 4,
        speed = 300;
    //如果是ie9以下
    if (isIE) {
        // $(".tab1_img4").css({
        //     top: '485px',
        //     opacity: '0'
        // });
        // $(".tab1_img4").stop().animate({
        //     top: 445,
        //     opacity: 1},
        //     500, function() {
        // });
        $('.flower1,.tab1_img4,.tab1_img5').css({
            opacity: '1'
        });
    }else{
        $('.main_tab1 img,.main_tab2 img,.img4').css('opacity','0');
    }
    var $focus = $("*[data-require]"),
        focusTag = 0;
    $focus.on('focus', function(event) {
        focusTag = 1;
    });
    $focus.on('blur', function(event) {
        focusTag = 0;
    });
    $nav.on('click', function(event) {
        var $ele = $(this);
        var index = $ele.parents('ul').find('a').index($ele);
        var curr = $nav.index($(".nav .current"));
        var dirindex = curr < index ? 1 : 0;
        animation(index, dirindex);
    });
    //39 右键
    //37 左键
    $(document).on('keydown',function(e) {
        e.preventDefault();
        if (e.keyCode == 37 && !focusTag) {
            diretion(0);
        }
        if (e.keyCode == 39 && !focusTag) {
            diretion(1);
        }

    });
    //兼容火狐的傻瓜方法
    $('body').on('focus','input',function(){
        $(document).off('keydown');
    });
    $('body').on('blur','input',function(){
        $(document).on('keydown',function(e) {
            e.preventDefault();
            if (e.keyCode == 37 && !focusTag) {
                diretion(0);
            }
            if (e.keyCode == 39 && !focusTag) {
                diretion(1);
            }

        });
    });

    $('.selector_list').on('click', function(event) {
        $('body').css({
            'overflow-y': 'auto',
            'padding-right': '0'
        });
    });
    //滚动鼠标切换
    $(document).bind(broswer, function(e) {
        var a = 0;
        $(".selector_list").each(function() {
            if ($(this).css('display') == 'block') {
                up = 0;
                down = 0;
                a++;
            }
        })
        if (biantai == 1) {
            up = 0;
            down = 0;
            a++;
        }
        if (!a) {
            e.preventDefault();
        } else {
            $('body').css({
                'overflow': 'hidden',
                'padding-right': '17px'
            });
        }
        if (e.originalEvent.detail) { //alert(e.originalEvent.deltaY+'-'+e.originalEvent.detail);
            e.originalEvent.detail > 0 ? down = (down + 1) : up = (up + 1);

            if (up >= 3) {
                diretion(0);
                up = 0;
            }
            if (down >= 3) {
                diretion(1);
                down = 0;
            }
        } else { /*--向下--向上--*/
           /* event.wheelDelta < 0 ? down = (down + 1) : up = (up + 1);
            if (up >= 3) {
                diretion(0);
                up = 0;
            }
            if (down >= 3) {
                diretion(1);
                down = 0;
            }*/
        }
    });
    //选项卡切换及切换前后执行的动画函数
    function animation(_index, dire_index) {
        var _index = _index;
        if(_index==4){
            $navMain.addClass('none');
        }else{
            $navMain.removeClass('none');
        }
        var _left = -(_index) * _width;
        var preIndex = dire_index ? (_index - 1) : (_index + 1);
        if (window_h < 736) {
            if (_index == 1 || _index == 2 || _index == 3 || _index == 4) {
                $("#footer").hide();
                $(".tab_main").height(window_h);
            } else {
                $("#footer").show();
                $(".tab_main").height(window_h - $("#footer").height());
            }
        }
        if (!isIE) {
            $(".tab .li1 .flower2, .tab .li2 .flower2, .tab .li3 .flower2,.tab .li1 .flower1, .tab .li2 .flower1, .tab .li3 .flower1,.tab .li2 .tab2_img5, .tab .li2 .tab2_img6, .tab .li2 .tab2_img7, .tab .li2 .tab2_img4").css('opacity', '0');
            $tabli.eq(preIndex).stop().removeClass('current');
            $tabli.eq(_index).stop().addClass('current');
            $nav.removeClass('current');
            $nav.eq(_index).addClass('current');
            if (_index == 1) {
                $(".tab2_img4").one(animateEnd, function(event) {
                    $(this).css('opacity', '1');
                })
            }
        } else {
            $nav.removeClass('current');
            $nav.eq(_index).addClass('current');
            // if(_index==0){
            //     $(".tab1_img4").css({
            //         top: '485px',
            //         opacity: '0'
            //     });
            //     $(".tab1_img4").stop().animate({
            //         top: 445,
            //         opacity: 1},
            //         1000, function() {
            //     });
            // }
            if (_index == 1) {
                $(".tab2_img4").css('opacity', '0');
                $(".tab2_img4").stop().animate({
                        opacity: 1
                    },
                    1000,
                    function() {});
            }
            if (_index == 2) {
                $(".tab3_img5").css({
                    right: '114px',
                    opacity: '0'
                });
                $(".tab .main_tab3 .tab3_img3").css('opacity', '0');
                $(".tab3_img5").stop().animate({
                        right: 174,
                        opacity: 1
                    },
                    500,
                    function() {});
                $(".tab3_img3").stop().animate({
                        opacity: 1
                    },
                    1000,
                    function() {});
            }
            if (_index == 3) {
                $(".tab4_img5").css({
                    right: '6px',
                    opacity: '0'
                });
                $(".tab .main_tab4 .tab4_img3").css('opacity', '0');
                $(".tab4_img5").stop().animate({
                        right: 66,
                        opacity: 1
                    },
                    500,
                    function() {});
                $(".tab4_img3").stop().animate({
                        opacity: 1
                    },
                    1500,
                    function() {});
            }
            if (_index == 4) {
                $(".tab5_img5").css({
                    right: '61px',
                    opacity: '0'
                });
                $(".tab .main_tab5 .tab5_img3").css('opacity', '0');
                $(".tab5_img5").stop().animate({
                        right: 121,
                        opacity: 1
                    },
                    500,
                    function() {});
                $(".tab5_img3").stop().animate({
                        opacity: 1
                    },
                    1500,
                    function() {});
            }
        }
        $tab.stop().animate({
            left: _left
        }, speed, function() {});
    }

    //滚动鼠标和点击向前向后按钮触发函数
    function diretion(ele_index) {
        var tag = 1;
        var _index = Math.round(Math.abs($tab.offset().left) / _width);

        _index = ele_index ? (_index + 1) : (_index - 1);

        //下一页或上一页是第一页或最后一页的时候：tag=false;
        tag = (_index < 0) || (_index > max) ? false : true;

        _index = _index < 0 ? 0 : _index;

        _index = _index > max ? max : _index;
        if (tag) {
        	
        	alert(ele_index+"=="+_index);
        	
            animation(_index, ele_index);
        }
    }


})
