# Interactive 'Baby Dragon' program
require './dragon'

puts <<-EOH
What to you want to do?\n\
      1. feed
      2. toss
      3. walk
      4. rock
      5. put to bed
EOH

pet = Dragon.new("Tom")

while true
  print "Your input: "

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
  when "put to bed"
    pet.put_to_bed
  else
    puts "invalid input"
  end

  puts
end
  

