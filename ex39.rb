guys = "Shabda, Varsha, Akshar, Shloka"
puts "Whoa"
people = guys.split(",")
parents = %w(mom dad)

parents.each do |parent|
  people.push (parent)
end

puts people
puts people[0]
puts people[-1]