package selfIntro.login.domain;

import org.springframework.stereotype.Component;

import lombok.Data;

/********
 * 
 * title : EmailVO Date Created : 2021.04.14 Writer : cdcpp info : 로그인 VO
 * 클래스
 * 
 ********/
@Component
@Data
public class EmailVO {

	private String  joinEmail;    // 멤버 ID
	private String  joinPassword;   // 멤버 PWD
	
	
}


