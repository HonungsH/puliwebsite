package puli.xaidaz.helpers;

import lombok.experimental.Helper;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Helper
public class DateHelper {

    public static String dateTimeToString(LocalDateTime localDateTime){
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        return localDateTime.format(formatter);
    }
}