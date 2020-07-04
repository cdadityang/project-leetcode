# Ugly Number - Easy

## https://leetcode.com/problems/ugly-number/

# @param {Integer} num
# @return {Boolean}
def is_ugly(num)
  return false if num == 0

  flag = 1

  loop do
    flag = 1
    if num % 2 == 0
      num = num / 2
      flag = 0
      next
    end

    if num % 3 == 0
      num = num / 3
      flag = 0
      next
    end

    if num % 5 == 0
      num = num / 5
      flag = 0
      next
    end

    break if flag == 1
  end

  num == 1 ? true : false
end

p is_ugly(6)
# => true

p is_ugly(8)
# => true

p is_ugly(14)
# => false