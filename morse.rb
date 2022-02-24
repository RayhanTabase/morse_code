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

def convert_code(code)
  MORSE_KEYS[code]
end

def decode_message(message)
  words = message.split(/\s/)
  puts words
  decoded = ''
  words.each do |word|
    if word.include? '.' or word.include? '-'
      decoded += convert_code(word)
    else
      puts word
      decoded += ' ' if word == ''
      decoded += word
    end
  end
  puts decoded
end

decode_message '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...'
