class Temperature
  # TODO: your code goes here!

    def initialize(opts = {})
        @fahrenheit, @celcius = opts[:f], opts[:c]

        @fahrenheit = (@celsius * (9.0/5.0)) + 32 unless @celsius.nil?
        @celsius = (@fahrenheit - 32) * (5.0/9.0) unless @fahrenheit.nil?

    end

    def in_fahrenheit
      @fahrenheit
    end

    def in_celsius
      @celcius
    end

    def convert_to_f(x)
        ((x * (9.0/5.0)) + 32)
    end

    def convert_to_c(x)
        ((x -32) * (9.0/5.0)))
    end




	def self.from_fahrenheit(temp)
		Temperature.new(:f => temp)
	end

	def self.from_celsius(temp)
		Temperature.new(:c => temp)
	end



end
