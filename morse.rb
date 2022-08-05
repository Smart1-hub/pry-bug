MORSE_CODE = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z',
  ' ' => ' ',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0'
}.freeze

# Create a method to decode a Morse code character,
# takes a string parameter, and return the corresponding
# character in uppercase.

def decode_char(char)
  MORSE_CODE[char].capitalize
end

# Create a method to decode an entire word in Morse code, takes a string parameter,
# and return the string representation.
# Every character in a word will be separated by a single space.

def decode_word(text)
  array = text.split
  word_array = []
  array.each { |letter| word_array.push(decode_char(letter)) }
  word_array.join
end

# Create a method to decode the entire message in Morse code, takes a string parameter,
# and return the string representation. Every word will be separated by 3 spaces

def decode_sentence(sentence)
  myarray = sentence.split('   ')
  sentarray = []
  myarray.each { |word| sentarray.push(decode_word(word)) }
  sentarray.join(' ')
end

# Tests
decode_char('.-') #=> A
decode_word('-- -.--') # => MY
decode('-- -.--   -. .- -- .') # => MY NAME
message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decode(message) # => A BOX FULL OF RUBIES
