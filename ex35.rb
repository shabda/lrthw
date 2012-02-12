def tiger_room()
  puts "here be tigers. What do you do? (Stay/Run)"
  what = gets.chomp 
  if what.downcase == "stay"
    puts "You get eaten"
    die("Eaten")
  elsif
    what.downcase == "run"
    puts "You are alive"
  end
end

def die(why)
  puts "you are dead as you were #{why}"
end

tiger_room()