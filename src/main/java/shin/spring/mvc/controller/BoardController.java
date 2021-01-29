package shin.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import shin.spring.mvc.service.BoardReplyService;
import shin.spring.mvc.service.BoardService;
import shin.spring.mvc.util.GoogleCaptchaUtil;
import shin.spring.mvc.vo.BoardVO;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class BoardController {

    private BoardService bsrv;
    private GoogleCaptchaUtil gcutil;
    private BoardReplyService brsrv;

    @Autowired
    public BoardController(BoardService bsrv, GoogleCaptchaUtil gcutil) {
        this.bsrv = bsrv;
        this.gcutil = gcutil;
//        this.brsrv = brsrv;
    }

    //게시판 목록처리 1: 페이징
    // ex) 총 게시글수 counts: 101
    // 페이지당 출력 게시글 수 perpages :10
    // 총 페이지 수 11개 pages
    // pages = counts / perpages

    // 게시물의 번호 범위 : 101~1
    // 구현코드 : select ??? from Board limit startnum, perpages
    // 1page에 출력할 게시물의 범위 0 ~ 9
    // 2page에 출력할 게시물의 범위 10 ~ 19
    // => 특정페이지page 에 속하는 게시물의 시작범위startnum 산출식
    // startnum = (pages - 1) * 10


    //게시판 목록처리 2: 검색
    @GetMapping("/board/list") // 게시판 목록 출력
    public ModelAndView list(ModelAndView mv, String cp){
        // header.jsp에 ?cp=1을 추가했으므로 이제 필요없어짐
//        if (cp == null) cp = "1";

        mv.setViewName("board/list.tiles");
        mv.addObject("bds",bsrv.readBoard(cp));
        mv.addObject("bdcnt",bsrv.countBoard());

        return mv;
    }

    @GetMapping("/board/view") // 게시판 본문글 출력
    public ModelAndView view(String bno, ModelAndView mv){
        mv.setViewName("board/view.tiles");

        bsrv.viewCountBoard(bno); // 조회수 증가
        mv.addObject("bd", bsrv.readOneBoard(bno));
        return mv;
    }

    @GetMapping("/board/write") // 새글쓰기 폼
    public String write(HttpSession sess){
        String returnPage = "redirect:/index";

        // 로그인 했으면 새글쓰기 폼을 보여줌
        if (sess.getAttribute("UID") != null)
            returnPage = "board/write.tiles";

        return returnPage;
    }

    @PostMapping("board/write")
    public String writeok(BoardVO bvo,HttpSession sess){
        String returnPage = "redirect:/board/write"; //실패시 보여줄 페이지

        //로그인한 사용자라면 새글쓰기 허용
        if (sess.getAttribute("UID")!=null && bsrv.newBoard(bvo)){
            returnPage = "redirect:/board/list?cp=1";
        }

        return returnPage;
    }

    @GetMapping("/board/update") //수정하기 폼
    public ModelAndView update(String bno , ModelAndView mv, HttpSession sess){

        if (sess.getAttribute("UID") != null && bno != null) {
            mv.setViewName("board/update.tiles");
            mv.addObject("bd", bsrv.readOneBoard(bno));
        } else {
            mv.setViewName("redirect:/index");
        }
        return mv;
    }

    @PostMapping("/board/update") // 수정하기 완료
    public String updateok(BoardVO bvo, String cp, String userid, HttpSession sess){
        String param = "?bno="+bvo.getBno();
        param += "&cp=" + cp;
        String returnPage = "redirect:/board/update" + param;

        //로그인한 사용자이면서 수정하려는 글이 자신이 쓴 것이라면 && 수정이 성공한다면
        if (sess.getAttribute("UID").equals(userid) && bsrv.modifyBoard(bvo)) {
            returnPage = "redirect:/board/view" + param;
        }
        return returnPage;
    }

    @GetMapping("/board/delete")
    public String delete(String bno, String cp, HttpSession sess, String userid){
        // 추가적으로 작성해야 하는 코드 : 보안측면
        // 삭제하려면 로그인 필요
        // 또한, 자기가 삭제한 글만 삭제 가능

        if (sess.getAttribute("UID").equals(userid))
        bsrv.removeBoard(bno);

        return "redirect:/board/list?cp=" + cp;
    }

}