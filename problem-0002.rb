# Add Two Numbers

## https://leetcode.com/problems/add-two-numbers/

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end


def add_two_numbers(l1, l2)
  arr1 = []
  arr2 = []
  loop do
    arr1 << l1.val
    break if !l1.next
    l1 = l1.next
  end

  loop do
    arr2 << l2.val
    break if !l2.next
    l2 = l2.next
  end

  a = arr1.reverse.join().to_i
  b = arr2.reverse.join().to_i

  c = a + b

  d = c.to_s.split("").map {|n| n.to_i }.reverse

  arr3 = []

  (0...d.length).each do |n|
    arr3.push(ListNode.new(d[n]))
  end

  (0...arr3.length).each do |n|
    arr3[n].next = arr3[n + 1]
  end

  return arr3.first
end


a = ListNode.new(3)
b = ListNode.new(4, a)
c = ListNode.new(2, b)

d = ListNode.new(4)
e = ListNode.new(6, d)
f = ListNode.new(5, e)

p add_two_numbers(c, f)
# => ListNode: 7 -> 0 -> 8