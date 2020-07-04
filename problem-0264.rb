# Ugly Number II - Medium

## https://leetcode.com/problems/ugly-number-ii/

def nth_ugly_number(n)
  ugly = [1]
  i2 = i3 = i5 = 0

  nmul_2 = 2
  nmul_3 = 3
  nmul_5 = 5

  (1..n).each do |m|
    ugly[m] = [nmul_2, nmul_3, nmul_5].min

    if ugly[m] == nmul_2
      i2 += 1
      nmul_2 = ugly[i2] * 2
    end

    if ugly[m] == nmul_3
      i3 += 1
      nmul_3 = ugly[i3] * 3
    end

    if ugly[m] == nmul_5
      i5 += 1
      nmul_5 = ugly[i5] * 5
    end
  end

  ugly[-2]
end

p nth_ugly_number(10)
# => 12

p nth_ugly_number(15)
# => 24