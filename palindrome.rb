def palindrome?(sentence)

  #  remove the spaces
   # then check if the reverse of the string is the same as the original string
  sentence_without_space = sentence.downcase.gsub(/\s+/, '')
  sentence_without_space == sentence_without_space.reverse
end