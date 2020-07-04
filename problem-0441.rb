# Arranging Coins - Easy

## https://leetcode.com/problems/arranging-coins/

# @param {Integer} n
# @return {Integer}
def arrange_coins(n)
  return 0 if n < 1

  sum = 0
  i = 0

  while sum < n do
    sum += i

    return i if sum == n

    return i - 1 if sum > n

    i += 1
  end
end

p arrange_coins(5)
# => 2

p arrange_coins(8)
# => 3


## Alternate, small brute-force
# def arrange_coins(n)
#   return 0 if n < 1

#   i = 0

#   while n > i do
#     i += 1
#     n -= i
#   end

#   i
# end