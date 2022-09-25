class Alphabet
  attr_reader :braille
  
  def initialize
   @braille = {
    "a" => ["0.", "..", ".."],
    "b" => ["0.", "0.", ".."],
    "c" => ["00", "..", ".."],
    "d" => ["00", ".0", ".."],
    "e" => ["0.", ".0", ".."],
    "f" => ["00", "0.", ".."],
    "g" => ["00", "00", ".."],
    "h" => ["0.", "00", ".."],
    "i" => [".0", "0.", ".."],
    "j" => [".0", "00", ".."],
    "k" => ["0.", "..", "0."],
    "l" => ["0.", "0.", "0."],
    "m" => ["00", "..", "0."],
    "n" => ["00", ".0", "0."],
    "o" => ["0.", ".0", "0."],
    "p" => ["00", "0.", "0."],
    "q" => [".0", "00", "00"],
    "r" => ["0.", "00", "0."],
    "s" => [".0", "0.", "0."],
    "t" => [".0", "00", "0."],
    "u" => ["0.", "..", "00"],
    "v" => ["0.", "0.", "00"],
    "w" => [".0", "00", ".0"],
    "x" => ["00", "..", "00"],
    "y" => ["00", ".0", "00"],
    "z" => ["0.", ".0", "00"],
    " " => ["..", "..", ".."] 
    }
  end
  
  def to_braille(string)
    letters = string.chars
    changed_letters = []
    letters.each do |letter| #array of letters
      changed_letters << @braille[letter]
    end
    changed_letters.flatten #returns transformed english letters to braille
  
    row1 = []
    row2 = []
    row3 = []

    changed_letters.each do |letter|
      row1 << changed_letters[0][0]
      row2 << changed_letters[0][1]
      row3 << changed_letters[0][2]
    end
    # require 'pry'; binding.pry
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
        print letter[i]
      end
      final_message.concat("\n")
      puts "\n"
    end
    final_message
  end
end 