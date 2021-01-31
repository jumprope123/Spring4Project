package shin.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import shin.spring.mvc.service.MemberService;
import shin.spring.mvc.util.GoogleCaptchaUtil;
import shin.spring.mvc.vo.MemberVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class joinController {

//    @Autowired
//    private MemberService msrv;
//    @Autowired
//    private GoogleCaptchaUtil gcutil;

    private MemberService msrv;
    private GoogleCaptchaUtil gcutil;

    @Autowired
    public joinController(MemberService msrv, GoogleCaptchaUtil gcutil) {
        this.msrv = msrv;
        this.gcutil = gcutil;
    }

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

    // 회원가입시 입력한 정보는 MemberVO 객체 저장됨
    // 하지만, 클라이언트에서 회원정보와 상관없는 데이터를 보낸 경우
    // HttpServletRequest 객체를 이용해서 처리함(추천!)
    // 물론, MemberVO 객체에 같이 정의해서 사용해도 됨

    // Model/ModelAttribute/ModelAndView
    // 뷰에 사용자 데이터를 보내고 싶을 때 사용하는 객체들
    // 단, 데이터는 request 객체에 1회성으로 저장됨

    // RedirectAttributes
    // 리다이렉트 된 뷰에 사용자 데이터를 보내고 싶을 때 사용하는 객체
    // 단, data는 session 객체에 1회성으로 저장됨

    @PostMapping("/join/joinme") // 회원가입처리
    public String joinmeok(MemberVO mvo, HttpServletRequest req, RedirectAttributes rds) throws UnsupportedEncodingException {

        // 질의 문자열에 한글을 포함시키려면 반드시 URLEncoder를 이용해서 한글에 대한 적절한 인코딩이 필요
        String param = "?name=" + URLEncoder.encode(mvo.getName(),"UTF-8");
        param += "&jumin1=" + mvo.getJumin().split("-")[0];
        param += "&jumin2=" + mvo.getJumin().split("-")[1];
        String returnPage = "redirect:/join/joinme" + param;

        // 클라이언트에서 생성한 captcha 코드를 가져옴
        String gCaptcha = req.getParameter("g-recaptcha");


        // captcha 코드의 유효성을 확인함
        // 결과가 true  => 테이블에 회원정보 저장, /join/joinok 이동
        // 결과가 false => /join/joinme 이동
        if (gcutil.checkCaptcha(gCaptcha)){
            msrv.newMember(mvo);
            returnPage = "redirect:/join/joinok";
            //현재시간 구하기
            SimpleDateFormat format2 = new SimpleDateFormat ( "yyyy년 MM월dd일 HH시mm분ss초");
            Date time = new Date();
            String time2 = format2.format(time);
            //현재시간 보내기
            mvo.setRegdate(time2);
            rds.addFlashAttribute("mvo",mvo);
        }else {
            rds.addFlashAttribute("checkCaptcha","자동가입방지 확인이 실패했어요");
            //mvo 보내기
            rds.addFlashAttribute("mvo",mvo);
        }

        return returnPage;
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
