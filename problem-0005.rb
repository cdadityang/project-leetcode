# Longest Palindromic Substring

## https://leetcode.com/problems/longest-palindromic-substring/

# @param {String} s
# @return {String}
def longest_palindrome(s)
  r_s = s.reverse
  c_lists = {}
  index = 0
  answer = ''
  s.each_char do |c|
    c_lists[c] ||= []
    c_lists[c] << index
    c_lists[c].each do |i|
      if s[i..index] == r_s[(-index - 1)..(-i -1)] && answer.size < index - i + 1
        answer = s[i..index]
        break
      end
    end
    index += 1
  end
  return answer
end

p longest_palindrome("babad")
# => "bab"

p longest_palindrome("cbbd")
# => "bb"