// list
$('#newbd').on('click',function () {
    location.href = "/board/write";
})

// view
$('#listbdbtn').on('click', function () {
    // history.back(); // 비추
    // location.href = "/board/list?cp=1";  // 첫 페이지로
    location.href = "/board/list?cp=" + $('#cp').val();
})

$('#thumbbtn').on('click', function () {
    location.href = "board/"
})

$('#upbdbtn').on('click', function () {
    if (confirm('정말로 이 글을 수정하시겠습니까?')) {
        let param = "?bno=" + $('#bno').val();
        param += "&cp=" + $('#cp').val()
        param += "&userid=" + $('#userid').val();
        location.href = '/board/update' + param;
    }
})

$('#rmbdbtn').on('click', function () {
    if (confirm('정말로 이 글을 삭제하시겠습니까?')) {
        let param = '?bno=' + $('#bno').val();
        param += "&cp=" + $('#cp').val()
        param += "&userid=" + $('#userid').val();
        location.href = '/board/delete' + param;
    }
})


// write
$('#newbdbtn').on('click',function () {
    if ($('#title').val() == '') alert('제목을 작성하세요!');
    else if ($('#contents').val() == '') alert('본문을 작성하세요!');
    else {
        $('#newbdfrm').attr('method','post');
        $('#newbdfrm').attr('action','/board/write');
        $('#newbdfrm').submit();
    }
})

$('#upbdokbtn').on('click',function () {
    if ($('#title').val() == '') alert('제목을 작성하세요!');
    else if ($('#contents').val() == '') alert('본문을 작성하세요!');
    else { (confirm('정말로 수정 하시겠습니까?'))
        $('#upbdfrm').attr('method','post');
        $('#upbdfrm').attr('action','/board/update');
        $('#upbdfrm').submit();
    }
});

$('#ccupbdbtn').on('click',function () {
    history.back();
});