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
            <tr>
                <td><h4>Mr.shin</h4></td>
                <td>
                    <div class="cmtbg1">2021-01-30 15:15:15</div>
                    <p>감전은 신체가 회로의 한 부분이 되었을 때, 전류가 몸을 타고 흘러 신체에 상해를 입히는 현상이다.<br> 감전으로 신체에 흐르는 전류의 크기는 옴의 법칙에 따라, 회로와 연결된 신체의 양 말단 전위차(전기위치에너지 차이)와 신체가 가진 저항에 따라 결정된다.<br> 입을 수 있는 상해의 종류로는 화상, 근육 경련, <span class="text-danger font-weight-bold h5 font-italic">감전사</span> 등이 있다. <br>감전으로 인한 피해를 예방하기 위해서는, 건조한 고무나 가죽으로 된 장갑과 신발을 착용하고 전기 작업을 해야 한다.<br>
                        그림 1은 고압전선에 앉아도 감전되지 않는 새들이다. <br>이 그림은 감전의 요소 중 전위차, 즉 전기위치에너지 차이에 대한 예시이다.</p><!--댓글-->
                    <ul class="list-unstyled">
                        <li>
                            <div class="cmtbg2"><span class="h4">minsuKim</span>
                                <span class="pushright">2021-01-30 16:16:16</span></div>
                            <p>조심하는게 좋을것이다 김민수.</p>
                        </li>
                    </ul><!--댓글의 댓글-->
                </td>
            </tr>
            <tr>
                <td><h4>Mr.shin</h4></td>
                <td>
                    <div class="cmtbg1">2021-01-30 15:15:15</div>
                    <p>감전은 신체가 회로의 한 부분이 되었을 때, 전류가 몸을 타고 흘러 신체에 상해를 입히는 현상이다.<br> 감전으로 신체에 흐르는 전류의 크기는 옴의 법칙에 따라, 회로와 연결된 신체의 양 말단 전위차(전기위치에너지 차이)와 신체가 가진 저항에 따라 결정된다.<br> 입을 수 있는 상해의 종류로는 화상, 근육 경련, <span class="text-danger font-weight-bold h5 font-italic">감전사</span> 등이 있다. <br>감전으로 인한 피해를 예방하기 위해서는, 건조한 고무나 가죽으로 된 장갑과 신발을 착용하고 전기 작업을 해야 한다.<br>
                        그림 1은 고압전선에 앉아도 감전되지 않는 새들이다. <br>이 그림은 감전의 요소 중 전위차, 즉 전기위치에너지 차이에 대한 예시이다.</p><!--댓글-->
                </td>
            </tr>
            <tr>
                <td><h4>Mr.shin</h4></td>
                <td>
                    <div class="cmtbg1">2021-01-30 15:15:15</div>
                    <p>감전은 신체가 회로의 한 부분이 되었을 때, 전류가 몸을 타고 흘러 신체에 상해를 입히는 현상이다.<br> 감전으로 신체에 흐르는 전류의 크기는 옴의 법칙에 따라, 회로와 연결된 신체의 양 말단 전위차(전기위치에너지 차이)와 신체가 가진 저항에 따라 결정된다.<br> 입을 수 있는 상해의 종류로는 화상, 근육 경련, <span class="text-danger font-weight-bold h5 font-italic">감전사</span> 등이 있다. <br>감전으로 인한 피해를 예방하기 위해서는, 건조한 고무나 가죽으로 된 장갑과 신발을 착용하고 전기 작업을 해야 한다.<br>
                        그림 1은 고압전선에 앉아도 감전되지 않는 새들이다. <br>이 그림은 감전의 요소 중 전위차, 즉 전기위치에너지 차이에 대한 예시이다.</p><!--댓글-->
                </td>
            </tr>
            <tr>
                <td><h4>Mr.shin</h4></td>
                <td>
                    <div class="cmtbg1">2021-01-30 15:15:15</div>
                    <p>감전은 신체가 회로의 한 부분이 되었을 때, 전류가 몸을 타고 흘러 신체에 상해를 입히는 현상이다.<br> 감전으로 신체에 흐르는 전류의 크기는 옴의 법칙에 따라, 회로와 연결된 신체의 양 말단 전위차(전기위치에너지 차이)와 신체가 가진 저항에 따라 결정된다.<br> 입을 수 있는 상해의 종류로는 화상, 근육 경련, <span class="text-danger font-weight-bold h5 font-italic">감전사</span> 등이 있다. <br>감전으로 인한 피해를 예방하기 위해서는, 건조한 고무나 가죽으로 된 장갑과 신발을 착용하고 전기 작업을 해야 한다.<br>
                        그림 1은 고압전선에 앉아도 감전되지 않는 새들이다. <br>이 그림은 감전의 요소 중 전위차, 즉 전기위치에너지 차이에 대한 예시이다.</p><!--댓글-->
                </td>
            </tr>
            <tr>
                <td><h4>Mr.shin</h4></td>
                <td>
                    <div class="cmtbg1">2021-01-30 15:15:15</div>
                    <p>감전은 신체가 회로의 한 부분이 되었을 때, 전류가 몸을 타고 흘러 신체에 상해를 입히는 현상이다.<br> 감전으로 신체에 흐르는 전류의 크기는 옴의 법칙에 따라, 회로와 연결된 신체의 양 말단 전위차(전기위치에너지 차이)와 신체가 가진 저항에 따라 결정된다.<br> 입을 수 있는 상해의 종류로는 화상, 근육 경련, <span class="text-danger font-weight-bold h5 font-italic">감전사</span> 등이 있다. <br>감전으로 인한 피해를 예방하기 위해서는, 건조한 고무나 가죽으로 된 장갑과 신발을 착용하고 전기 작업을 해야 한다.<br>
                        그림 1은 고압전선에 앉아도 감전되지 않는 새들이다. <br>이 그림은 감전의 요소 중 전위차, 즉 전기위치에너지 차이에 대한 예시이다.</p><!--댓글-->
                </td>
            </tr>
            <tr>
                <td><h4>Mr.shin</h4></td>
                <td>
                    <div class="cmtbg1">2021-01-30 15:15:15</div>
                    <p>감전은 신체가 회로의 한 부분이 되었을 때, 전류가 몸을 타고 흘러 신체에 상해를 입히는 현상이다.<br> 감전으로 신체에 흐르는 전류의 크기는 옴의 법칙에 따라, 회로와 연결된 신체의 양 말단 전위차(전기위치에너지 차이)와 신체가 가진 저항에 따라 결정된다.<br> 입을 수 있는 상해의 종류로는 화상, 근육 경련, <span class="text-danger font-weight-bold h5 font-italic">감전사</span> 등이 있다. <br>감전으로 인한 피해를 예방하기 위해서는, 건조한 고무나 가죽으로 된 장갑과 신발을 착용하고 전기 작업을 해야 한다.<br>
                        그림 1은 고압전선에 앉아도 감전되지 않는 새들이다. <br>이 그림은 감전의 요소 중 전위차, 즉 전기위치에너지 차이에 대한 예시이다.</p><!--댓글-->
                </td>
            </tr>
        </table>
    </div><!--댓글목록-->

    <div class="row margin1050">
        <form id="replyfrm" class="card card-body bg-light">
            <div class="form-group row justify-content-center">
                <label class="pushtop50 text-primary font-weight-bold">로그인하세요</label>&nbsp;
                <textarea id="comment" rows="5" class="form-control col-7" style="resize: none"></textarea>&nbsp;&nbsp;
                <span><button id="bdcmtbtn" class="btn-dark pushtop50"><i class="bi bi-chat-text-fill bidragup"></i>댓글쓰기</button></span>
            </div>
        </form>
    </div><!--댓글폼-->
</div>