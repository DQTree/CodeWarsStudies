package com.kata._5kyu;

public class MeanSquareError {
    public static double meanSquare(int[] arr1, int[] arr2) {
        double squared = 0;
        int length = arr1.length;
        for (int idx = 0; idx < length; idx++) {
            int elem1 = arr1[idx];
            int elem2 = arr2[idx];
            squared += Math.pow(Math.abs(elem1 - elem2), 2);
        }
        return squared/length;
    }
  }