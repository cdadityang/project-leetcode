# String to Integer (atoi) - Medium

## https://leetcode.com/problems/string-to-integer-atoi/

# @param {String} str
# @return {Integer}
def my_atoi(str)
  return 0 if str.to_i == 0

  signed = false

  str = str.to_i.to_s

  if str[0] == '-' || str[0] == '+'
    signed = str[0]
    str = str[1...str.length]
  end

  if str.to_i.bit_length > 31
    temp = (2**31).to_s
    return (signed + temp).to_i if signed
    return (2**31) - 1
  else
    return (signed + str).to_i if signed
    return str.to_i
  end
end

p my_atoi("42")
# => 42

p my_atoi("   -42")
# => -42

p my_atoi("4193 with words")
# => 4193

p my_atoi("words and 987")
# => 0

p my_atoi("-91283472332")
# => -2147483648