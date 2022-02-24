MORSE_KEYS = {
  '.-'=> 'A',
  '-...'=> 'B',
  '-.-.'=> 'C',
  '-..'=> 'D',
  '.'=> 'E',
  '..-.'=> 'F',
  '--.'=> 'G',
  '....'=> 'H',
  '..'=> 'I',
  '-.-'=> 'K',
  '.-..'=> 'L',
  '--'=> 'M',
  '-.'=> 'N',
  '---'=> 'O',
  '.--.'=> 'P',
  '--.-'=> 'Q',
  '.-.'=> 'R',
  '...'=> 'S',
  '-'=> 'T',
  '..-'=> 'U',
  '...-'=> 'V',
  '.--'=> 'W',
  '-..-'=> 'X',
  '-.--'=> 'Y',
  '--..'=> 'Z'
}

def convert_code(code)
  return MORSE_KEYS[code]
end


def decode_message(message)
  words = message.split(' ')
  puts words
  decoded = ''
  words.each do |word|
    if word.include? '.' or word.include? '-'
      decoded = decoded + convert_code(word)
    else
      decoded = decoded + ' ' + word + ' '
    end
    puts "#{decoded}"
  end
end

decode_message '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...'
