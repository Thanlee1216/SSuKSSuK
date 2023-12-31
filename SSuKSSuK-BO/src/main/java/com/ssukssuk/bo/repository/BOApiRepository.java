package com.ssukssuk.bo.repository;

import com.ssukssuk.bo.model.BOApiVO;
import org.springframework.stereotype.Repository;

import java.util.Map;

@Repository
public interface BOApiRepository {

     Map<String, Object>getBoardList();

     Map<String, Object>getBoardDetail();

    void createBoardWrite(BOApiVO vo) throws Exception;

    void updeteBoardUpdate(BOApiVO vo) throws Exception;

    void deleteBoardDelete(BOApiVO vo) throws Exception;
}
