package selfIntro.miniBoard.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public Map<String, Object> getMiniBoardList(HttpServletRequest request) throws Exception {
		
		//return map
		Map<String, Object> map = new HashMap<String, Object>();
		
		
		List<MiniBoardVO> list = mapper.getMiniBoardList();
		
		map.put("list",list);
		
		
		return map;
	}
	
}
