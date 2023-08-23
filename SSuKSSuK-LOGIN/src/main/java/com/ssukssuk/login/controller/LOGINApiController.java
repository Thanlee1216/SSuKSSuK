package com.ssukssuk.login.controller;

import com.ssukssuk.login.service.LOGINApiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/LOGINAPI/*")
public class LOGINApiController {

    @Autowired
    LOGINApiService service;

    @RequestMapping(value = "/Health", method = {RequestMethod.GET, RequestMethod.POST})
    public ResponseEntity<Map<String, String>> login(HttpServletRequest request) {
        Map<String, String> resultMap = service.TEST();
        return new ResponseEntity<Map<String, String>>(service.TEST(), HttpStatus.OK);
    }

    @RequestMapping(value = "/loginAct", method = {RequestMethod.GET, RequestMethod.POST})
    public ResponseEntity<Map<String, String>> login(HttpServletRequest request, @RequestBody Map<String,String> param) {
        Map<String, String> resultMap = new HashMap<>();
        String email = param.get("email");
        String password = param.get("password");

        if("admin".equals(email) && "1234".equals(password)) {
            resultMap.put("result", "ture");
        }else {
            resultMap.put("result", "false");
        }

        return new ResponseEntity<>(resultMap, HttpStatus.OK);
    }
}
