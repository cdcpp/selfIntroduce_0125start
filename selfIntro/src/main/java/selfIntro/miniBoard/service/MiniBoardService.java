package selfIntro.miniBoard.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import selfIntro.miniBoard.domain.MiniBoardVO;

public interface MiniBoardService {
	
	
	public Map<String, Object> getMiniBoardList(HttpServletRequest request) throws Exception; //미니보드 게시글 리스트 가져오기
	
}
