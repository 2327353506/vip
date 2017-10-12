package vip.util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class CookieUtil {

    public static  String get(HttpServletRequest request, String key){
        Cookie[] cookie = request.getCookies();
        for(int i = 0,len = cookie.length ;i < len;i++){
            if(cookie[i].getName().equals(key)){
                return cookie[i].getValue();
            }
        }
        return null;
    }

    public static  void set(){

    }


}
