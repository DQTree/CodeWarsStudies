use num_traits::{pow, Num};

fn square_digits(num: u64) -> u64 {
    let mut result = 0;
    let mut n = num;

    while n > 0 {
        let digit = n % 10; //  Last digit
        let squared_digit = digit * digit;  //  Squared
        let num_digits = (squared_digit as f64).log(10.0).floor() as usize + 1; //  Number of digits in squared
        result = result * pow(10, num_digits) + squared_digit;  //  Concatenate squared
        n /= 10;
    }

    result
}

#[cfg(test)]
mod tests {
    use super::square_digits;

    #[test]
    fn test_square_digits() {
        assert_eq!(square_digits(9119), 811181, "\nFailed with num 9119");
    }
}