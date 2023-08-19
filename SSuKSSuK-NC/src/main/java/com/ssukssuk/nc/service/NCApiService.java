package com.ssukssuk.nc.service;

import com.ssukssuk.nc.repository.NCApiRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class NCApiService {

    @Autowired
    NCApiRepository repository;

    public Map<String, String> TEST() {
        return repository.TEST();
    }
}
