package com.ssukssuk.login.service;

import com.ssukssuk.login.repository.LOGINApiRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class LOGINApiService {

    @Autowired
    LOGINApiRepository repository;

    public Map<String, String> TEST() {
        return repository.TEST();
    }
}
