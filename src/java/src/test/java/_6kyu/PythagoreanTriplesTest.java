package _6kyu;

import java.util.List;

import static org.junit.Assert.assertArrayEquals;
import org.junit.Test;

import com.kata._6kyu.PythagoreanTriples;


public class PythagoreanTriplesTest {
  @Test
  public void exampleTests() {
      assertArrayEquals(
          List.of(new int[]{3, 4, 5}, new int[]{5, 12, 13}, new int[]{7, 24, 25}, new int[]{9, 40, 41}).toArray(),
          PythagoreanTriples.generatePythagoreanTriples(1, 2, 10).toArray());
      
      assertArrayEquals(
          List.of(new int[]{10, 24, 26}, new int[]{12, 35, 37}, new int[]{14, 48, 50}, new int[]{16, 63, 65}, new int[]{18, 80, 82}, new int[]{20, 99, 101}, new int[]{22, 120, 122}, new int[]{24, 143, 145}).toArray(),
          PythagoreanTriples.generatePythagoreanTriples(2, 10, 25).toArray());
      
       assertArrayEquals(
          List.of(new int[]{15, 36, 39}, new int[]{21, 72, 75}).toArray(),
          PythagoreanTriples.generatePythagoreanTriples(3, 10, 25).toArray());
      
      assertArrayEquals(
          List.of(new int[]{105, 608, 617}, new int[]{111, 680, 689}, new int[]{117, 756, 765}).toArray(),
          PythagoreanTriples.generatePythagoreanTriples(9, 100, 120).toArray());
      
      assertArrayEquals(
          List.of(new int[]{330, 5440, 5450}, new int[]{340, 5775, 5785}).toArray(),
          PythagoreanTriples.generatePythagoreanTriples(10, 321, 345).toArray());
      
      assertArrayEquals(
          List.of().toArray(),
          PythagoreanTriples.generatePythagoreanTriples(100, 901, 919).toArray());
      
      assertArrayEquals(
          List.of(new int[]{7035, 9380, 11725}).toArray(),
          PythagoreanTriples.generatePythagoreanTriples(2345, 678, 9876).toArray());
  }

  @Test
  public void edgeCases() {
      assertArrayEquals(
          List.of().toArray(),
          PythagoreanTriples.generatePythagoreanTriples(11, 347, 347).toArray());
          // low = high, no result
    
      assertArrayEquals(
          List.of(new int[]{124, 957, 965}).toArray(),
          PythagoreanTriples.generatePythagoreanTriples(8, 124, 124).toArray());
          // low = high, one result
    
      assertArrayEquals(
          List.of().toArray(),
          PythagoreanTriples.generatePythagoreanTriples(564, 456, 1654).toArray());
          // low < diff, no result 
    
      assertArrayEquals(
          List.of(new int[]{213, 284, 355}).toArray(),
          PythagoreanTriples.generatePythagoreanTriples(71, 10, 222).toArray());
          // low < high, one result
    
      assertArrayEquals(
          List.of(new int[]{45, 60, 75}, new int[]{75, 180, 195}, new int[]{105, 360, 375}).toArray(),
          PythagoreanTriples.generatePythagoreanTriples(15, 1, 123).toArray());
          // low < diff, many results
    
      assertArrayEquals(
          List.of().toArray(),
          PythagoreanTriples.generatePythagoreanTriples(332, 1, 312).toArray());
          // both low < diff and z < diff, no result 
    
  }
}