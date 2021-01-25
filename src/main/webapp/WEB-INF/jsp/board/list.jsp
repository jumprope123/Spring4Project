<%@ page pageEncoding="UTF-8" %>
<div id="main">
    <div class="margin30">
        <h3><i class="bi bi-chat-dots-fill bidragup"></i>&nbsp;게시판</h3>
        <hr>
    </div>

    <div class="row margin1050">
        <div class="col-12 text-right">
            <a href="/board/write"><button type="button" id="newbd" class="btn btn-info"><i class="bi bi-plus-circle bidragup"></i>&nbsp;새글쓰기</button></a>
        </div>
    </div>
    <div class="row margin1050">
        <div class="col-12">
            <table class="table table-striped tblines text-center table-hover">
                <thead style="background: #dff0d8">
                <tr>
                    <th style="width: 7%">번호</th>
                    <th>제목</th>
                    <th style="width: 12%">작성자</th>
                    <th style="width: 10%">작성일</th>
                    <th style="width: 7%">추천</th>
                    <th style="width: 7%">조회</th>
                </tr>
                </thead>
                <tbody>
                <tr class="text-danger">
                    <th>공지</th>
                    <th><span class="badge badge-danger">Hot</span> 삼성을 사시오! 십성가즈아!!! 삼멘! 이재용짱짱맨!</th>
                    <th>Mr.shin</th>
                    <th>2021.01.15</th>
                    <th>999</th>
                    <th>999</th>
                </tr>
                <tr>
                    <td>1</td><td><a href="/board/view?bno=1" class="colblack">김민수찌릿찌릿전기숔!&nbsp;<span class="badge badge-success">New</span></a></td><td>minsuKim</td><td>2021.01.13</td><td>0</td><td>0</td>
                </tr>
                <tr>
                    <td>2</td><td>전기는 역시 한국전력!</td><td>minsuKim</td><td>2021.01.13</td><td>0</td><td>0</td>
                </tr>
                <tr>
                    <td>3</td><td>당산동 워렌버핏 굳길</td><td>minsuKim</td><td>2021.01.13</td><td>0</td><td>0</td>
                </tr>
                <tr>
                    <td>4</td><td>현현이는 현현해!</td><td>minsuKim</td><td>2021.01.13</td><td>0</td><td>0</td>
                </tr>
                <tr>
                    <td>5</td><td>빡빡이라고 외치면서 10바퀴 돌아!</td><td>minsuKim</td><td>2021.01.13</td><td>0</td><td>0</td>
                </tr>
                <tr>
                    <td>6</td><td>땡빈이 땡떙!</td><td>minsuKim</td><td>2021.01.13</td><td>0</td><td>0</td>
                </tr>
                <tr>
                    <td>7</td><td>민수는 못말려!</td><td>minsuKim</td><td>2021.01.13</td><td>0</td><td>0</td>
                </tr>
                <tr>
                    <td>8</td><td>삼성다음은 현대차를 사자!</td><td>minsuKim</td><td>2021.01.13</td><td>0</td><td>0</td>
                </tr>
                <tr>
                    <td>9</td><td>사고사고 또 사자 가즈아!</td><td>minsuKim</td><td>2021.01.13</td><td>0</td><td>0</td>
                </tr>
                <tr>
                    <td>10</td><td>네이버 카카오 동반떡상 예정!</td><td>minsuKim</td><td>2021.01.13</td><td>0</td><td>0</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <ul class="pagination justify-content-center">
                <li class="page-item disabled"><a href="#" class="page-link">이전</a></li>
                <li class="page-item active"><a href="#" class="page-link">1</a></li>
                <li class="page-item"><a href="#" class="page-link">2</a></li>
                <li class="page-item"><a href="#" class="page-link">3</a></li>
                <li class="page-item"><a href="#" class="page-link">4</a></li>
                <li class="page-item"><a href="#" class="page-link">5</a></li>
                <li class="page-item"><a href="#" class="page-link">6</a></li>
                <li class="page-item"><a href="#" class="page-link">7</a></li>
                <li class="page-item"><a href="#" class="page-link">8</a></li>
                <li class="page-item"><a href="#" class="page-link">9</a></li>
                <li class="page-item"><a href="#" class="page-link">10</a></li>
                <li class="page-item"><a href="#" class="page-link">다음</a></li>
            </ul>
        </div>
    </div><!--페이지네이션-->


</div>