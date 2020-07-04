# Binary Tree Level Order Traversal II - Easy

## https://leetcode.com/problems/binary-tree-level-order-traversal-ii/

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
# @return {Integer[][]}
def level_order_bottom(root)
  return [] if !root

  queue = [root]
  arr = [[ root.val ]]

  while !queue.empty?
    temp = []

    while !queue.empty?
      current = queue.shift

      temp.push(current.left) if current.left
      temp.push(current.right) if current.right
    end

    if !temp.empty?
      arr.unshift(temp.map { |node| node.val })
    end

    queue = temp
  end

  arr
end

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

b = TreeNode.new(9)
d = TreeNode.new(15)
e = TreeNode.new(7)

c = TreeNode.new(20, d, e)
a = TreeNode.new(3, b, c)

p level_order_bottom(a)
# => [[15, 7], [9, 20], [3]]