def chain(num)
  array = [num]
  while array.last != 1 do
    if array.last.even?
      array << array.last/2
    else
      array << array.last*3 + 1
    end
  end
  array.count
end

def input(range)
  results = []
  range.each do |num|
    results << chain(num)
  end
  results.index(results.max) + 1
end

def speed_input(range)
  results = []
  middle = range.max/2
  upper_range = middle..range.max
  upper_range.each do |num|
    if num.odd?
      results << chain(num)
    else
      results << 0
    end
  end
  results.index(results.max) + middle
end

p speed_input(1..1000000)
# 7s

# p input(1..1000000)
# 23s

# $array = []
# def recursive_chain(num)
#   if num == 1
#     return $array.count + 1
#   elsif num.odd?
#     num *= 3
#     num += 1
#   else num.even?
#     num /= 2
#   end
#   $array.push(num)
#   recursive_chain(num)
# end

# p recursive_chain(100)
