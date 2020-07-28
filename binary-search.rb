def sqrt(num)
  bs(num, 0, num)
end

def bs(num, min, max)
  while min <= max
    mid = (min + max) / 2
    square = mid ** 2
    return mid if square == num
    square > num ? max = mid : min = mid
  end
end

puts sqrt(25)
puts sqrt(36)
p sqrt(13245678909876543345678)