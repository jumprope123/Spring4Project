package shin.spring.mvc.service;

import org.springframework.web.multipart.MultipartFile;
import shin.spring.mvc.vo.PdsVO;

import java.util.List;
import java.util.Map;

public interface PdsService {

    Boolean newPds(Map<String, String> frmdata, PdsVO pvo);

    Boolean newPds(PdsVO pvo, MultipartFile[] file);

    List<PdsVO> readPds(String cp);

    int countPds();

    PdsVO readOnePds(String pno);

    PdsVO readOneFname(String pno, String order);

    Boolean downCountPds(String pno, String order);
}
