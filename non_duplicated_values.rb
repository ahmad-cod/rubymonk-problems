def non_duplicated_values(values)
  # create a hash for each val in the values array, which size would be updated when the same val is found in the array
  # then filter / select only those whose size is 1 and return that array
  hash = Hash.new(0)
  values.each do |val|
    hash[val] += 1
  end
  non_duplicate_hash = hash.select do |key, val|
    val == 1
  end
  non_duplicate_hash.keys
end