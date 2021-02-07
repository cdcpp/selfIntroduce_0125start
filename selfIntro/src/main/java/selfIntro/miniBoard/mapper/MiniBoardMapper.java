package selfIntro.miniBoard.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import selfIntro.miniBoard.domain.MiniBoardVO;

@Mapper
public interface MiniBoardMapper {
	
	public List<MiniBoardVO> getMiniBoardList() throws Exception; 
	
}
