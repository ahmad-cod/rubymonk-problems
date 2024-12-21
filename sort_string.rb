def sort_string(string)
  string_arr = string.split.sort { |a, b| a.length <=> b.length }
  string_arr.join(" ")
end