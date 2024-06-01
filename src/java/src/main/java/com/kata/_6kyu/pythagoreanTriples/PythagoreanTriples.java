package com.kata._6kyu.pythagoreanTriples;

import java.util.ArrayList;
import java.util.List;

public class PythagoreanTriples {
  public static List<int[]> generatePythagoreanTriples(int diff, int low, int high) {
    List<int[]> triples = new ArrayList<>();

    for (int a = low; a < high; a++) {
      for (int b = a + 1; b < high; b++) {
        int c = b + diff;
        if (c <= high && isPythagoreanTriple(a, b, c)) {
          triples.add(new int[]{a, b, c});
        }
      }
    }

    triples.forEach(System.out::println);

    return triples;
  }

  private static boolean isPythagoreanTriple(int a, int b, int c){
    return c+b == Math.pow(a, 2)/(c-b);
  }
}