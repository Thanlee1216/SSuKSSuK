package com.ssukssuk.ui.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UIController {

    Logger logger = LoggerFactory.getLogger(getClass());

    @RequestMapping(value = {"/", "/index"}, method = {RequestMethod.GET, RequestMethod.POST})
    public String index() {
        logger.debug("request : index");
        return "index";
    }

    @RequestMapping(value = "/contact", method = {RequestMethod.GET, RequestMethod.POST})
    public String contact() {
        logger.debug("request : contact");
        return "contact";
    }

    @RequestMapping(value = "/projects", method = {RequestMethod.GET, RequestMethod.POST})
    public String projects() {
        logger.debug("request : projects");
        return "projects";
    }

    @RequestMapping(value = "/resume", method = {RequestMethod.GET, RequestMethod.POST})
    public String resume() {
        logger.debug("request : resume");
        return "resume";
    }

    @RequestMapping(value = "/login", method = {RequestMethod.GET, RequestMethod.POST})
    public String login() {
        logger.debug("request : login");
        return "login/login";
    }
}
