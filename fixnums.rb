def array_of_fixnums?(array)
  array.all? { |n| n.is_a?(Integer) }
end