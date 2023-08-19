package com.ssukssuk.nc.controller;

import com.ssukssuk.nc.service.NCApiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@RestController
@RequestMapping("/NCAPI/*")
public class NCApiController {

    @Autowired
    NCApiService service;

    @RequestMapping(value = "/Health", method = {RequestMethod.GET, RequestMethod.POST})
    public ResponseEntity<Map<String, String>> login(HttpServletRequest request) {
        Map<String, String> resultMap = service.TEST();
        return new ResponseEntity<Map<String, String>>(service.TEST(), HttpStatus.OK);
    }
}
