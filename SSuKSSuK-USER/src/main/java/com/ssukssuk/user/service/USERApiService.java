package com.ssukssuk.user.service;

import com.ssukssuk.user.model.USERApiVO;
import com.ssukssuk.user.repository.USERApiRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class USERApiService {

    @Autowired
    USERApiRepository repository;

    public Map<String, String> TEST() {
        return repository.TEST();
    }
    public boolean INSERT(USERApiVO vo) {
        return repository.INSERT(vo) == 1;
    }

    public boolean loginCheck(String email, String password) {
        Map<String, Long> map = repository.loginCheck(email, password);
        return Integer.parseInt(String.valueOf(map.get("CNT_USER"))) == 1;
    }
}
