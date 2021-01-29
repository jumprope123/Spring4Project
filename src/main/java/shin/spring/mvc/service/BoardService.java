package shin.spring.mvc.service;

import shin.spring.mvc.vo.BoardVO;

import java.util.List;

public interface BoardService {
    Boolean newBoard(BoardVO bvo);
    List<BoardVO> readBoard(String cp);
    BoardVO readOneBoard(String bno);
    Boolean modifyBoard(BoardVO bvo);
    Boolean removeBoard(String bno);
    public int countBoard();

    Boolean viewCountBoard(String bno);
}
