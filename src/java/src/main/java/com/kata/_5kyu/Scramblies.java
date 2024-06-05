package com.kata._5kyu;

public class Scramblies {
    public static boolean scramble(String str1, String str2) {
        StringBuilder str2Builder = new StringBuilder(str2);

        for (char ch : str1.toCharArray()) {
            int index = str2Builder.indexOf(String.valueOf(ch));
            if (index != -1) {
                str2Builder.deleteCharAt(index);
            }
        }

        return str2Builder.isEmpty();
    }
}