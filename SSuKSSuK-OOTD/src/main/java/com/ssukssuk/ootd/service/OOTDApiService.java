package com.ssukssuk.ootd.service;

import com.ssukssuk.ootd.repository.OOTDApiRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class OOTDApiService {

    @Autowired
    OOTDApiRepository repository;

    public Map<String, String> TEST() {
        return repository.TEST();
    }
}
