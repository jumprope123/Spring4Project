<%@ page pageEncoding="UTF-8" %>
<div id="main">
    <div class="margin30">
        <h3><img src="/resources/img/glyphicons_043_group.png" style="position: relative; top: -5px">회원가입</h3>
        <hr>
    </div>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><button type="button" class="btn btn-success btn-sm disabled">이용약관</button><i class="bi bi-chevron-right"></i></li>
            <li class="breadcrumb-item"><button type="button" class="btn btn-success btn-sm disabled">실명확인</button><i class="bi bi-chevron-right"></i></li>
            <li class="breadcrumb-item"><button type="button" class="btn btn-success btn-sm disabled active">정보입력</button><i class="bi bi-chevron-right"></i></li>
            <li class="breadcrumb-item"><button type="button" class="btn btn-light btn-sm disabled">가입완료</button></li>
        </ol>
    </nav>

    <div class="margin100">
        <h2 class="font-weight-bold">회원정보 입력</h2>
        <p><small class="text-muted">회원정보는 개인정보 취급방침에 따라 안전하게 보호되며, 회원님의 명백한 동의없이 공개 또는 제3자에게 제공되지 않습니다.</small></p>
        <hr>
    </div> <!-- 제목 -->
    <div class="bg-light card card-body margin1050">
        <div><h3 class="font-weight-bold margin30">일반회원</h3></div>
        <form name="joinfrm">
            <div class="row">
                <div class="col-11 offset-1">
                    <div class="form-group row">
                        <label for="name" class="col-form-label col-sm-2 text-right text-danger">이 름</label>
                        <input type="text" class="form-control border-danger col-sm-2" id="name" readonly>
                    </div><!--이름-->
                    <div class="form-group row">
                        <label for="jumin1" class="col-form-label col-sm-2 text-right text-danger">주민등록번호</label>
                        <input type="text" class="form-control col-sm-2 border-danger" id="jumin1" name="jumin1" readonly>
                        <label class="col-form-label border-danger">&nbsp;&ndash;&nbsp;</label>
                        <input type="text" class="form-control col-sm-2 border-danger" id="jumin2" name="jumin2" readonly>
                    </div><!--주민번호-->
                    <div class="form-group row">
                        <label for="newuid" class="col-form-label col-sm-2 text-right text-danger">아이디</label>
                        <input type="text" class="form-control col-sm-4 border-danger" name="userid" id="newuid" required>
                        <span class="text-danger col-sm-6 ">&nbsp;&nbsp;6~16 자의 영문 소문자, 숫자와 특수기호(_)만 사용할 수 있습니다.</span>
                    </div>
                    <div class="form-group row">
                        <label for="newpwd" class="col-form-label col-sm-2 text-right text-danger">비밀번호</label>
                        <input type="password" class="form-control col-sm-4 border-danger" id="newpwd" name="passwd" required>
                        <span class="text-danger col-sm-6 ">6~16 자의 영문 대소문자, 숫자 및 특수문자를 사용할 수 있습니다.</span>
                    </div>
                    <div class="form-group row">
                        <label for="repwd" class="col-form-label col-sm-2 text-right text-danger">비밀번호 확인</label>
                        <input type="password" class="form-control col-sm-4 border-danger" id="repwd" name="repwd" required>
                        <span class="text-danger col-sm-6 ">이전 항목에서 입력했던 비밀번호를 한번 더 입력하세요.</span>
                    </div><!--비밀번호 확인-->
                    <div class="form-group row">
                        <label for="zip1" class="col-form-label col-sm-2 text-right text-danger">우편번호</label>
                        <input type="text" class="form-control col-sm-1 border-danger" id="zip1" name="zip1" readonly>
                        <label class="col-form-label">&nbsp;-&nbsp;</label>
                        <input type="text" class="form-control col-sm-1 border-danger" id="zip2" name="zip2" readonly>
                        <span>&nbsp;&nbsp;</span>
                        <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#zipcode"><i class="bi bi-exclamation-circle-fill"></i> 우편번호 찾기</button>
                    </div><!--우편번호-->
                    <div class="form-group row">
                        <label for="addr1" class="col-form-label col-sm-2 text-right text-danger">주소</label>
                        <input type="text" class="form-control col-sm-3 border-danger" id="addr1" name="addr1" readonly>
                        <span>&nbsp;</span>
                        <input type="text" class="form-control col-sm-3 border-danger" id="addr2" name="addr2" required>
                    </div><!--주소-->
                    <div class="form-group row">
                        <label for="email1" class="col-form-label col-2 text-right text-danger">전자우편 주소</label>
                        <input type="email" class="form-control col-sm-3 border-danger igborder" id="email1" name="email1" required>
                        <div class="input-group-append">
                            <span class="input-group-text igborder">@</span>
                        </div>
                        <input type="text" class="form-control col-sm-2 border-danger igborder" id="email2" name="email2" readonly>
                        <span>&nbsp;</span>
                        <select id="email3" class="form-control col-sm-2 border-danger">
                            <option selected>선택하세요</option>
                            <option>naver.com</option>
                            <option>gmail.com</option>
                            <option>daum.net</option>
                            <option>hotmail.com</option>
                            <option>직접 입력하기</option>
                        </select>
                    </div><!--이메일-->
                    <div class="form-group row">
                        <label for="hp1" class="col-form-label col-2 text-right text-danger">개인연락처</label>
                        <select id="hp1" name="hp1" class="form-control border-danger" style="width: 90px;">
                            <option selected>국번</option>
                            <option>02</option>
                            <option>051</option>
                            <option>010</option>
                            <option>011</option>
                        </select>
                        <span>&nbsp;&mdash;&nbsp;</span>
                        <input class="form-control col-sm-1 border-danger" id="hp2" name="hp2">
                        <span>&nbsp;&mdash;&nbsp;</span>
                        <input class="form-control col-sm-1 border-danger" id="hp3" name="hp3">
                    </div><!--전화번호-->
                    <div class="form-group row">
                        <label class="col-form-label col-2 text-right text-danger">자동 가입방지</label>
                        <img src="/resources/img/google_recaptcha.gif" width="45%" height="45%" style="margin-left: -5px;">
                    </div><!--자동가입방지-->
                    <hr>
                </div>
            </div>
            <div class="row margin30">
                <div class="col-12 text-center">
                    <button type="button" id="joinbtn" class="btn btn-primary"><i class="bi bi-check"></i>입력완료</button>
                    <button type="button" id="cancelbtn" class="btn btn-danger"><i class="bi bi-x"></i>취소하기</button>
                </div><!--버튼들-->
            </div>
        </form>
    </div> <!-- 정보입력 -->

</div><!--main-->