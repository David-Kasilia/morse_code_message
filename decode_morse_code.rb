# rubocop:disable Metrics/MethodLength
def decode_char(str)
  # Method to decode single Morse code character
  morse_code_dict = {
    '.-' => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G',
    '....' => 'H',
    '..' => 'I',
    '.---' => 'J',
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
  }
  morse_code_dict[str]
end
# rubocop:enable Metrics/MethodLength

def decode_word(str)
  str_arr = str.split
  output = ''
  str_arr.each do |char|
    output += decode_char(char)
  end
  "#{output} "
end

def decode(str)
  words_arr = str.split(/   /)
  final_output = ''
  words_arr.each do |word|
    final_output += decode_word(word)
  end
  final_output
end

print decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
# Returns A BOX FULL OF RUBIES
