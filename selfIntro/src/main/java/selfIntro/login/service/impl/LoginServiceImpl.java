package selfIntro.login.service.impl;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.CookieGenerator;

import selfIntro.login.domain.LoginVO;
import selfIntro.login.mapper.LoginMapper;
import selfIntro.login.service.LoginService;


@Service
public class LoginServiceImpl implements LoginService {

	@Inject
	LoginMapper mapper;
	
	

	@Override
	public String doLogin(LoginVO loginVO, HttpServletRequest request,  ModelAndView mv,HttpServletResponse response) throws Exception {
		
		loginVO.setMemberId((String)request.getParameter("memberId"));
		loginVO.setMemberPwd((String)request.getParameter("memberPwd"));
		loginVO.setCheckSaveId((String)request.getParameter("checkSaveId"));
		
		
		String memberId = "";
		
		try {
			
			memberId = mapper.loginCheck(loginVO);
				
			if(memberId == null || memberId == "") {
				
				memberId = "false";
				
				
			}else {
				
				String checkSaveId = loginVO.getCheckSaveId();
				
				CookieGenerator cg = new CookieGenerator();

				cg.setCookieName("user_id");
				
				

				
				
				if(checkSaveId == null || checkSaveId == "") {
					
					cg.setCookieMaxAge(0);
					
				}else {
					
					
					cg.setCookieMaxAge(30 * 24 * 60 * 60); //한달
					
				}
				
				cg.addCookie(response, loginVO.getMemberId());				
	
			}// else end
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return memberId;
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
	
}
