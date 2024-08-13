package com.kata._5kyu;

import java.util.HashMap;

public class FirstNonRepeatingCharacter {
    public static String firstNonRepeatingLetter(String s){
        HashMap<Character, Integer> letterCount = new HashMap<>();
        
        // Normalize the case for comparison but store original case in map
        for (char c : s.toCharArray()) {
            char lowerC = Character.toLowerCase(c);
            letterCount.put(lowerC, letterCount.getOrDefault(lowerC, 0) + 1);
        }

        // Find the first character with a count of 1 and return it in original case
        for (char c : s.toCharArray()) {
            char lowerC = Character.toLowerCase(c);
            if (letterCount.get(lowerC) == 1) {
                return String.valueOf(c);
            }
        }

        return "";
    }
}
