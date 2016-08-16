# Program to test the use of yield
def clock
  current_time = Time.now.hour > 12 ? Time.now.hour - 12 : Time.now.hour

  current_time.times { yield }
end

clock { puts 'DONG!' }
