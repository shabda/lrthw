def puts_two(*args)
  arg1, arg2 = args
  puts arg1, arg2
end

def puts_two_again(arg1, arg2)
  puts arg1, arg2
end

def puts_one(arg)
  arg
  puts arg
end

def puts_nuthin
  puts "I got nothin"
end

puts_two("Tom", "Dick")
puts_two_again("Harry", "Potter")
puts_one("Twilight")
puts_nuthin()

