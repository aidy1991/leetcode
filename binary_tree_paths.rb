# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {String[]}
def binary_tree_paths(root)
  def iter node, str
    if node == nil
      []
    elsif node.left == nil and node.right == nil
      [str] unless str == ""
    else
      str += "->" + node.val.to_s
      left = (iter node.left, str, arr) if node.left
      right =  (iter node.right, str, arr) if node.right
      [] + left + right
    end
  end

  p (iter root, "")
  [] + (iter root, "")
end
