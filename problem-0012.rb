# Integer to Roman - Medium

## https://leetcode.com/problems/integer-to-roman/

# @param {Integer} num
# @return {String}
def int_to_roman(num)
  roman_hash = {
    "1": "I",
    "2": "II",
    "3": "III",
    "4": "IV",
    "5": "V",
    "6": "VI",
    "7": "VII",
    "8": "VIII",
    "9": "IX",
    "10": "X",
    "40": "XL",
    "50": "L",
    "90": "XC",
    "100": "C",
    "400": "CD",
    "500": "D",
    "900": "CM",
    "1000": "M"
  }

  arr = []
  
  
  roman_hash.reverse_each do |k, v|
    key = k.to_s.to_i
    if num >= key
      t = num/key
      arr.push(v * t)
      num -= key * t
    end
  end

  arr.join
end

p int_to_roman(3)
# => "III"

p int_to_roman(9)
# => "IX"

p int_to_roman(58)
# => "LVIII"

p int_to_roman(1994)
# => "MCMXCIV"