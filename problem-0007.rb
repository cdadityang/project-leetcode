# Reverse Integer - Easy

## https://leetcode.com/problems/reverse-integer/

# @param {Integer} x
# @return {Integer}
def reverse(x)
  return 0 if x == 0 || x.to_i == 0 || x.to_i.bit_length > 31

  signed = false
  str = x.to_s

  if str[0] == '-' || str[0] == '+'
    signed = str[0]
    str = str[1...str.length]
  end

  str = str.reverse
  str = signed + str if signed

  str.to_i.bit_length > 31 ? 0 : str.to_i
end

p reverse(123)
# => 321

p reverse(-123)
# => -321

p reverse(120)
# => 21