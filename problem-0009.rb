# Palindrome Number - Easy

## https://leetcode.com/problems/palindrome-number/

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x < 0

  rev = 0
  temp = x
  while temp > 0 do
    rev = (rev * 10) + (temp % 10)
    temp = temp/10
  end

  return x == rev
end

# def is_palindrome(x)
#   return x.to_s.reverse == x.to_s
# end

p is_palindrome(121)
# => true

p is_palindrome(-121)
# => false

p is_palindrome(10)
# => false