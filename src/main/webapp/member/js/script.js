/**
 * 
 */
/*mypage tab */
  $('.messageList li').click(function(){
    var tg = $(this)
    if(tg.hasClass("recive")){
        $('.messageList li').removeClass("active")
        tg.addClass("active");
        $(".contentsWrap").removeClass("active")
        $(".reciveMessage").addClass("active")
    }else{
        $('.messageList li').removeClass("active")
        tg.addClass("active");
        $(".contentsWrap").removeClass("active")
        $(".sendMessage").addClass("active")
    }
})