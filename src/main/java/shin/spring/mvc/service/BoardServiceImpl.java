package shin.spring.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import shin.spring.mvc.dao.BoardDAOImpl;
import shin.spring.mvc.vo.BoardVO;

import java.util.List;

@Service("bsrv")
public class BoardServiceImpl implements BoardService{

    @Autowired
    private BoardDAOImpl bdao;

    @Override // 새글쓰기
    public Boolean newBoard(BoardVO bvo) {
        boolean isOk = false;

        // 줄바꿈기호를 <br>로 변환작업 필요함 (아직 미구현)
        // 지금예제에서는 뷰단에서 변환작업을 수행하도록 작성함
//        bvo.setContents(bvo.getContents().replace("\n","<br>"));

        int cnt = bdao.insertBoard(bvo);
        if (cnt>0) isOk = true;

        return isOk;
    }

    @Override // 리스트보기
    public List<BoardVO> readBoard(String cp) {
        int snum = (Integer.parseInt(cp) -1) * 10;

       return bdao.selectBoard(snum);
    }

    @Override //본문 보기
    public BoardVO readOneBoard(String bno) {
        return bdao.selectOneBoard(bno);
    }

    @Override//수정하기
    public Boolean modifyBoard(BoardVO bvo) {
        boolean isOK = false;
        int cnt = bdao.updateBoard(bvo);
        if (cnt > 0 ) isOK = true;
        return isOK;
    }

    @Override //삭제하기
    public Boolean removeBoard(String bno) {
        boolean isOK = false;
        int cnt = bdao.deleteBoard(bno);
        if (cnt > 0 ) isOK = true;
        return isOK;
    }

    // 게시글 총 개수
    public int countBoard() {
        return bdao.selectCountBoard();
    }

    @Override // 조회수 증가
    public Boolean viewCountBoard(String bno) {
        Boolean isOK = false;
        int cnt = bdao.updateViewCount(bno);
        if (cnt>0) isOK = true;
        return isOK;
    }


}
