def length_finder(input_array)
    result = []
    input_array.each do |str| 
      result.push(str.length)
    end
    return result
  end


length_finder(['I','am','genius'])