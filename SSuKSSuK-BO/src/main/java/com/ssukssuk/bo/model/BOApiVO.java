package com.ssukssuk.bo.model;

import lombok.Data;

@Data
public class BOApiVO {

    /* 게시판 번호 */
    private Long boardNo;
    /* 유저 ID */
    private String userId;
    /* 게시판 제목 */
    private String boardTitle;
    /* 게시판 내용 */
    private String boardContent;

}
