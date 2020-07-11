# Flatten a Multilevel Doubly Linked List - Medium

## https://leetcode.com/problems/flatten-a-multilevel-doubly-linked-list/

# Definition for a Node.
# class Node
#     attr_accessor :val, :prev, :next, :child
#     def initialize(val=nil, prev=nil, next_=nil, child=nil)
#         @val = val
#         @prev = prev
#         @next = next_
#         @child = child
#     end
# end

# @param {Node} root
# @return {Node}
def flatten(root, nested = false)
  return root if !root

  arr = []

  current = root

  while current
    arr.push(current)

    if current.child
      arr2 = flatten(current.child, true)
      arr += arr2
    end

    current = current.next
  end

  if !nested
    (0...arr.length - 1).each do |i|
      arr[i].next = arr[i + 1]
      arr[i + 1].prev = arr[i]
      arr[i].child = nil
    end

    return arr.first
  end

  return arr
end

a = Node.new(1)
b = Node.new(2)
c = Node.new(3)
d = Node.new(4)
e = Node.new(5)
f = Node.new(6)
g = Node.new(7)
h = Node.new(8)
i = Node.new(9)
j = Node.new(10)
k = Node.new(11)
l = Node.new(12)

a.next = b
b.prev = a
b.next = c
c.prev = b
c.next = d
c.child = g
d.next = e
d.prev = c
e.next = f
e.prev = d
f.prev = e
g.next = h
h.prev = g
h.next = i
h.child = k
i.next = j
i.prev = h
j.prev = i
k.next = l
l.prev = k

p flatten(a)
# => [1,2,3,7,8,11,12,9,10,4,5,6]