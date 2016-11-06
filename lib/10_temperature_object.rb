class Temperature
	def initialize(options={})
        #pass values off as celcius first. then convert back if .in_fahrenheit
		if options.key?(:f)
			@celcius=((options[:f])-  32)* 5.0/9.0
		end
		if options.key?(:c)
			@celcius=options[:c]
		end
	end

	def in_fahrenheit
	    ((@celcius*9.0)/5.0)+32
	end

	def in_celsius
		@celcius
	end

	def self.from_celsius(c)
		Temperature.new(:c => c)
	end

	def self.from_fahrenheit(f)
		Temperature.new( :f => f)
	end

end

class Celsius < Temperature

	def initialize(c)
		super(:c => c)
	end

end

class Fahrenheit < Temperature

	def initialize(f)
		super(:f => f)
	end

end
