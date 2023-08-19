package com.ssukssuk.ws.service;

import com.ssukssuk.ws.repository.WSApiRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class WSApiService {

    @Autowired
    WSApiRepository repository;

    public Map<String, String> TEST() {
        return repository.TEST();
    }
}
