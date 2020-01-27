# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  currentSum = 0
  arr.each {|a| currentSum += a}
  return currentSum
end

def max_2_sum(arr)
  if arr.empty?
    return 0
  end
  
  if arr.length() == 1
    return arr[0]
  end
  
  n1 = arr[0]
  arr.delete_at(0)
  n2 = arr[0]
  arr.delete_at(0)
  
  for x in arr 
    if(x > n1)
      n1 = x
      next
    end
    if(x > n2)
      n2 = x
      next
    end
  end
    
    return n1 + n2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
