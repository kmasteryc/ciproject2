/**
 * Created by kmasteryc on 6/30/16.
 */
$(document).ready(function() {

    var configver = {
        item: 8,
        autoWidth: false,
        slideMove: 1, // slidemove will be 1 if loop is true
        slideMargin: 10,
        pauseOnHover: true,
        addClass: '',
        mode: "slide",
        useCSS: true,
        cssEasing: 'ease', //'cubic-bezier(0.25, 0, 0.25, 1)',//
        easing: 'linear', //'for jquery animation',////

        speed: 400, //ms'
        auto: true,
        loop: true,
        slideEndAnimation: true,
        pause: 2000,

        keyPress: false,
        controls: true,
        prevHtml: '',
        nextHtml: '',

        rtl:false,
        adaptiveHeight:true,

        vertical:true,
        verticalHeight:700,
        vThumbWidth:30,

        thumbItem:50,
        pager: false,
        gallery: false,
        galleryMargin: 5,
        thumbMargin: 100,
        currentPagerPosition: 'middle',

        enableTouch:false,
        enableDrag:true,
        freeMove:true,
        swipeThreshold: 40,

        responsive : [
            {
                breakpoint:800,
                settings: {
                    item:3,
                    slideMove:1,
                    slideMargin:6,
                }
            },
            {
                breakpoint:480,
                settings: {
                    item:2,
                    slideMove:1
                }
            }
        ],

        onBeforeStart: function (el) {},
        onSliderLoad: function (el) {},
        onBeforeSlide: function (el) {},
        onAfterSlide: function (el) {},
        onBeforeNextSlide: function (el) {},
        onBeforePrevSlide: function (el) {}
    };

    $('.mySliderVer').lightSlider(configver);

    $(".new_products").hide();

    $(".show-new").click(function(){

        if ($(this).hasClass('inactive')) {

            $(this).siblings().removeClass('active inactive');
            $(this).removeClass('active inactive');

            $(this).siblings().addClass('inactive');
            $(this).addClass('active');

            // $(this).parent().siblings(".hot_products").hide(300);

            $(this).parent().siblings(".new_products").show({easing: 'linear', duration: 300});
            $(this).parent().siblings(".hot_products").hide({easing: 'linear', duration: 300});

        }
    });

    $(".show-hot").click(function(){
        if ($(this).hasClass('inactive')) {

            $(this).siblings().removeClass('active inactive');
            $(this).removeClass('active inactive');

            $(this).siblings().addClass('inactive');
            $(this).addClass('active');

            $(this).parent().siblings(".hot_products").show({easing: 'linear', duration: 300});
            $(this).parent().siblings(".new_products").hide({easing: 'linear', duration: 300});

        }
    });



});