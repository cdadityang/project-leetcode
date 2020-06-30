# Roman to Integer - Easy

## https://leetcode.com/problems/roman-to-integer/

# @param {String} s
# @return {Integer}
def roman_to_int(s)
  roman_mapping = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }
  num = 0
  arr = s.split("")

  jump = false

  (0...arr.length).each do |n|
    if jump
      jump = false
      next
    end

    if arr[n + 1] and roman_mapping[arr[n] + arr[n + 1]]
      num += roman_mapping[arr[n] + arr[n + 1]]
      s = s.slice(2, s.length)
      jump = true
    else
      num += roman_mapping[arr[n]]
      s = s.slice(1, s.length)
    end

    break if s.length == 0
  end
  num 
end

p roman_to_int("III")
# => 3

p roman_to_int("IV")
# => 4

p roman_to_int("LVIII")
# => 58

p roman_to_int("MCMXCIV")
# => 1994