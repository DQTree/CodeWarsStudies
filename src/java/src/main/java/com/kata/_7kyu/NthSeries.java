package com.kata._7kyu;

public class NthSeries {
    public static String seriesSum(int n) {
        if (n==0) return "0.00";
        double count = 1.0;
        for (int i = 0; i < n-1; i++) {
            count += 1.0/(4.0+i*3.0);
        }
        return String.format("%.2f", count).replace(",", ".");
    }
}