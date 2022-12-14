MORESE_DICT = {
  'a' => '.-',
  'b' => '-...',
  'c' => '-.-.',
  'd' => '-..',
  'e' => '.',
  'f' => '..-.',
  'g' => '--.',
  'h' => '....',
  'i' => '..',
  'j' => '.---',
  'k' => '-.-',
  'l' => '.-..',
  'm' => '--',
  'n' => '-.',
  'o' => '---',
  'p' => '.--.',
  'q' => '--.-',
  'r' => '.-.',
  's' => '...',
  't' => '-',
  'u' => '..-',
  'v' => '...-',
  'w' => '.--',
  'x' => '-..-',
  'y' => '-.--',
  'z' => '--..',
  ' ' => ' ',
  '1' => '.----',
  '2' => '..---',
  '3' => '...--',
  '4' => '....-',
  '5' => '.....',
  '6' => '-....',
  '7' => '--...',
  '8' => '---..',
  '9' => '----.',
  '0' => '-----'
}.freeze

#   decode_letter returns only one letter
def decode_letter(morse_code)
  MORESE_DICT.key(morse_code).upcase
end

# decode_word return only a word
def decode_word(morse_code)
  morse_code.split.map { |char| decode_letter(char) }.join
end

#   decode_sen returns words
def decode_sen(morse_code)
  mor_arr = morse_code
    .split('   ')
    .reject do |char|
    char == ''
  end
  mor_arr.map do |word|
    decode_word(word)
  end
    .join(' ')
end

# prints result of morse code
def print_morse(morse_code)
  p decode_sen(morse_code)
end

# prints 'A BOX FULL OF RUBIES'
print_morse('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
