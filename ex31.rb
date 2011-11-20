def prompt
  print "./>"
end

puts "Dark slippery room, which room? 1 or 2?"

prompt; door = gets.chomp

if door == "1"
  puts "Dark freezing room" 
  puts "1. Light a lamp. 2. Try finding the switch"
  prompt; door = gets.chomp
  if door == "1"
    puts "you find the princess"
  elsif door == 2
    put "You are electrecuted and die"
  else
    puts "You fall in abyss"
  end
elsif door == "2"
  puts "Hot lava, you die"
else
  puts "You fall in abyss, you die"
end


