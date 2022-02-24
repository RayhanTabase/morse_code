MORSE_KEYS = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def convert_character(character)
  return character unless MORSE_KEYS[character]

  MORSE_KEYS[character]
end

def convert_word(word)
  characters = word.split
  word = ''
  characters.each do |character|
    word += convert_character(character)
  end
  puts word
  word
end

def decode_message(message)
  words = message.split('   ')
  decoded = ''
  words.each do |word|
    decoded += "#{convert_word(word)} "
  end
  puts decoded
end

decode_message '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...'
