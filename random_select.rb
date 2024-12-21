def random_select(array, n)
  result = []

  n.times do 
    random_index = rand(array.length)
    random_el = array[random_index]
    result.push(random_el)
  end
  
  return result
end

Problem Statement

=begin 
  Create a method 'random_select' which, when given an array of elements (array) and a number (n),
 returns n randomly selected elements from that array.
=end
