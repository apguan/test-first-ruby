class Timer
    attr_accessor :seconds
#initialize the seconds to zero.
    def initialize
        @seconds = 0
    end
#now time_string can access seconds
    def time_string
        time = Time.new(0)
        convert = time + seconds
        convert.asctime.split(" ")[3]
    end
end
