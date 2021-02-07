package selfIntro.miniBoard.domain;

import org.springframework.stereotype.Component;

import lombok.Data;

/********
 * 
 * title : MiniBoardVO Date Created : 2021.02.01 Writer : cdcpp info : 미니보드 VO
 * 클래스
 * 
 ********/
@Component
@Data
public class MiniBoardVO {

	private String regId;   // 작성자 ID
	private String regDt;    // 작성시간 년월일시분초
	private String delYn;    // 글 삭제 여부
	private String content;  // 글 내용
	private String title;    // 글 제목
	private String seq;      // 글 번호
	
}


