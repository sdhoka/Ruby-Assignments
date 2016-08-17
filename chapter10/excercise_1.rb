# Grandfather Clock
def clock(&block)
  current_time = Time.now.hour > 12 ? Time.now.hour - 12 : Time.now.hour

  current_time.times { block.call }
end

clock { puts 'DONG!' }
