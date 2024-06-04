package _5kyu;

import com.kata._5kyu.PigLatin;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class PigLatinTest {
    @Test
    public void FixedTests() {
        assertEquals("igPay atinlay siay oolcay", PigLatin.pigIt("Pig latin is cool"));
        assertEquals("hisTay siay ymay tringsay", PigLatin.pigIt("This is my string"));
    }
}
