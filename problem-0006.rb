# ZigZag Conversion - Medium

## https://leetcode.com/problems/zigzag-conversion/

# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(str, num_rows)
  return str if num_rows < 2
  
  arr = []
  num_rows.times { arr << Array.new }
  n = 0;
  i = 0;
  j = 0;

  plus = true

  while i < num_rows do
    arr[i][j] = str[n]
    n += 1

    plus = false if i == (num_rows - 1) 

    plus = true if i == 0

    if plus
      i += 1
    else
      j += 1
      i -= 1
    end

    break if n == str.length
  end
  arr.flatten.compact.join("")
end

p convert("PAYPALISHIRING", 3)
# => "PAHNAPLSIIGYIR"

p convert("PAYPALISHIRING", 4)
# => "PINALSIGYAHRPI"