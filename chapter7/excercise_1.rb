arr = []

puts 'Enter the array to be sorted.'

while true
  data = gets.chomp
  if data == "" 
     break 
  else
      arr.push data
  end
end   



puts "sorted array is #{arr.sort} "


