require_relative 'english_number.rb'

puts "99 bottles of beer lyrics\n".upcase.center(46)

i = 99

while i > 0
  puts "#{english_number(i)} bottles of beer on the wall, #{english_number(i)} bottles of beer."

  i -= 1

  if i == 0
    puts "Take one down and pass it around, no more bottles of beer on the wall."
  else
    puts "Take one down and pass it around, #{english_number(i)} bottles of beer on the wall."
  end

  puts ""
end

puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, #{english_number(99)} bottles of beer on the wall."
