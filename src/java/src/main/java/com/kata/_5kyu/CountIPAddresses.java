package com.kata._5kyu;

public class CountIPAddresses {

	public static long ipsBetween(String start, String end) {
        String[] startIP = start.split("\\.", 4);
        String[] endIP = end.split("\\.", 4);
        long ipCount = 0;

        long startValue = 0;
        long endValue = 0;

        for (int i = 0; i < 4; i++) {
            startValue = startValue * 256 + Integer.parseInt(startIP[i]);
            endValue = endValue * 256 + Integer.parseInt(endIP[i]);
        }

        ipCount = endValue - startValue;

        return ipCount;
	}
}