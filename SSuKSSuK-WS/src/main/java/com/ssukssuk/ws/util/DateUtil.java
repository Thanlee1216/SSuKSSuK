package com.ssukssuk.ws.util;

import org.springframework.stereotype.Component;

import java.util.Calendar;

@Component
public class DateUtil {

    /**
     * 현재 년월일 반환
     * @return String (ex: 20050411)
     */
    public String getYYYYMMDD() {

        Calendar today = Calendar.getInstance();
        int year = today.get(Calendar.YEAR);
        int mon = today.get(Calendar.MONTH) + 1;
        int day = today.get(Calendar.DAY_OF_MONTH);

        String str = "";

        str += year;

        if (mon < 10)
            str += "0";
        str += mon;

        if (day < 10)
            str += "0";
        str += day;

        return str;
    }

    /**
     * 현재 시분 반환
     * @return String (ex: 0910)
     */
    public String getHH() {

        Calendar today = Calendar.getInstance();
        int hour = today.get(Calendar.HOUR_OF_DAY);

        String str = "";

        if (hour < 10)
            str += "0";
        str += hour;

        return str;
    }
}
