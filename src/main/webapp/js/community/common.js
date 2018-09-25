jQuery(document).ready(function() {
  // 상단 이동
  jQuery('a[href="#top"]').click(function(e) {
    e.preventDefault();
    jQuery('html, body').animate({
      scrollTop: 0
    }, 400)
  });

  // 하단 이동
  var winBot = $('.wrapper').height();
  jQuery('a[href="#bottom"]').click(function(e) {
    e.preventDefault();
    jQuery('html, body').animate({
      scrollTop: winBot
    }, 400)
  });

  // 햄버거 메뉴 버튼 클릭
  $('.btn_hamburger').click(function() {
    if ($('.hamburger').is(':visible')) {
      $('.hamburger').css('display', 'none');
    } else {
      $('.hamburger').css('display', 'block');
    }
  });

  // 프로필 클릭
  $('.btn_profile').click(function() {
    if ($('.pop_profile').is(':visible')) {
      $('.pop_profile').css('display', 'none');
    } else {
      $('.pop_profile').css('display', 'block');
    }
  });
  $(document).mouseup(function(e) {
    var container = $('.pop_profile');
    if (container.has(e.target).length === 0) container.css('display', 'none');
  });

  // 알림 클릭
  $('.btn_alram').click(function() {
    if ($('.pop_alram').is(':visible')) {
      $('.pop_alram').css('display', 'none');
    } else {
      $('.pop_alram').css('display', 'block');
    }
  });
  $(document).mouseup(function(e) {
    var container = $('.pop_alram');
    if (container.has(e.target).length === 0) container.css('display', 'none');
  });
  // 알림 세부 탭
  $('.pop_alram .tab_menu_01').click(function(){
    $('.pop_alram .tab_menu li').removeClass('active');
    $(this).addClass('active');
    $('.pop_alram .tab_cont').css('display','none');
    $('.pop_alram .tab_cont_01').css('display','block');
  });
  $('.pop_alram .tab_menu_02').click(function(){
    $('.pop_alram .tab_menu li').removeClass('active');
    $(this).addClass('active');
    $('.pop_alram .tab_cont').css('display','none');
    $('.pop_alram .tab_cont_02').css('display','block');
  });
  $('.pop_alram .tab_menu_03').click(function(){
    $('.pop_alram .tab_menu li').removeClass('active');
    $(this).addClass('active');
    $('.pop_alram .tab_cont').css('display','none');
    $('.pop_alram .tab_cont_03').css('display','block');
  });

  // 제공 서비스 라디오 버튼
  $('.radio_game input[type=radio]').change(function() {
    if ($(this).is(":checked")) {
      $('.radio_game label').css({'border':'1px solid #e6e0e7','color':'#837883'});
      $(this).parents('label').css({'border':'2px solid #b4068d','color':'#5c3e6a'});
    } else {
      $(this).parents('label').css({'border':'1px solid #e6e0e7','color':'#837883'});
    }
  });
  // 제공 서비스 라디오 버튼
  $('.radio_game input[type=radio]').each(function() {
    if ($(this).is(":checked")) {
      $('.radio_game label').css({'border':'1px solid #e6e0e7','color':'#837883'});
      $(this).parents('label').css({'border':'2px solid #b4068d','color':'#5c3e6a'});
    } else {
      $(this).parents('label').css({'border':'1px solid #e6e0e7','color':'#837883'});
    }
  });

  // 가격 선택 라디오 버튼
  $('.label_price input[type=radio]').change(function() {
    if ($(this).is(":checked")) {
      $('.label_price').css({'border':'1px solid #e6e0e7','background':'#f7f5f8','color':'#837883'});
      $(this).parents('label').css({'border':'2px solid #b4068d','background':'#fff','color':'#5c3e6a'});
    } else {
      $(this).parents('label').css({'border':'1px solid #e6e0e7','background':'#f7f5f8','color':'#837883'});
    }
  });
  // 가격 선택 라디오 버튼
  $('.label_price input[type=radio]').each(function() {
    if ($(this).is(":checked")) {
      $('.label_price').css({'border':'1px solid #e6e0e7','background':'#f7f5f8','color':'#837883'});
      $(this).parents('label').css({'border':'2px solid #b4068d','background':'#fff','color':'#5c3e6a'});
    } else {
      $(this).parents('label').css({'border':'1px solid #e6e0e7','background':'#f7f5f8','color':'#837883'});
    }
  });
});
