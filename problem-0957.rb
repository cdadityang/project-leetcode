# Prison Cells After N Days - Medium

## https://leetcode.com/problems/prison-cells-after-n-days/

# @param {Integer[]} cells
# @param {Integer} n
# @return {Integer[]}
def prison_after_n_days(cells, n)
  arr = Array.new(8, 0)

  n %= 14
  n = 14 if n == 0
  (0...n).each do |i|
    (1..6).each do |j|
      arr[j] = cells[j - 1] == cells [j + 1] ? 1 : 0
    end

    cells = arr.dup
  end

  arr
end

p prison_after_n_days([0,1,0,1,1,0,0,1], 15)
# => [0,0,1,1,0,0,0,0]

p prison_after_n_days([1,0,0,1,0,0,1,0], 1000000000)
# => [0,0,1,1,1,1,1,0]