#sum of 2 numbers
def add(a,b)
  return a+b
end

#difference of 2 numbers
def subtract(a,b)
  return a-b
end

#sum of all elements in an array
def sum(arr)
  sum_count = 0
  arr.each do |x|
    sum_count += x
  end
  return sum_count
end

#Extra Credit

#multiply numbers of an argument
def multiply(arr)
  total = 1
  arr.each do |x|
    total *= x
  end
  return total
end

#power of 2 numbers
def power(a,b)
  return a**b
end

#factorial of a number
def factorial(num)
    total = 1
    if (num == 0)
        total = 0
    end
    (1..num).each do |x|
        total *= x
    end
    return total
end
