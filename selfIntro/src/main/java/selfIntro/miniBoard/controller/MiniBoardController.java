package selfIntro.miniBoard.controller;

import java.util.List;

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
@RequestMapping("/miniboard")
@Log4j
public class MiniBoardController {

	@Inject
	MiniBoardService service;
	
	
	// 미니보드 페이지 이동 Controller
	@RequestMapping("/pageMiniBoard.do")
	public ModelAndView moveMiniboard(ModelAndView mv) throws Exception {
	
		mv.setViewName("miniBoard/pageMiniBoard");
		return mv;

	}
	
	// 미니보드 게시글 리스트 가져오기 
		@RequestMapping("/getMiniBoardList.do")
		@ResponseBody
		public List<MiniBoardVO> getMiniBoardList(HttpServletRequest request) throws Exception {
			
			List<MiniBoardVO> list = service.getMiniBoardList(request);
			System.out.println(list);
			
			return list;
			
		}
	
	// 미니보드 글쓰기 페이지 이동 Controller
		@RequestMapping("/insertMiniBoard.do")
		public ModelAndView moveInsertMiniboard(ModelAndView mv) throws Exception {
		
			mv.setViewName("miniBoard/insertMiniBoard");
			return mv;

		}
	
	
}
