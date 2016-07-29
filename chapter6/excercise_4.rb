puts "Enter the start_year year"
start_year  = gets.chomp.to_i

puts "Enter the end_year year"
end_year = gets.chomp.to_i

puts ""
puts "Leap years within the given range are : "

while start_year <= end_year
  
  if start_year % 400 == 0
    puts "#{start_year}"

  elsif start_year % 4 == 0 && start_year % 100 != 0
    puts "#{start_year}" 
  end
  
  start_year += 1
end 

