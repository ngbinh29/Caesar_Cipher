# first, get the decimal code of each charater 
# then use factor to transform into new character from newly added code
# combine each char into new text
# ! Note that character must be in alphabet and don't cipher anything that is not alphabetical
def caesar_cipher(plaintext, factor)
  cipher_text = ''
  plaintext.each_char do |char|
    if char.match?(/[a-z]/)
      LOWER_A = 97
      cipher_index = (char.ord - LOWER_A + factor) % 26
      cipher_char = (cipher_index + LOWER_A).chr
      cipher_text += cipher_char
    elsif char.match?(/[A-Z]/)
      UPPER_A = 65
      cipher_index = (char.ord - UPPER_A + factor) % 26
      cipher_char = (cipher_index + UPPER_A).chr
      cipher_text += cipher_char
    else
      cipher_text += char
    end
  end
  cipher_text
end

puts caesar_cipher('What a string!', 5)