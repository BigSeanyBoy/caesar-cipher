def encode(string, shift)
  string.split("")
  .map { |char| 
    if char.ord < 65
      char
    else 
      new_char = char.ord + shift
      if new_char > 122 || new_char < 97 && new_char > 90
        new_char -= 26
      end
      new_char.chr(Encoding::UTF_8)
    end
  }
  .join
end

def decode(string, shift)
  string.split("")
  .map { |char| 
    if char.ord < 65
      char
    else 
      new_char = char.ord - shift
      if new_char < 65 || new_char < 97 && new_char > 90
        new_char += 26
      end
      new_char.chr(Encoding::UTF_8)
    end
  }
  .join
end

# solution below is based on @rlmoser99 (github) solution
# added for practice
#
# def caesar_cipher(message, shift, encoded = "") 
#   message.each_char do |char| 
#     base = char.ord < 91 ? 65 : 97
#     if char.ord.between?(65, 90) || char.ord.between?(97, 122)
#       char_shift = (((char.ord - base) + shift) % 26) + base
#       encoded += char_shift.chr
#     else
#       encoded += char
#     end
#   end
#   encoded
# end