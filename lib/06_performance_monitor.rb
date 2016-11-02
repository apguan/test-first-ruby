#measure time it takes to perform a task
def measure(num=1, &block)
  durations = 0
  num.times do
    #take current time as start time
    start_clock = Time.now
    #run block call from test
    block.call
    #take current time as end time
    end_clock = Time.now
    #take difference of times to find duration run
    durations += end_clock - start_clock
  end
  durations/num
end
