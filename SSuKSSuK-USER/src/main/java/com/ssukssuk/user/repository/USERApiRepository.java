package com.ssukssuk.user.repository;

import com.ssukssuk.user.model.USERApiVO;
import org.springframework.stereotype.Repository;

import java.util.Map;

@Repository
public interface USERApiRepository {

    Map<String, String> TEST();
    
    int INSERT(USERApiVO vo);

    Map<String, Long> loginCheck(String email, String password);
}
