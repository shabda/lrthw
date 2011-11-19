filename = ARGV.first

PROMPT =  ".>"
txt = File.open(filename)

puts txt.read()

print PROMPT
file_new = STDIN.gets.chomp()
txt_new =File.open(file_new)
puts txt_new.read()