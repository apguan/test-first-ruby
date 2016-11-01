class Array

    def sum
        added = 0
        self.each do |x|
            added += x
        end
        return added
    end

    def square
        square = []
        self.each do |x|
            square.push(x**2)
        end
        return square
    end

    def square!
        self.collect! do |x|
            x**2
        end
    end
end
