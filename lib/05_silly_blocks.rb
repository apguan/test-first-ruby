#silly blocks, reverse the word in a block
def reverser(&block)
    split = block.call.split(" ")
    final = []
    split.each do |x|
        final.push(x.reverse)
    end
    return final.join(" ")
end

#adds one to the value returned by the default block
def adder(num = 1, &block)
    num + yield
end

#repeat it the number of times given
def repeater(num = 1, &block)
    num.times {block.call}
end
