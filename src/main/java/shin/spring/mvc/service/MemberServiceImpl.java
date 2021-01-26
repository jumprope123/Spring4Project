package shin.spring.mvc.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import shin.spring.mvc.dao.MemberDAO;
import shin.spring.mvc.vo.MemberVO;

@Service("msrv")
public class MemberServiceImpl implements MemberService{

    @Autowired
    private MemberDAO mdao;

    @Override
    public String newMember(MemberVO mvo) {
        String result = "회원가입 실패";
        int cnt = mdao.insertMember(mvo);
        if (cnt > 0) {
            result = "회원가입 성공";
        }
        return result;
    }

    @Override // 동 이름으로 우편번호 검색
    public String findZipcode(String dong) {
        //조회결과를 출력하는 방법1 : csv방식 (쉼표로 구분)
        //서울, 강남구, 논현동, 123번지

        //조회결과를 출력하는 방법2 : xml방식
                //<zip><sido>서울</sido><gugun>강남구</gugun><dong>논현동</dong><bunji>123번지</bunzi></zip>

        //조회결과를 출력하는 방법3 : json방식 (추천)
               //{'sido':'서울', 'gugun':'강남구', 'dong':'논현동', 'bunji':'123번지'}

        //StringBuilder sb = new StringBuilder();
        //sb.append("{'sido':".append("'서울',"))
        //sb.append("'gugun':".append("'강남구',"))
        //sb.append("'dong':".append("'논현동',"))
        //sb.append("'bunji':".append("'123bunji',"))
        //sb.append("}")
        //코드로 json 형태로 결과물을 만들려면 상당히 복잡함
        // ObjectMapper 라이브러리를 이용하면
        //손쉽게 JSON 유형의 데이터를 생성할 수 있음
        ObjectMapper mapper = new ObjectMapper();
        String json = "";

        dong = dong + "%";
        try {
            json = mapper.writeValueAsString(mdao.selectZipcode(dong));
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        // 검색한 주소 데이터를 json형식으로 변환
        return json;

    }

    @Override
    public String checkUserid(String uid) {
        String isOk = "0";
        int cnt = mdao.selectOneUserid(uid);
        if (cnt > 0){
            isOk = "1";
        }
        return isOk;

    }
}


// 아이디 중복 체크
