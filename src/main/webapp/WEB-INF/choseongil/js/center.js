jQuery(document).ready(function() {
  // 이벤트 조회수, 최신순
  $('.list_align li').click(function(){
    $('.list_align li').find('img').attr('src','../images/arrow_bottom_select_off.png');
    $('.list_align li').removeClass('active');
    $(this).addClass('active');
    $(this).find('img').attr('src','../images/arrow_bottom_select_on.png');
  });

  // 공지사항
  $('.table_notice tr.title').click(function(){
    if($(this).next('tr.content').is(':visible')){
      $('.table_notice tr.content').css('display','none')
      $('.table_notice tr.title img').attr('src','../images/arrow_top_notice.png');
    }else{
      $('.table_notice tr.content').css('display','none')
      $('.table_notice tr.title img').attr('src','../images/arrow_top_notice.png');
      $(this).next('.table_notice tr.content').css('display','table-row')
      $(this).find('img').attr('src','../images/arrow_bottom_notice.png');
    }
  });

  // FAQ
  $('.table_faq tr.title').click(function(){
    if($(this).next('tr.content').is(':visible')){
      $('.table_faq tr.content').css('display','none')
    }else{
      $('.table_faq tr.content').css('display','none')
      $(this).next('.table_faq tr.content').css('display','table-row')
    }
  });

  // QNA 파일 첨부
  $('.table_qna input[type-file]').on('change',function(){
    if(window.FileReader){
  		var filename = $(this)[0].files[0].name;
  	} else {
  		var filename = $(this).val().split('/').pop().split('\\').pop();
  	}
  	$(this).siblings('label').text(filename);
  });
});


