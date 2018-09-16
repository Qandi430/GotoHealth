/**
 * 
 */
$(".stWrap").each(function(){
	var wrap = $(this)
    var btn = wrap.find(".stNav li")
    var con = wrap.find(".stCon > div")

    btn.click(function(e){
        var target = $(this).data("target");
        var tg = wrap.find($("."+target))
        console.log(target)
        btn.removeClass("active")
        $(this).addClass("active")
        con.removeClass("active")
       tg.addClass("active")

        e.preventDefault();
    })
})
$(".stCon .imgBox >a").click(function(){
	var tg = $(this)
	var img = tg.children("img").attr("src");

	$("#trPic").find("img").attr("src",img)
})