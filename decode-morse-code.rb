MORSE_CODE = {
  ' '=>' ',
  '.-'=>'A',
  '-...'=>'B',
  '-.-.'=>'C',
  '-..' =>'D', 
  '.' =>'E', 
  '..-.' =>'F',
  '--.' =>'G', 
  '....' =>'H', 
  '..' =>'I', 
  '.---' =>'J', 
  '-.-' =>'K', 
  '.-..' =>'L', 
  '--' =>'M', 
  '-.' =>'N', 
  '---' =>'O', 
  '.--.' =>'P', 
  '--.-' =>'Q', 
  '.-.' =>'R', 
  '...' =>'S', 
  '-' =>'T', 
  '..-' =>'U', 
  '...-' =>'V', 
  '.--' =>'W', 
  '-..-' =>'X', 
  '-.--' =>'Y', 
  '--..' =>'Z',

  '.----' =>'1', 
  '..---' =>'2', 
  '...--' =>'3', 
  '....-' =>'4', 
  '.....' =>'5', 
  '-....' =>'6', 
  '--...' =>'7', 
  '---..' =>'8', 
  '----.' =>'9', 
  '-----' =>'0', 
}

def decode_char(code)
  MORSE_CODE[code]
end

decode_char(".-")

def decode_word(word)
  morse_char=word.split(' ')
  decorded_word=''
  morse_char.each do |morse_cod|
    decorded_word += decode_char(morse_cod)
  end
  decorded_word
end

decode_word("-- -.--")

def decode(message)
  morse_message = message.split('   ')
  decoded_message=''
  morse_message.each do |decode_msg|
    decoded_message += decode_word(decode_msg) + ' '
  end
  decoded_message
end

