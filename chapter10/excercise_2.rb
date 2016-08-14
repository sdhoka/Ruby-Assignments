def program_log(description, &block)
  puts "Begining \"#{description}\""

  return_value = block.call
  puts "..\"#{description}\" finished. returning: #{return_value}"
end

program_log 'outer block' do
  program_log 'some little block' do
    5
  end

  program_log 'yet another block' do
    'I like Thai food!'
  end

  false
end
