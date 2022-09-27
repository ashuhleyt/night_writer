file = File.open(ARGV[0], 'r') #permission to read
# require 'pry'; binding.pry#open said file and read it. 
count = file.read #actually reading it. 
#manipulations 
new_file = File.open(ARGV[1], 'w') #take info that program does(converting) and will allow me to write to the file. 
new_file.write(count)
puts "Created '#{ARGV[1]}' containing #{count} characters."