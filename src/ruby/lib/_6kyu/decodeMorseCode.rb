def decode_morse(morse_code)
    words = morse_code.strip.split("   ")
    translated_phrase = ""
    words.each_with_index do |word, index|
        translated_phrase += decode_word(word)
        if index != words.length - 1
            translated_phrase += " "
        end
    end
    translated_phrase
end

def decode_word(word)
    letters = word.split(" ")
    translated_word = ""
    letters.each_with_index do |letter, index|
        translated_word += MORSE_CODE[letter]
    end
    translated_word
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