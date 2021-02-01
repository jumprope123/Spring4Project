<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%--줄바꿈 문자를 newChar 변수에 저장--%>
<%--<% String newChar = "블라불라"; %>--%>
<%--<c:set var="newChar" value="블라블라"/>--%>
<%--JSP 객체의 생존기간 --%>
<%--page : 현재 페이지 내에서만 객체 사용--%>
<%--request : 이전페이지에서 생성한 객체를 현재페이지에 요청을 통해 사용--%>
<%--session : 동일 브라우저내에서 공유할 수 있는 객체--%>
<%--application : 어플리케이션(프로젝트) 내에서 공유할 수 있는 객체--%>
<c:set var="newChar" value="
" scope="application"/> <%-- value값에 엔터를 넣음 --%>
<div id="main">
    <div class="margin30">
        <h3><i class="bi bi-chat-dots-fill" style="position: relative; top: -5px"></i>&nbsp;뷰</h3>
        <hr>
    </div>
    <div class="row margin1050">
        <div class="col-6">
            <button type="button" class="btn btn-light" id="prevbtn">
                <i class="bi bi-chevron-left bidragup"></i> 이전게시물</button>
            <button type="button" class="btn btn-light" id="nextbtn">
                다음게시물 <i class="bi bi-chevron-right bidragup"></i></button>
        </div>
        <div class="col-6 text-right">
            <c:if test="${not empty UID}">
                <button type="button" class="btn btn-light" id="newbd">
                    <i class="bi bi-plus-circle-fill bidragup"></i>새글쓰기</button>
            </c:if>
        </div>

    </div><!-- 버튼틀 -->

    <div class="row margin1050">
        <table class="table">
            <tr><th colspan="2" class="tblines2 tbbg1 text-center bg-light"><h2>${bd.title}</h2></th><tr> <!--제목-->
            <tr class="tbbg2 font-weight-bold"><td>${bd.userid}</td><td class="text-right">${bd.regdate} / ${bd.thumbs} / ${bd.views}</td><tr> <!--작성자,작성일,조회수-->
            <tr><th colspan="2" class="tbbg3 tblines2">${fn:replace(bd.contents,newChar,"<br>")}</th><tr> <!--본문-->
        </table>
    </div><!--본문글-->

    <div class="row margin1050">
        <div class="col-6">
                <%--로그인 했고 이 글이 내가 작성한 글이라면?--%>
            <c:if test="${not empty UID and UID eq bd.userid}">
                <button type="button" class="btn btn-primary" id="upbdbtn">
                    <i class="bi bi-check-circle bidragup"></i> 수정하기</button>
                <button type="button" class="btn btn-danger" id="rmbdbtn">
                    <i class="bi bi-x-circle bidragup"></i> 삭제하기</button>
            </c:if>
            </div>
        <div class="col-6 text-right">
            <c:if test="${not empty UID}">
                <button type="button" id="thumbbtn" class="btn btn-success">
                    <i class="bi bi-hand-thumbs-up bidragup"></i>추천하기
                </button>
            </c:if>
            <button type="button" class="btn btn-dark" id="listbdbtn">
                <i class="bi bi-list bidragup"></i> 목록으로</button>
        </div>
    </div><!--버튼들-->

    <input type="hidden" id="bno" value="${param.bno}">
    <input type="hidden" id="cp" value="${param.cp}">
    <input type="hidden" id="userid" value="${bd.userid}">

    <div class="row margin1050 mt-5">
        <h3><i class="bi bi-chat-square-dots-fill"></i>&nbsp;나도 한마디</h3>
        <table class="table tblines tbwide">

            <c:forEach var="r" items="${rp}">
                <c:if test="${r.rno eq r.cno}">
                    <tr>
                        <td><h4>${r.userid}</h4></td>
                        <td>
                            <div class="cmtbg1">${r.regdate}</div>
                            <p>${r.reply}</p><!--댓글-->
                        </td>
                    </tr>
                </c:if>
                <%--여기까지는 댓글--%>
                <c:if test="${r.rno ne r.cno}">
                    <tr>
                        <td></td>
                        <td>
                            <ul class="list-unstyled">
                                <li>
                                    <div class="cmtbg2"><span class="h4">${r.userid}</span>
                                        <span class="pushright">${r.regdate}</span></div>
                                    <p>${r.reply}</p>
                                </li>
                            </ul><!--댓글의 댓글-->
                        </td>
                    </tr>
                </c:if>
                <%--여기까지는 대댓글--%>
            </c:forEach>

        </table>
    </div><!--댓글목록-->

    <div class="row margin1050">
        <form id="replyfrm" class="card card-body bg-light">
            <div class="form-group row justify-content-center">
                <label class="pushtop50 text-primary font-weight-bold">로그인하세요</label>&nbsp;
                <textarea id="reply" name="reply" rows="5" class="form-control col-7" style="resize: none"></textarea>&nbsp;&nbsp;
                <span><button type="button" id="bdcmtbtn" class="btn-dark pushtop50"><i class="bi bi-chat-text-fill bidragup"></i>댓글쓰기</button></span>
            </div>
            <input type="hidden" name="bno" value="${param.bno}">
            <input type="hidden" name="userid" id="uid" value="${UID}">
        </form>
    </div><!--댓글폼-->
</div>