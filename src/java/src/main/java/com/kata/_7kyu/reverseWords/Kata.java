package com.kata._7kyu.reverseWords;

public class Kata {
    public static String reverseWords(final String original) {
        StringBuilder result = new StringBuilder();
        StringBuilder wordBuilder = new StringBuilder();
        boolean inWord = false;

        for (char c : original.toCharArray()) {
            if (!Character.isWhitespace(c)) {
                if (!inWord) {
                    inWord = true;
                    wordBuilder.setLength(0);
                }
                wordBuilder.append(c);
            } else {
                if (inWord) {
                    inWord = false;
                    result.append(reverseWord(wordBuilder.toString()));
                    result.append(c);
                } else {
                    result.append(c);
                }
            }
        }

        if (inWord) {
            result.append(reverseWord(wordBuilder.toString()));
        }

        return result.toString();
    }

    private static String reverseWord(String word) {
        return new StringBuilder(word).reverse().toString();
    }
}