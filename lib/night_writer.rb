require './lib/alphabet'

file = File.open(ARGV[0], 'r') #permission to read
#open said file and read it. 
message = file.read #actually reading it. 
#manipulations 
new_file = File.open(ARGV[1], 'w') #take info that program does(converting) and will allow me to write to the file. 
alphabet = Alphabet.new
converted_message = alphabet.to_braille(message) 

new_file.write(converted_message)
puts "Created '#{ARGV[1]}' containing #{converted_message.length} characters."