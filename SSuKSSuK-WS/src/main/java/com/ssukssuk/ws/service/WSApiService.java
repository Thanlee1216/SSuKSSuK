package com.ssukssuk.ws.service;

import com.ssukssuk.ws.repository.WSApiRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

@Service
public class WSApiService {

    //기상청_단기예보 ((구)_동네예보) 조회서비스 일반 인증키(Encoding)
    private final String serviceKey = "fOANfV5Hn4EW/YXgyywbcfqvYRa7BRTSWj83CfTJJax4HMIq6TRYmh9lrsJAn7t3PN4jm2H83QktxGCnwr4vfw==";

    @Autowired
    WSApiRepository repository;

    public Map<String, String> TEST() {
        return repository.TEST();
    }

    public void getWeather() throws Exception {
        //RestTemplate으로 연결할 URL 생성(쿼리 스트링을 이용한 GET 방식)
        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getUltraSrtNcst"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=" + serviceKey); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*페이지번호*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("1000", "UTF-8")); /*한 페이지 결과 수*/
        urlBuilder.append("&" + URLEncoder.encode("dataType","UTF-8") + "=" + URLEncoder.encode("JSON", "UTF-8")); /*요청자료형식(XML/JSON) Default: XML*/
        urlBuilder.append("&" + URLEncoder.encode("base_date","UTF-8") + "=" + URLEncoder.encode("20230828", "UTF-8")); /*‘21년 6월 28일 발표*/
        urlBuilder.append("&" + URLEncoder.encode("base_time","UTF-8") + "=" + URLEncoder.encode("0600", "UTF-8")); /*06시 발표(정시단위) */
        urlBuilder.append("&" + URLEncoder.encode("nx","UTF-8") + "=" + URLEncoder.encode("55", "UTF-8")); /*예보지점의 X 좌표값*/
        urlBuilder.append("&" + URLEncoder.encode("ny","UTF-8") + "=" + URLEncoder.encode("127", "UTF-8")); /*예보지점의 Y 좌표값*/

        //POST 요청을 위한 param 세팅
//        Map<String, String> param = new HashMap<>();
//        param.put(URLEncoder.encode("serviceKey","UTF-8"), URLEncoder.encode("10", "UTF-8")); /*페이지번호*/
//        param.put(URLEncoder.encode("pageNo","UTF-8"),URLEncoder.encode("1000", "UTF-8")); /*한 페이지 결과 수*/
//        param.put(URLEncoder.encode("numOfRows","UTF-8"), URLEncoder.encode("JSON", "UTF-8")); /*요청자료형식(XML/JSON) Default: XML*/
//        param.put(URLEncoder.encode("dataType","UTF-8"), URLEncoder.encode("20230828", "UTF-8")); /*‘21년 6월 28일 발표*/
//        param.put(URLEncoder.encode("base_date","UTF-8"), URLEncoder.encode("0600", "UTF-8")); /*06시 발표(정시단위) */
//        param.put(URLEncoder.encode("base_time","UTF-8"), URLEncoder.encode("55", "UTF-8")); /*예보지점의 X 좌표값*/
//        param.put(URLEncoder.encode("nx","UTF-8"), URLEncoder.encode("127", "UTF-8")); /*예보지점의 Y 좌표값*/
//
//        HttpHeaders headers = new HttpHeaders();
//        String url  = "http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getUltraSrtNcst";
//        HttpEntity<Map<String, String>> requestEntity = new HttpEntity<>(param, headers);

        RestTemplate restTemplate = new RestTemplate();

        //POST 요청
//        ResponseEntity<Map> response = restTemplate.postForEntity(urlBuilder.toString(), requestEntity, Map.class);
        ResponseEntity<Map> response = restTemplate.getForEntity(urlBuilder.toString(), Map.class);
        Map<String,Object> body = response.getBody();
    }
}
