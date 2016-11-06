class RPNCalculator
  # TODO: your code goes here!
    attr_accessor :stack

    def initialize
      @stack = []
    end

    def value
      @stack[-1]
    end

    def push(num)
      @stack.push(num)
    end

    def plus
      if @stack.length >= 2
          added = @stack.pop + @stack.pop
          @stack.push(added)
      else
          raise "calculator is empty"
      end
    end

    def minus
      if @stack.length >= 2
          #order matters
          one = @stack.pop
          two = @stack.pop
          subtracted = two - one
          @stack.push(subtracted)
      else
          raise "calculator is empty"
      end
    end

    def divide
      if @stack.length >= 2
          #convert to floats because otherwise, will give zero
          one = @stack.pop.to_f
          two = @stack.pop.to_f
          divided = two/one
          @stack.push(divided)
      else
          raise "calculator is empty"
      end
    end

    def times
      if @stack.length >= 2
          multiplied = @stack.pop * @stack.pop
          @stack.push(multiplied)
      else
          raise "calculator is empty"
      end
    end

    def tokens(num)
      tokenized = num.split(" ")
      numbers = []
      match_num = /[0-9]/
      tokenized.each do |x|
          if (match_num.match(x) != nil)
              int = x.to_i
              numbers.push(int)
          else
              numbers.push(x.to_sym)
          end
      end
      @stack = numbers
    end


    def evaluate(y)
         tokens(y).each do |s|
        	if s==:+
        	 self.plus
        	elsif s==:-
        	self.minus
        	elsif s==:/
        	self.divide
        	elsif s==:*
        	self.times
        	else
        	self.push(s)
        	end
        end
        self.value
    end
end
