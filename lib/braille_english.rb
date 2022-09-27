class BrailleEnglish 
  include EnglishLibrary

  def convert_braille_to_string(message)
    english_letter = []
    split_character(message).each do |x|
      @braille.each do |character, braille|
        english_letter << character if x == braille
      end
    end
    english_letter.join
  end

  def split_character(message)
    split_message = []
    message.split("\n").each do |x|
      split_message << x.scan(/../)
    end
    repeat = split_message.length / 3
    braille_characters(repeat, split_message).flatten(1)
  end

  def braille_characters(repeat, split_message)
    repeat = split_message.length / 3
    collector = [] 
    x = 0
    y = 2
    until repeat == 0
    collector << split_message[x..y].transpose
      repeat -= 1
      x += 3
      y += 3
    end
    collector
  end
end
