# Maximum Width of Binary Tree - Medium

## https://leetcode.com/problems/maximum-width-of-binary-tree/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def width_of_binary_tree(root)
  return 0 if !root
  return 1 if !root.left and !root.right

  max_value = 1
  queue = [[root, 0]]

  while !queue.empty?
    size = queue.length
    current = []

    (0...size).each do
      temp = queue.shift
      node, position = temp[0], temp[1]
      current.push(temp)
      queue.push([node.left, position * 2]) if node.left
      queue.push([node.right, (position * 2) + 1]) if node.right
    end

    current_width = current.length == 1 ? 1 : current[current.length - 1][1] - current[0][1] + 1
    max_value = [max_value, current_width].max
  end

  max_value
end

a = TreeNode.new(5)
b = TreeNode.new(3)
c = TreeNode.new(3, a, b)
d = TreeNode.new(9)
e = TreeNode.new(2, nil, d)
f = TreeNode.new(1, c, e)
p width_of_binary_tree(f)
# => 4

g = TreeNode.new(5)
h = TreeNode.new(3)
i = TreeNode.new(3, g, h)
j = TreeNode.new(1, i)
p width_of_binary_tree(j)
# => 2

k = TreeNode.new(5)
l = TreeNode.new(3, k)
m = TreeNode.new(2)
n = TreeNode.new(1, l, m)
p width_of_binary_tree(n)
# => 2

q = TreeNode.new(6)
r = TreeNode.new(5, q)
s = TreeNode.new(3, r)
t = TreeNode.new(7)
u = TreeNode.new(9, nil, t)
v = TreeNode.new(2, nil, u)
w = TreeNode.new(1, s, v)
p width_of_binary_tree(w)
# => 8