package _6kyu;

import com.kata._6kyu.BouncingBall;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class BouncingBallTest {
    @Test
    public void test1() {
        assertEquals(3, BouncingBall.bouncingBall(3.0, 0.66, 1.5));
    }
    @Test
    public void test2() {
        assertEquals(15, BouncingBall.bouncingBall(30.0, 0.66, 1.5));
    }
    @Test
    public void test3() {
        assertEquals(24743, BouncingBall.bouncingBall(9999999999999999999999999999999999999.0, 0.99, 0.00000000000000001));
    }
}