package com.littlesteps.insight.utils;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class EncryptedPasswordUtils {
	 
    // Encryte Password with BCryptPasswordEncoder
    public static String encryptPassword(String password) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        return encoder.encode(password);
    }
 
    public static void main(String[] args) {
        String password = "guest123";
        String encrytedPassword = encryptPassword(password);
 
        System.out.println("Encryted Password: " + encrytedPassword);
    }
 
}
