require './lib/english_library'
require './lib/braille_english'
file = File.open(ARGV[0], 'r') 
 
message = file.read  

converted_message = BrailleEnglish.new.convert_braille_to_string(message) 
new_file = File.open(ARGV[1], 'w') 

new_file.write(converted_message)
puts "Created '#{ARGV[1]}' containing #{converted_message.length} characters."