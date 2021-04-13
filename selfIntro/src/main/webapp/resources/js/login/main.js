(function($) {

	"use strict";


})(jQuery);



function doLogin() {
	
	if (grecaptcha.getResponse() == ""){
	    alert("리캡챠를 체크해야 합니다.");
	    return false;
	} else {
	    
	}


	
	
    var memberId    = $('#memberId' ).val();
    var memberPwd   = $('#memberPwd').val();
    var checkSaveId = "";
    
    if($("input:checkbox[id='checkSaveId']").is(":checked")){

    	checkSaveId = "save";
    }
    
    
    $.ajax({
        type : "POST",
        url   :'/login/doLogin.do',
        data: {
            memberId    : memberId,
            memberPwd   : memberPwd,
            checkSaveId : checkSaveId
        	
        },
        success: function(data) {
            if(data == "false"){
                alert('잘못된 아이디이거나, 비밀번호가 틀렸습니다.');
            }
            else{
            	
            	alert(data+"님 로그인을 환영합니다");
                location.href="http://localhost:8080/miniboard/pageMiniBoard.do";
            }
        }
    }) ;
}

