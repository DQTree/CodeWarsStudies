def decodeMorse(morseCode)
    words = morseCode.strip.split("   ")
    translatedPhrase = ""
    words.each_with_index do |word, index|
        translatedPhrase += decodeWord(word)
        if index != words.length - 1
            translatedPhrase += " " 
        end
    end
    return translatedPhrase
end

def decodeWord(word)
    letters = word.split(" ")
    translatedWord = ""
    letters.each_with_index do |letter, index|
        translatedWord += MORSE_CODE[letter]
    end
    return translatedWord
end

MORSE_CODE = {
    ".-"=>"A", 
    "-..."=>"B", 
    "-.-."=>"C", 
    "-.."=>"D", 
    "."=>"E", 
    "..-."=>"F", 
    "--."=>"G", 
    "...."=>"H", 
    ".."=>"I", 
    ".---"=>"J", 
    "-.-"=>"K", 
    ".-.."=>"L", 
    "--"=>"M", 
    "-."=>"N", 
    "---"=>"O", 
    ".--."=>"P", 
    "--.-"=>"Q", 
    ".-."=>"R", 
    "..."=>"S", 
    "-"=>"T", 
    "..-"=>"U", 
    "...-"=>"V", 
    ".--"=>"W", 
    "-..-"=>"X", 
    "-.--"=>"Y", 
    "--.."=>"Z", 
    "-----"=>"0", 
    ".----"=>"1", 
    "..---"=>"2", 
    "...--"=>"3", 
    "....-"=>"4", 
    "....."=>"5", 
    "-...."=>"6", 
    "--..."=>"7", 
    "---.."=>"8", 
    "----."=>"9", 
    ".-.-.-"=>".", 
    "--..--"=>",", 
    "..--.."=>"?", 
    ".----."=>"'", 
    "-.-.--"=>"!", 
    "-..-."=>"/", 
    "-.--."=>"(", 
    "-.--.-"=>")", 
    ".-..."=>"&", 
    "---..."=>"=>", 
    "-.-.-."=>";", 
    "-...-"=>"=", 
    ".-.-."=>"+", 
    "-....-"=>"-", 
    "..--.-"=>"_", 
    ".-..-."=>"\"", 
    "...-..-"=>"$", 
    ".--.-."=>"@", 
    "...---..."=>"SOS"
}