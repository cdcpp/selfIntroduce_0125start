package selfIntro.login.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import selfIntro.login.domain.LoginVO;

@Mapper
public interface LoginMapper {
	
	public List<LoginVO> getMiniBoardList() throws Exception; 
	
	public String loginCheck(LoginVO loginVo) throws Exception;
	
	
}
