require './lib/english_library'
require './lib/english_braille'

file = File.open(ARGV[0], 'r') 

message = file.read  

new_file = File.open(ARGV[1], 'w') 

converted_message = EnglishBraille.new.convert_to_braille(message) 

new_file.write(converted_message)
puts "Created '#{ARGV[1]}' containing #{converted_message.length} characters."