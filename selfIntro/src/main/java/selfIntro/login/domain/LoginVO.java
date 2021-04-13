package selfIntro.login.domain;

import org.springframework.stereotype.Component;

import lombok.Data;

/********
 * 
 * title : LoginVO Date Created : 2021.04.02 Writer : cdcpp info : 로그인 VO
 * 클래스
 * 
 ********/
@Component
@Data
public class LoginVO {

	private String  memberId;    // 멤버 ID
	private String  memberPwd;   // 멤버 PWD
	private String  checkSaveId; // 아이디저장유무(쿠키)    
	
}


