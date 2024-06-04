package com.kata._5kyu;

public class PigLatin {
    public static String pigIt(String str) {
        String[] words = str.split(" ");
        StringBuilder result = new StringBuilder();

        for(String word : words){
            if (word.matches("[a-zA-Z]+")) {
                String pigWord = word.substring(1) + word.charAt(0) + "ay";
                result.append(pigWord).append(" ");
            } else {
                result.append(word).append(" ");
            }
        }
        return result.toString().trim();
    }
}