input_file = ARGV.first

def print_all(f)
  puts f.read()
end

def rewind(f)
  f.seek(0, IO::SEEK_SET)
end

def print_a_line(line_count, f)
  puts "#{line_count}", f.readline()
end

current = File.open(input_file)

print_all(current)
rewind(current)
print_a_line(1, current)
print_a_line(2, current)
print_a_line(3, current)
