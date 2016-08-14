# Grandfather Clock
def clock(&block)
  current_time = Time.now.hour > 12 ? Time.now.hour - 12 : Time.now.hour

  current_time.times do
    block.call
  end
end

clock { puts 'DONG!' }
