$indentation = 0
$indent_variable = ' '

def program_log(description, &block)
  puts "#{$indent_variable * $indentation}Begining \"#{description}\""

  $indentation += 2

  return_value = block.call

  $indentation -= 2

  puts "#{$indent_variable * $indentation}...\"#{description}\" finished. returning: #{return_value}"
end

program_log 'outer block' do
  program_log 'some little block' do
    program_log 'teeny-tiny block' do
      'lots of love'
    end
    '5'
  end

  program_log 'yet another block' do
    'I love Indian food'
  end
  true
end
