package selfIntro.miniBoard.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import selfIntro.miniBoard.domain.MiniBoardVO;

public interface MiniBoardService {
	
	
	public List<MiniBoardVO> getMiniBoardList(HttpServletRequest request) throws Exception; //미니보드 게시글 리스트 가져오기
	
}
