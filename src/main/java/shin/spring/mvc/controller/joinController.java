package shin.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import shin.spring.mvc.service.MemberService;
import shin.spring.mvc.vo.MemberVO;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class joinController {

    @Autowired
    private MemberService msrv;

    @GetMapping("/join/agree")
    public String agree(){
        return "join/agree.tiles";
    }

    @GetMapping("/join/checkme")
    public String checkme(){
        return "join/checkme.tiles";
    }

    @GetMapping("/join/joinme") // 회원가입 폼
    public String joinme(){
        return "join/joinme.tiles";
    }

    @PostMapping("/join/joinme") // 회원가입처리
    public String joinmeok(MemberVO mvo){
        System.out.println(mvo.getName());
        System.out.println(msrv.newMember(mvo));
        return "redirect:/join/joinok";
    }

    @GetMapping("/join/joinok")
    public String joinok(){
        return "join/joinok.tiles";
    }

    //우편번호 검색
    // join/zipcode?dong=동이름
    // 검색된 결과를 뷰페이지 없이 바로 응답으로 출력 : REST방식
    // 서블릿에서 제공하는 HttpServletResponse객체를 이용하면
    // 스프링의 뷰리졸버 없이 응답을 출력할 수 있음
    // 결과는 자바스크립트 ajax로 적절히 가공해서 폼에 출력
    @ResponseBody //뷰페이지없이 바로 응답으로 처리하기
    @GetMapping("/join/zipcode")
    public void zipcode(String dong, HttpServletResponse res){ //HttpServletResponse는 servlet의 힘을 빌려서 화면에 출력해주는데 사용.
        try {
            //응답결과의 유형은 json 으로 설정
            res.setContentType("application/json; charset=UTF-8"); // jsp파일의 맨 위에 작성하는 <%@ page contexttype ...~~ 부분을 코드로 쓴 것>
            //응답 결과를 브라우저로 보냄
            res.getWriter().print(msrv.findZipcode(dong));
        }catch (Exception ex){
            ex.printStackTrace();
        }
    }


    //아이디 중복체크
    // /join/checkuid?uid=아이디
    // 사용가능한 아이디면 0, 사용불가능(중복)일 경우 1
    @ResponseBody
    @GetMapping("/join/checkuid")
    public void checkuid(String uid, HttpServletResponse res){
        try {
            res.getWriter().print(msrv.checkUserid(uid));
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}
