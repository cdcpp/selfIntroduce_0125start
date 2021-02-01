package selfIntro.main.mapper;

import org.apache.ibatis.annotations.Select;

public interface MainMapper {
	
	@Select("SELECT NOW()")
	public String getTime();
	
}
