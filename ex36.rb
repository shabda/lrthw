ACTIONS = ["Jump", "Walk"]
HURDLES = [5, 6, 8]
MAPSIZE = 10
START_POS = 1

def game()
  hurdles = HURDLES
  game_over = false
  current_pos = 1
  while !game_over
    show_map(MAPSIZE, HURDLES, current_pos)
    actions = ACTIONS.join("/")
    puts "What do you do? #{actions}"
    action = gets.chomp
    if hurdles.index current_pos
      if action == "walk"
        die
      end
    end
    current_pos = current_pos + 1
  end
end  

def die
  puts "Game over"
  Process.exit(0)
end

def show_map(mapsize, hurdles, player_at)
  map = []
  (1..mapsize).each do |current|
    if hurdles.index current
      map.push "x"
    elsif player_at == current
      map.push "_"
    else
      map.push "."
    end    
  end
  puts map.join("")
end

game()



