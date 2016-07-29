puts "Deaf Grandma progam".upcase.center(50)
puts " Say something to your grandma "

while (grandson_says = gets.chomp) != "BYE" 
  if grandson_says != grandson_says.upcase
    puts "HUH?! SPEAK UP SONNY!"
  else
    puts "NO, NOT SINCE #{1930 + rand(21)}"
  end
end
