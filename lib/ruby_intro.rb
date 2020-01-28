# When done, submit this entire file to the autograder.

# Part 1
#1.1
def sum(arr)
  currentSum = 0
  arr.each {|a| currentSum += a} 
  return currentSum
end

#1.2
def max_2_sum(arr)
  #Checking for empty array
  if arr.empty?
    return 0
  end
  
  #Checking for array of size 1
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

#1.3
def sum_to_n? arr, n
  
  if arr.length <= 1
    return false
  end 
  
  #Getting all pair combinations from arr 
  pairs = arr.combination(2).to_a
  
  for i in pairs
  #Checking if the current pair sum to n 
    if sum(i) == n
      return true
    end
  end
  
  return false
end

# Part 2
#2.1
def hello(name)
  return "Hello, " + name
end

#2.2
def starts_with_consonant? s
  #Check for empty string
  if s.empty? 
    return false
  end
  #Check for nonletters
  if !(s[0] =~ /[[:alpha:]]/)
    return false
  end
  
  if s[0] == 'A' || s[0] == 'a' || s[0] == 'E' || s[0] == 'e' || s[0] == 'I' || s[0] == 'i' || s[0] == 'O' || s[0] == 'o' || s[0] == 'U' || s[0] == 'u' 
    return false
  end
  
  return true
  
end

#2.3
def binary_multiple_of_4? s
  pow2 = 1
  sum = 0
  
  #Check for a valid binary number
  if !(s[0] =~ /[10]/)
    return false
  end 
  
  for i in (0...s.length).reverse_each
    if(s[i] == "1")
      sum += pow2
    end
    
    pow2 = pow2 * 2
  end
  
  if sum % 4 == 0
    return true
  end
  
  return false
end

# Part 3
class BookInStock
  def initialize(n,m)
    #Check for empty ISBN and negative prices
    raise ArgumentError, "ISBN is Empty." unless !n.empty?
    raise ArgumentError, "Price cannot be negative." unless m > 0
    @isbn = n
    @price = m
  end
  
  #Getters and Setters
  def isbn
    @isbn
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price
    @price
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string
    sprintf("$%.2f", @price) 
  end
  
end
