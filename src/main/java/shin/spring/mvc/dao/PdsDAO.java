package shin.spring.mvc.dao;

import shin.spring.mvc.vo.PdsVO;

import java.util.List;
import java.util.Map;

public interface PdsDAO {
    int insertPds(PdsVO pvo);

    List<PdsVO> selectPds(int snum);

    int selectCountPds();

    PdsVO selectOnePds(String pno);

    PdsVO selectOneFname(String pno, String order);

    int updateDownCount(Map<String,String>param);
}
