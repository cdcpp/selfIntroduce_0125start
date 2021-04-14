package selfIntro.login.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j;
import selfIntro.login.domain.EmailVO;
import selfIntro.login.domain.LoginVO;
import selfIntro.login.service.LoginService;

@Controller
@RequestMapping("/login")
@Log4j
public class LoginController {

	@Inject
	LoginService service;

	// 미니보드 페이지 이동 Controller
	@RequestMapping("/pageMiniBoard.do")
	public ModelAndView moveMiniboard(ModelAndView mv) throws Exception {

		mv.setViewName("miniBoard/pageMiniBoard");
		return mv;

	}

	// 로그인 아이디 비밀번호 Check
	@RequestMapping(value = "/doLogin.do", method = RequestMethod.POST)
	@ResponseBody
	public String doLogin(@ModelAttribute LoginVO loginVO, HttpServletRequest request, ModelAndView mv,
			HttpServletResponse response) throws Exception {

		String loginCheck = service.doLogin(loginVO, request, mv, response);

		return loginCheck;

	}

	// 회원가입 메일보내기
	@RequestMapping(value = "/sendJoinEmail.do", method = RequestMethod.POST)
	@ResponseBody
	public int sendJoinEmail(@RequestBody EmailVO emailVO , HttpServletRequest request) throws Exception {

		int sendEmail = service.sendJoinEmail(emailVO,request);
		
		return sendEmail;

	}

}
