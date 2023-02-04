# first, get the decimal code of each charater 
# then use factor to transform into new character from newly added code
# combine each char into new text
# ! Note that character must be in alphabet and don't cipher anything that is not alphabetical
LOWER_A = 97
UPPER_A = 65
def caesar_cipher(plaintext, factor)
  cipher_text = ''
  upper_range = (UPPER_A...(UPPER_A + 26))
  lower_range = (LOWER_A...(LOWER_A + 26))
  plaintext.each_char do |char|
    char_decimal = char.ord
    if lower_range.include?(char_decimal)
      cipher_index = (char_decimal - LOWER_A + factor) % 26
      cipher_char = (cipher_index + LOWER_A).chr
      cipher_text += cipher_char
    elsif upper_range.include?(char_decimal)
      cipher_index = (char_decimal - UPPER_A + factor) % 26
      cipher_char = (cipher_index + UPPER_A).chr
      cipher_text += cipher_char
    else
      cipher_text += char
    end
  end
  cipher_text
end

puts caesar_cipher('What a string!', 5)