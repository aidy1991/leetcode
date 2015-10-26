# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
  def search node, p, q
    v = node.val

    return nil unless node

    if p <= v and v <= q
      return node
    else
      return search node.left, p, q if  q <= v
      return search node.right, p, q if v <= p
    end
  end

  p, q = q, p if p.val > q.val
  search root, p.val, q.val
end
