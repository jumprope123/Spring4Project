package shin.spring.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import shin.spring.mvc.dao.BoardReplyDAO;
import shin.spring.mvc.vo.ReplyVO;

import java.util.List;

@Service("brsrv")
public class BoardReplyServiceImpl implements BoardReplyService{

    @Autowired
    private BoardReplyDAO brdao;

    @Override // 댓글,대댓글 가져오기
    public List<ReplyVO> readReply(String bno) {
        return brdao.selectReply(Integer.parseInt(bno));
    }

    @Override // 댓글 쓰기
    public Boolean newReply(ReplyVO rvo) {
        Boolean isOK = false;
        int cnt = brdao.insertReply(rvo);
        if (cnt > 0) {
            isOK = true;
        }
        return isOK;
    }

    @Override // 대댓글 쓰기
    public Boolean newReReply(ReplyVO rvo) {
        Boolean isOK = false;
        int cnt = brdao.insertReReply(rvo);
        if (cnt > 0) {
            isOK = true;
        }
        return isOK;
    }
}
