package com.bigfish.blog.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5util {
    public static String code (String str){
        try{
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] byteDigest =messageDigest.digest();
            int i;
            StringBuffer buf = new StringBuffer("");
            for (int offset = 0;offset <byteDigest.length; offset++){
                i = byteDigest[offset];
                if (i < 0)
                    i += 256;
                if (i < 16)
                    buf.append("0");
                buf.append(Integer.toHexString(i));

            }
            return buf.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static  void main(String[] args){
        System.out.println(code("123456"));
    }
}
