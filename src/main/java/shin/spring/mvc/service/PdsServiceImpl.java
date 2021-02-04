package shin.spring.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import shin.spring.mvc.dao.PdsDAO;
import shin.spring.mvc.vo.PdsVO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("psrv")
public class PdsServiceImpl implements PdsService{

    @Autowired
    private PdsDAO pdao;

    @Override
    public Boolean newPds(Map<String, String> frmdata, PdsVO pvo) {
        procFormdata(pvo, frmdata);
        int cnt = pdao.insertPds(pvo);
        return true;
    }

    @Override
    public List<PdsVO> readPds(String cp) {
        int snum = (Integer.parseInt(cp) -1) * 10;
        return pdao.selectPds(snum);
    }

    @Override
    public int countPds() {
        return pdao.selectCountPds();
    }

    @Override
    public PdsVO readOnePds(String pno) {
        return pdao.selectOnePds(pno);
    }

    @Override
    public PdsVO readOneFname(String pno, String order) {
        return pdao.selectOneFname(pno,order);
    }

    @Override
    public Boolean downCountPds(String pno, String order) {
        Map<String, String> param = new HashMap<>();
        param.put("pno", pno);
        param.put("order","fdown" + order);
        int cnt = pdao.updateDownCount(param);
        return true;
    }

    // 폼 데이터를 PdsVO에 나눠담음
    // title : 제목
    // userid : 작성자
    // contents: 본문내용
    // file1size : 첨부파일 크기
    // file1type : 첨부파일 유형
    private void procFormdata(PdsVO p, Map<String, String> frmdata) {
        for(String key: frmdata.keySet()) { // Map으로부터 키를 하나씩 꺼냄
            String val = frmdata.get(key); //  키에 해당하는 값을 알아냄
            switch (key) {
                case "uuid" : p.setUuid(val); break;
                case "title" : p.setTitle(val); break;
                case "userid" : p.setUserid(val); break;
                case "contents" : p.setContents(val); break;
                case "file1" : p.setFname1(val); break;
                case "file1size" : p.setFsize1(val); break;
                case "file1type" : p.setFtype1(val); break;
                case "file2" : p.setFname2(val); break;
                case "file2size" : p.setFsize2(val); break;
                case "file2type" : p.setFtype2(val); break;
                case "file3" : p.setFname3(val); break;
                case "file3size" : p.setFsize3(val); break;
                case "file3type" : p.setFtype3(val); break;
            }
        }
    }



}


