def kaprekar?(k)
  # square k
  # how many digits is k = n
  # add the right n digits to the left n-1 digits
  # if the result of the sum = k ? it is kaprekar,
  # else it isn't
  square = k**2
  square_str = square.to_s
 
  k_digits = k.to_s.length

  right_part = square_str[-k_digits..-1].to_i
  left_part = square_str[0..(-k_digits-1)].to_i

  k === (right_part + left_part)
end

=begin

  9 is a Kaprekar number since
  9 ^ 2 = 81 and 8 + 1 = 9

  297 is also Kaprekar number since
  297 ^ 2 = 88209 and 88 + 209 = 297.

  In short, for a Kaprekar number k with n-digits,
  if you square it and add the right n digits to the left n or n-1 digits, the resultant sum is k. 
=end