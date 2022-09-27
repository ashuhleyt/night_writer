class EnglishBraille
  include Library 

  def convert_string_to_braille(message)
    collector = {}
    final_message = ""
    braille_letters = []
    counter = 0
    new_counter = -1
    message_chars = message.downcase.chars
    message_chars.each do |char|
      braille_letters << @braille[char]
    end
    loop do 
      collector[counter] = braille_letters.shift(40)
      break if braille_letters.count == 0
      counter += 1
    end 
    until new_counter == counter
      new_counter += 1
      for i in 0..2 do 
        collector[new_counter].each do |letter|
          final_message.concat(letter[i])
        end
        final_message.concat("\n")
      end
    end
      final_message
  end
end


