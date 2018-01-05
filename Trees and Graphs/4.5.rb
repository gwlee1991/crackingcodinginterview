# Validate BST: Implement a function to check if a binary tree
# is a binary search tree.

# to be a binary search tree, given the head node, the left node
# needs to be smaller than the head node, and the right node has 
# to be bigger than the head node. Also, as we look at the right
# child, we need to make sure that the right child is smaller than
# the current node's parent node. When we look at the left child,
# we need to make sure that the left child is larger than the 
# current node's parent node.


# our node will have a structure that looks like the code below.
class BinaryNode
  def initialize(val, left, right)
    @val = val
    @left = left
    @right = right
  end
end

def binary_search_tree?(head, parent = nil)
  return true if head == nil

  curr = head
  left = head.left
  right = head.right

  # current node check
  if parent == nil
    return false unless curr.val >= left.val
    return false unless curr.val <= right.val
  else
    return false unless curr.val >= left.val && left.val <= parent.val
    return false unless curr.val <= right.val && right.val >= parent.val
  end
  
  # recurse left
  return false unless binary_search_tree?(curr.left, curr)

  # recurse right
  return false unless binary_search_tree?(curr.right, curr)

  true
end