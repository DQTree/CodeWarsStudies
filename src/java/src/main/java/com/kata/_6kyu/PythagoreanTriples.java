package com.kata._6kyu;

import java.util.ArrayList;
import java.util.List;

public class PythagoreanTriples {
  public static List<int[]> generatePythagoreanTriples(int diff, int low, int high) {
    List<int[]> triples = new ArrayList<>();
    
    for (int a = 1; a < high; a++) {
      int b = a + diff;
      double c = Math.sqrt(a * a + b * b);
      
      if (c % 1 == 0 && low <= c && c <= high) {
        triples.add(new int[]{a, b, (int) c});
      }
    }
    
    return triples;
  }
}