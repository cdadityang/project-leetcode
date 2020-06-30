# Longest Substring Without Repeating Characters - Medium

## https://leetcode.com/problems/longest-substring-without-repeating-characters/

# @param {String} str
# @return {Integer}
def length_of_longest_substring(str)
  len = 0
  (0...str.length).each do |n|
    strr = str[n]
    ((n + 1)...str.length).each do |m|
      if strr.include?(str[m])
        break
      else
        strr += str[m]
      end
    end
    len = [strr.length, len].max
  end
  len
end

p length_of_longest_substring("abcabcbb")
# => 3

p length_of_longest_substring("pwwkew")
# => 3