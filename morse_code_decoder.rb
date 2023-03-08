def decode_char(encoded_char)
  morse_characters = { 'ALFA' => '.-', 'BRAVO' => '-...', 'CHARLIE' => '-.-.', 'DELTA' => '-..', 'ECHO' => '.',
                       'FOXTROT' => '..-.',
                       'GOLF' => '--.',
                       'HOTEL' => '....',
                       'INDIA' => '..',
                       'JULIET' => '.---',
                       'kILO' => '-.-',
                       'LIMA' => '.-..',
                       'MIKE' => '--',
                       'NOVEMBER' => '-.',
                       'OSCAR' => '---',
                       'PAPA' => '.--.',
                       'QUEBEC' => '--.-',
                       'ROMEO' => '.-.',
                       'SIERRA' => '...',
                       'TANGO' => '-',
                       'UNIFORM' => '..-',
                       'VICTOR' => '...-',
                       'WHISKEY' => '.--',
                       'X-RAY' => '-..-',
                       'YANKEE' => '-.--',
                       'ZULU' => '--..' }
  morse_characters.each do |key, value|
    return key[0] if encoded_char == value
  end
end

def decode_word(encoded_word)
  characters = encoded_word.split
  decoded_word = ''
  characters.each do |char|
    decoded_word += decode_char(char)
  end
  decoded_word
end
