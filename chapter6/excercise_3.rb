puts "Extended Deaf Grandma progam".upcase.center(50)
puts "Say something to Grandma"

bye_count  = 0

while bye_count < 3   
  grandson_says = gets.chomp  

  if grandson_says != grandson_says.upcase
    puts "HUH?! SPEAK UP SONNY!"
    bye_count = 0

  elsif grandson_says == "BYE"
    bye_count += 1

  else 
    puts "NO, NOT SINCE #{1930 + rand(21)}"
    bye_count = 0
  end
end
