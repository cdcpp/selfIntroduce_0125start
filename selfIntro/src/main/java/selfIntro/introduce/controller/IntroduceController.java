package selfIntro.introduce.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j;
import selfIntro.miniBoard.domain.MiniBoardVO;
import selfIntro.miniBoard.service.MiniBoardService;

@Controller
@RequestMapping("/introduce")
@Log4j
public class IntroduceController {

	
	
	// 미니보드 페이지 이동 Controller
	@RequestMapping("/pageIntroduce.do")
	public ModelAndView moveMiniboard(ModelAndView mv) throws Exception {
		
		System.out.println("~~~");
		
		mv.setViewName("/introduce/pageIntroduce");
		return mv;

	}
	
	
	
}
