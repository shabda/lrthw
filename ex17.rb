from_file, to_file = ARGV
script = $0

puts "Copying from #{from_file} to #{to_file}"
data = File.open(from_file).read()

exists = File.exists? to_file
puts "Input file exists? %s" % exists

output = File.open(to_file, "w")
output.write(data)