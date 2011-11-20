puts "Practice"

puts "\t tab \n newlines escape \\ "

poem = <<POEM
There was an old man of St. Bees,
Who was stung in the arm by a wasp;
\tWhen they asked, "Does it hurt?"
\tHe replied, "No, it doesn't,\nBut I thought all the while 't was a Hornet.
POEM

puts poem

five = 10*20-15

puts "This is #{five}"

def secret_formula(start)
  jelly = start * 10
  bean = start -20
  return jelly, bean
end

jelly, bean = secret_formula(100) 

puts "You have %s jelly and %s beans" % secret_formula(100)