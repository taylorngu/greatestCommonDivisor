def GCD(a, b)
  min = a > b ? b : a 
  min.downto(1).each {|i| return i if a % i == 0 && b % i == 0}
end

def subEuclidean(a, b)
  until a == b 
    if a > b 
      a -= b
    else 
      b -= a
    end
  end 
  return a 
end

def proEuclidean(a, b)
  if (b == 0)  
    return a
  end
  return proEuclidean(b, a % b)
end

proEuclidean(8, 64)
