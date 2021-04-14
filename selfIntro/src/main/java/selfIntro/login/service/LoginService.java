package selfIntro.login.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import selfIntro.login.domain.EmailVO;
import selfIntro.login.domain.LoginVO;

public interface LoginService {
	
	
	public String doLogin (LoginVO loginVO,HttpServletRequest request,ModelAndView mv,HttpServletResponse response) throws Exception; //미니보드 게시글 리스트 가져오기

	public int sendJoinEmail(EmailVO emailVO, HttpServletRequest request) throws Exception;
	
}
