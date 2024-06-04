package com.kata._6kyu;

import java.util.ArrayList;
import java.util.List;

public class StringSplit {
    public static String[] solution(String s) {
        if (s.isBlank()) return new String[0];
        List<String> list = splitStringBySize(s, 2);
        if (list.get(list.size() - 1).length() == 1) {
            list.set(list.size() - 1, list.get(list.size() - 1) + "_");
        }
        return list.toArray(new String[0]);
    }

    private static List<String> splitStringBySize(String str, int size) {
        List<String> split = new ArrayList<>();
        for (int i = 0; i < str.length(); i += size) {
            split.add(str.substring(i, Math.min(i + size, str.length())));
        }
        return split;
    }
}