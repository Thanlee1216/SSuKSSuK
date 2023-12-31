package com.ssukssuk.bo.service;

import com.ssukssuk.bo.model.BOApiVO;
import com.ssukssuk.bo.repository.BOApiRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class BOApiService {

    @Autowired
    BOApiRepository boardrepository;

    public Map<String, Object> getBoardList() {
        return boardrepository.getBoardList();
    }
    public Map<String, Object> getBoardDetail() {
        return boardrepository.getBoardDetail();
    }
    public void boardWrite(BOApiVO vo) throws Exception {
        boardrepository.createBoardWrite(vo);
    }
    public void boardUpdate(BOApiVO vo) throws Exception {
        boardrepository.updeteBoardUpdate(vo);
    }
    public void boardDelete(BOApiVO vo) throws Exception {
        boardrepository.deleteBoardDelete(vo);
    }

}
