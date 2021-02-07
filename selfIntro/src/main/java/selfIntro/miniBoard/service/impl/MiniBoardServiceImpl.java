package selfIntro.miniBoard.service.impl;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import selfIntro.miniBoard.domain.MiniBoardVO;
import selfIntro.miniBoard.mapper.MiniBoardMapper;
import selfIntro.miniBoard.service.MiniBoardService;


@Service
public class MiniBoardServiceImpl implements MiniBoardService {

	@Inject
	MiniBoardMapper mapper;
	
	@Override
	public List<MiniBoardVO> getMiniBoardList(HttpServletRequest request) throws Exception {
		
		
		List<MiniBoardVO> list = mapper.getMiniBoardList();
		
		return list;
	}
	
}
