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

# p chain(1..10)

def input(range)
  results = []
  range.each do |num|
    results << chain(num)
  end
  # results.max
  results.index(results.max) + 1
end

def speed_input(range)
  results = []
  middle = range.max/2
  upper_range = middle..range.max
  upper_range.each do |num|
    results << chain(num)
  end
  results.index(results.max) + middle

  # max_length = range.last.to_s.length
  # range.each do |num|
  #   if num.to_s.length >= max_length - 1
  #     results << chain(num)
  #   end
  # end
  # results.index(results.max) + 1
end

p speed_input(1..1000000)
# 12s

# p input(1..1000000)
# 23s
