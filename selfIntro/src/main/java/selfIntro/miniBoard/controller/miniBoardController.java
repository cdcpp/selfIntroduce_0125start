package selfIntro.miniBoard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/miniboard")
@Log4j
public class miniBoardController {

	// 미니보드 페이지 이동 Controller
	@RequestMapping("/pageMiniBoard.do")
	public ModelAndView moveMiniboard(ModelAndView mv) {
	
		mv.setViewName("miniBoard/pageMiniBoard");
		return mv;

	}
	
	
}
