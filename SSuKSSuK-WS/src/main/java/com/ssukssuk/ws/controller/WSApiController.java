package com.ssukssuk.ws.controller;

import com.ssukssuk.ws.service.WSApiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@RestController
@RequestMapping("/WSAPI/*")
public class WSApiController {

    @Autowired
    WSApiService service;

    @RequestMapping(value = "/Health", method = {RequestMethod.GET, RequestMethod.POST})
    public ResponseEntity<Map<String, String>> health(HttpServletRequest request) {
        Map<String, String> resultMap = service.TEST();
        return new ResponseEntity<Map<String, String>>(service.TEST(), HttpStatus.OK);
    }

    @RequestMapping(value = "/getWeather", method = {RequestMethod.GET, RequestMethod.POST})
    public ResponseEntity<Map<String, String>> getWeather(HttpServletRequest request) throws Exception {
        service.getWeather();
        return new ResponseEntity<Map<String, String>>(service.TEST(), HttpStatus.OK);
    }
}
