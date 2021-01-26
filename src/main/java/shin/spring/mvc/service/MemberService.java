package shin.spring.mvc.service;

import shin.spring.mvc.vo.MemberVO;

public interface MemberService {
    String newMember(MemberVO mvo);

    String findZipcode(String dong);

    String checkUserid(String userid);
}
