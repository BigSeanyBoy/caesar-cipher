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

puts decode("Bmfy f xywnsl!", 5)