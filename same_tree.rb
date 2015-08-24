# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
  def iter p, q
    return true if p == nil and q == nil
    return false if p == nil and q != nil
    return false if p != nil and q == nil

    if p.val == q.val
      left_bool = iter p.left, q.left
      right_bool = iter p.right, q.right

      left_bool and right_bool
    else
      false
    end
  end

  iter p, q
end
