package com.ssukssuk.bo.service;

import com.ssukssuk.bo.repository.BOApiRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class BOApiService {

    @Autowired
    BOApiRepository repository;

    public Map<String, String> TEST() {
        return repository.TEST();
    }
}
