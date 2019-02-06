def sum arr 
  return arr.sum
end

def max_2_sum arr
  return 0 if arr.length == 0
  return arr[0] if arr.length == 1
  arr.sort!{|x,y| y<=>x}
  return arr[0]+arr[1]
end

def sum_to_n? arr, n
  p1 = 0
  p2 = 0
  arr.each do |x| 
    p2 = 0
    arr.each do |y|  
      if x+y == n and p1 != p2
        return true
      end
      p2=p2+1
    end
  p1=p1+1
  end
  return false
end

# Part 2

def hello(name)
  return 'Hello, '+name
end

def starts_with_consonant? s
  regex=/^[[a-z]&&[^aeiou]]/i
  if  regex.match(s)
   return true
  
  else
    return false
  end
end


def binary_multiple_of_4? s
  if s =="0"
    return true
  end
  a = s.to_i(2)
  
  if a == 0
    return false
  end
  if a%4 == 0
    return true
  else
    return false
  end

end

# Part 3
class BookInStock
attr_accessor :isbn, :price  
  def initialize isbn, price
    raise ArgumentError if (isbn.empty? || price <= 0)
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    format("$%.2f",@price)
  end
end
