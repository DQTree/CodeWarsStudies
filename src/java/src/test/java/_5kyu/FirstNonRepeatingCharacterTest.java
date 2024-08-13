package _5kyu;

import org.junit.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

import com.kata._5kyu.FirstNonRepeatingCharacter;

public class FirstNonRepeatingCharacterTest {
    @Test
    public void sampleTests() {
      assertEquals("a", FirstNonRepeatingCharacter.firstNonRepeatingLetter("a"), "For input \"a\"");
      assertEquals("t", FirstNonRepeatingCharacter.firstNonRepeatingLetter("streSS"), "For input \"streSS\"");
      assertEquals("-", FirstNonRepeatingCharacter.firstNonRepeatingLetter("moon-men"), "For input \"moon-men\"");
      assertEquals("", FirstNonRepeatingCharacter.firstNonRepeatingLetter("moonmoon"), "For input \"moonmoon\"");
    }
}
