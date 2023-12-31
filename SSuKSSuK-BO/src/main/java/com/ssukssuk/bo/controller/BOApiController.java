package com.ssukssuk.bo.controller;

import com.ssukssuk.bo.model.BOApiVO;
import com.ssukssuk.bo.service.BOApiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@RestController
@RequestMapping("/BOAPI/board")
public class BOApiController {

    @Autowired
    BOApiService boardservice;

    @RequestMapping(value = "/list", method = {RequestMethod.GET, RequestMethod.POST})
    public ResponseEntity<Map<String, Object>> boardList(HttpServletRequest request) {
        Map<String, Object> resultMap = boardservice.getBoardList();
        return new ResponseEntity<Map<String, Object>>(resultMap, HttpStatus.OK);
    }

    @RequestMapping(value = "/detail", method = {RequestMethod.GET, RequestMethod.POST})
    public ResponseEntity<Map<String, Object>> boardDetail(HttpServletRequest request) {
        Map<String, Object> resultDetail = boardservice.getBoardDetail();
        return new ResponseEntity<Map<String, Object>>(resultDetail, HttpStatus.OK);
    }

    @RequestMapping(value = "/write", method = {RequestMethod.GET, RequestMethod.POST})
    public ResponseEntity<String> boardWrite(@RequestBody BOApiVO vo) {
        try {
            boardservice.boardWrite(vo);
            return new ResponseEntity<>("게시글이 성공적으로 작성되었습니다.", HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>("게시글 작성에 실패했습니다. " + e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @RequestMapping(value = "/update", method = {RequestMethod.POST})
    public ResponseEntity<String> boardUpdate(@RequestBody BOApiVO vo) {
        try {
            boardservice.boardUpdate(vo);
            return new ResponseEntity<>("게시글이 성공적으로 수정되었습니다.", HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>("게시글 수정에 실패했습니다. " + e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @RequestMapping(value = "/delete", method = {RequestMethod.POST})
    public ResponseEntity<String> boardDelete(@RequestBody BOApiVO vo) {
        try {
            boardservice.boardDelete(vo);
            return new ResponseEntity<>("게시글이 성공적으로 삭제되었습니다.", HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>("게시글 삭제에 실패했습니다. " + e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
