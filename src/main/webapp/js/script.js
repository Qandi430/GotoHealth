/*main slide*/
$('#main_slide').owlCarousel({
    loop:true,
    margin:10,
    nav:false,
    autoplay: true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        },
        1000:{
            items:5
        }
    }
})
/* login */
    $('#username, #password').on('input', function() {
    if ($('#username').val() && $('#password').val()) {
        $('.login').addClass('buttonafter');
    } else {
        $('.login').removeClass('buttonafter');
    }
});

/*login submit*/
$("#login_btn").click(function(){
	var form = $("#loginForm");
	var id = form.find("#id");
	var pass = form.find("#pass");
	if(id==""){
		alert("ID를 입력해 주세요")
		id.focus();
	}else if(pass==""){
		alert("PASSWORD를 입력해주세요")
		pass.focus();
	}else{
		form.submit();	
	}
})

