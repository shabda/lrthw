filename = ARGV.first
script = $0
puts "We are going to erase #{filename}"
puts "If you dont want, Ctrl+C"
puts "or return to continue"
STDIN.gets

puts "Opening the file"
target = File.open(filename, "w")

puts "Truncating. Goodbye cruel world"
target.truncate(target.size)

print "What is your name?"
name = STDIN.gets.chomp()
print "What cola you like"
cola = STDIN.gets.chomp()

line = <<ABOUT
#{name} like #{cola}
ABOUT

target.write(line)
