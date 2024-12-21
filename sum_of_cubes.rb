def sum_of_cubes(a, b)
  sum = 0
  (a..b).each { |num| sum += num ** 3 }
  sum
end