# Unique Paths - Medium

## https://leetcode.com/problems/unique-paths/

# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
  arr = []
  n.times { arr << Array.new(m, 0) }

  (0...n).each do |i|
    (0...m).each do |j|
      if i == 0 || j == 0
        arr[i][j] = 1
      else
        arr[i][j] = arr[i - 1][j] + arr[i][j - 1]
      end
    end
  end

  arr[n - 1][m - 1]
end

p unique_paths(3, 2)
# => 3

p unique_paths(7, 3)
# => 28