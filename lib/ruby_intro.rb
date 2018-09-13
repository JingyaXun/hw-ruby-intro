# When done, submit this entire file to the autograder.
# This File is written by Jingya Xun
# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each do |item|
    sum += item
  end 
  sum
end

def max_2_sum arr
    if arr.length == 0 
        0
    elsif arr.length == 1
        arr.max
    else 
        largest1 = arr.max
        arr.delete_at(arr.index(largest1))
        largest2 = arr.max
        
        return (largest1+largest2)
    end

end

def sum_to_n? arr, n
  # YOUR CODE HERE
  idx1 = 0
  arr.each do |num1|
      idx2 = 0
      arr.each do |num2|
          if (num1 + num2) == n && idx1 != idx2
              return true
          end
          idx2 += 1
      end
      idx1 += 1
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  string = "Hello, "+name
    string
    
end

def starts_with_consonant? s
  # YOUR CODE HERE
   consonantArr = ["A", "E", "I", "O", "U"]
   if s.length == 0 
       return false
   end
   if !/[[:alpha:]]/.match(s[0])
       return false
   end 
   consonantArr.each do |cur|
       if (s[0].upcase <=> cur) == 0 
           return false
       end
   end
       return true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 0
      return false
  end
  s.chars.each do |char|
      if ((char <=> "0") != 0) && ((char <=> "1") != 0)
          return false
      end
  end 
  dec_num = s.to_i(2)

  if dec_num % 4 == 0
      return true
  end
    return false
  
end

# Part 3

class BookInStock
# YOUR CODE HERE
    def initialize (isbn, price)
        if isbn.length == 0 || price <= 0
            raise ArgumentError.new("Invalid isbn or price input.")
        end 
        @isbn = isbn
        @price = price
    end
    
    attr_reader :isbn, :price # create getter methods
    attr_writer :isbn, :price # create setter methods
    
    def price_as_string
        formattedPrice = "$"+ ('%.2f' % @price).to_s
        return formattedPrice
    end
end
