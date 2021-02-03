package shin.spring.mvc.service;

import shin.spring.mvc.vo.PdsVO;

import java.util.List;
import java.util.Map;

public interface PdsService {

    Boolean newPds(Map<String, String> frmdata, PdsVO pvo);

    List<PdsVO> readPds(String cp);

    int countPds();

    PdsVO readOnePds(String pno);
}
