package shin.spring.mvc.service;

import shin.spring.mvc.vo.ReplyVO;

import java.util.List;

public interface BoardReplyService {
    List<ReplyVO> readReply(String bno);

    Boolean newReply(ReplyVO rvo);
}
