<%@ page pageEncoding="UTF-8" %>
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
            <button type="button" class="btn btn-light" id="newbdbtn">
                <i class="bi bi-plus-circle-fill bidragup"></i> 새글쓰기</button>
        </div>

    </div><!-- 버튼틀 -->

    <div class="row margin1050">
        <table class="table">
            <tr><th colspan="2" class="tblines2 tbbg1 text-center"><h2>김민수찌릿찌릿전기숔!</h2></th><tr> <!--제목-->
            <tr class="tbbg2 font-weight-bold"><td>minsuKim</td><td class="text-right">2021.01.25 12:12:12 / 0 / 0</td><tr> <!--작성자,작성일,조회수-->
            <tr><th colspan="2" class="tbbg3 tblines2">감전은 신체가 회로의 한 부분이 되었을 때, 전류가 몸을 타고 흘러 신체에 상해를 입히는 현상이다.<br> 감전으로 신체에 흐르는 전류의 크기는 옴의 법칙에 따라, 회로와 연결된 신체의 양 말단 전위차(전기위치에너지 차이)와 신체가 가진 저항에 따라 결정된다.<br> 입을 수 있는 상해의 종류로는 화상, 근육 경련, <span class="text-danger font-weight-bold h5 font-italic">감전사</span> 등이 있다. <br>감전으로 인한 피해를 예방하기 위해서는, 건조한 고무나 가죽으로 된 장갑과 신발을 착용하고 전기 작업을 해야 한다.<br>
                그림 1은 고압전선에 앉아도 감전되지 않는 새들이다. <br>이 그림은 감전의 요소 중 전위차, 즉 전기위치에너지 차이에 대한 예시이다.<br> 새들이 고압전선에 앉아도 감전이 되지 않는 이유는 새들의 발이 전기가 통하지 않는 재질로 되어 있거나, 새 몸체의 저항이 매우 커서가 아닌, 전선 한 줄 내에서는 전기위치에너지 차이가 없기 때문이다.<br> 이때, 새가 전기위치에너지 차이가 있는 두 전선에 걸쳐 앉게 된다면 물론 새는 감전사할 것이다.<br>
                그림 2는 교류와 직류 전류를 시간에 대한 전압의 그래프로 나타낸 것이다.<br> 직류 전류는 한 방향으로 흐르는 데에 비해, 교류 전류는 일정한 주기로 방향이 바뀌며 흐르기 때문에, 감전으로 인한 상해는 교류 전류가 직류 전류보다 더 큰 피해를 준다.<br>
                그림 3은 신체에 50 mA 이상의 교류 전류가 흐르게 되면 발생할 수 있는, 심실의 각 부분이 불규칙적으로 수축하는 심실세동에 대한 그림이다.<br> 이처럼 신체에 허용전류 이상의 전류가 흐르게 되면, 근육의 주기적인 신경 흐름을 방해하여 심실세동, 부정맥, 호흡 정지, 더 나아가 사망에 이를 수도 있다.<br> 또한,
                신체에 화상을 입힐 수 있다.<br>조심하는게 좋을것이다 김민수.
            </th><tr> <!--본문-->
        </table>
    </div><!--본문글-->

    <div class="row margin1050">
        <div class="col-6">
            <button type="button" class="btn btn-primary" id="updbtn">
                <i class="bi bi-check-circle bidragup"></i> 수정하기</button>
            <button type="button" class="btn btn-danger" id="delbtn">
                <i class="bi bi-x-circle bidragup"></i> 삭제하기</button>
        </div>
        <div class="col-6 text-right">
            <button type="button" class="btn btn-light" id="listbtn">
                <i class="bi bi-list bidragup"></i> 목록으로</button>
        </div>
    </div><!--버튼들-->

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