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
    split_message[0..2].transpose + split_message[3..5].transpose + split_message[6..8].transpose 
  end
   
end
