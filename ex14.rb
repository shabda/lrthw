user = ARGV.first
PROMPT = ".>"

puts "Hello #{user}. I am #{$0}"
puts "DO you like me #{user}"
print PROMPT
likes = STDIN.gets.chomp()

puts "Where do you live #{user}"
print PROMPT
lives = STDIN.gets.chomp()

puts <<MESSAGE
Hello #{user}. 
You live in #{lives}
You like us? #{likes}
MESSAGE