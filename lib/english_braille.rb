class EnglishBraille
  include EnglishLibrary 

  def mastermind(message)
    collector = {}
    final_message = ""
    braille_letters = []
    counter = 0
    new_counter = -1
    convert_to_braille(message, braille_letters)
    line_break(collector, counter, braille_letters)
    final_output(new_counter, counter, collector, final_message)
    final_message
  end

  def convert_to_braille(message, braille_letters)
    message_chars = message.downcase.chars
    message_chars.each do |char|
      braille_letters << @braille[char]
    end
    braille_letters.first
  end
  
  def line_break(collector, counter, braille_letters)
    loop do 
      collector[counter] = braille_letters.shift(40)
      break if braille_letters.count == 0
      counter += 1
    end 
  end
  
  def final_output(new_counter, counter, collector, final_message)
    until new_counter == counter
      new_counter += 1
      for i in 0..2 do 
        collector[new_counter].each do |letter|
          final_message.concat(letter[i])
        end
        final_message.concat("\n")
      end
    end
  end
end


















# def convert_to_braille(message) 
#   braille_letters = []
#   message_chars = message.downcase.chars 
#   message_chars.each do |char|
#     braille_letters << @braille[char] 
#   end
#   braille_letters.concat
# end

# def line_break(message)
#   collector = {}
#   braille_letters = []
#   final_message = ""
#   counter = 0
#   new_counter = -1
#   loop do 
#     collector[counter] = braille_letters.shift(40)
#     break if braille_letters.count == 0
#     counter += 1
#   end 
#   until new_counter == counter
#     new_counter += 1
#     for i in 0..2 do 
#       collector[new_counter].each do |letter|
#         final_message.concat(letter[i])
#       end
#       final_message.concat("\n")
#     end
#   end
#   final_message << convert_to_braille(message).to_s
# end
