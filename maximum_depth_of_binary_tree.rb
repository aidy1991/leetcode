# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
  def iter node, depth
    unless node
      depth
    else
      left_depth = iter node.left, depth + 1
      right_depth = iter node.right, depth + 1
      [left_depth, right_depth].max
    end
  end

  iter root, 0
end


