package Utility;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;


public class Method {
    public static Timestamp getTimeNow() {
        Date nowDate = new Date();
        Timestamp now = new Timestamp(nowDate.getTime());
        return now;
    }

    public static Timestamp addMonth(int month) {
        
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.MONTH, month);
        java.util.Date dt = cal.getTime();
        Timestamp timestamp = new Timestamp(dt.getTime());
        return timestamp;
    }

    

    public static String getTimeAgo(Timestamp t_now, Timestamp t_lastOnline) {
        long durationInMillis = Math.abs(t_now.getTime() - t_lastOnline.getTime());
        int second = (int) (durationInMillis / 1000);
        int minute = second / 60;
        int hour = minute / 60;
        int day = hour / 24;
        int week = day / 7;
        int month = week / 4;
        int year = month / 12;
        if (year >= 1) {
            return String.format("%d year ago", year);
        } else if (month >= 1) {
            return String.format("%d month ago", month);
        } else if (week >= 1) {
            return String.format("%d week ago", week);
        } else if (day >= 1) {
            return String.format("%d day ago", day % 7);
        } else if (hour >= 1) {
            return String.format("%d hour ago", hour % 24);
        } else if (minute >= 1) {
            return String.format("%d minute ago", minute % 60);
        } else {
            return String.format("%d second ago", second % 60);
        }
    }
}
