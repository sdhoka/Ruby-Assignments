arr = []

puts "Enter the array to be sorted."

while true
  data = gets.chomp
  if data == "" 
     break 
  else
      arr.push data
  end
end   

puts "You entered #{arr} "

# Array Sort
i = 0

while i < (arr.length - 1)
  j = 0 
  
  while j < (arr.length - 1 - i)  
    if arr[j] > arr[j+1]
      arr[j], arr[j+1] = arr[j+1], arr[j]
    end
    
    j += 1
  end

i += 1

end

puts "The sorted array is #{arr}"
