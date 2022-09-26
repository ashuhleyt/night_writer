class EnglishBraille
  include Library 

  # def initialize

  # end

  def to_braille(string)
    letters = string.chars
    changed_letters = []
    letters.each do |letter| 
      changed_letters << @braille[letter]
    end
    changed_letters.flatten 
  
    row1 = []
    row2 = []
    row3 = []

    changed_letters.each do |letter|
      row1 << changed_letters[0][0]
      row2 << changed_letters[0][1]
      row3 << changed_letters[0][2]
    end
     [row1.join, row2.join, row3.join]
  end

  def convert_string_to_braille(message)
    final_message = ""
    braille_letters = []
    message_chars = message.downcase.chars
    message_chars.each do |char|
      braille_letters << self.to_braille(char)
    end
    for i in 0..2 do 
      braille_letters.each do |letter|
        final_message.concat(letter[i])
      end
      final_message.concat("\n") 
    end
    final_message
  end

  def line_break(converted_message)
    File.open 
    braille_message = []

    braille_message << converted_message
    if braille_message.delete("\n").length >=30
      # line break 
    end
  end 
end