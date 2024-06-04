package _7kyu;

import static org.junit.Assert.assertEquals;

import com.kata._7kyu.NthSeries;
import org.junit.Test;

public class NthSeriesTest {
    @Test
    public void test1() {
        assertEquals("1.57", NthSeries.seriesSum(5));
    }
    @Test
    public void test2() {
        assertEquals("1.77", NthSeries.seriesSum(9));
    }
    @Test
    public void test3() {
        assertEquals("1.94", NthSeries.seriesSum(15));
    }
    @Test
    public void test4() {
        assertEquals("2.30", NthSeries.seriesSum(43));
    }
}