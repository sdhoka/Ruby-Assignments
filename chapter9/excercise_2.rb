# Interactive 'Baby Dragon' program
require './dragon_class'

puts "What to you want to do?\n\
      1. feed\n\
      2. toss\n\
      3. walk\n\
      4. rock\n\
      5. put_to_bed"

pet = Dragon.new("Tom")

while true
  print  "Your input : "
  task = gets.chomp.downcase

  case task

  when "feed"
    pet.feed
  when "toss"
    pet.toss
  when "walk"
    pet.walk
  when "rock"
    pet.rock
  when "put_to_bed"
    pet.put_to_bed
  else
    puts "invalid input"
  end

  puts
end
  

