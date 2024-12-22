def number_shuffle(number)
# 1. Input Validation and Digit Extraction
  number_str = number.to_s
  num_digits = number_str.length
  raise ArgumentError, "Number must be either 3 or 4 digits" unless [3, 4].include?(num_digits)
  raise ArgumentError, "Digits must be distinct" unless number_str.chars.to_a.uniq.length == num_digits
  digits = number_str.chars.map(&:to_i)
  
  # 2. Generate Permutations, 
  permutations = digits.permutation.to_a
  
  # 3. Convert to Numbers and remove Duplicates
  unique_numbers = permutations.map { |perm| perm.join.to_i }.uniq
  # return sorted uniq numbers
  unique_numbers.sort
end

# Test Cases
puts number_shuffle(123) # Expected Output: [123, 132, 213, 231, 312, 321]