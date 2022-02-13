def translate(string, shift)
  string.split("")
  .map { |char| 
    utf = char.ord
    if utf.between?(65, 90) || utf.between?(97, 122)
      base = utf < 97 ? 65 : 97
      rotation = (((utf - base) + shift) % 26) + base
      rotation.chr(Encoding::UTF_8)
    else 
      utf.chr(Encoding::UTF_8)
    end
  }
  .join
end