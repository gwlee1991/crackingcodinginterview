# Check Balanced: Implement a function to check if a binary tree
# is balanced. For the purposes of this question, a balance tree is 
# defined to be a tree such that the heights of the two subtress of 
# any node never differ by more than once.

def get_height(root)
  return -1 if root == nil
  [root.left, root.right].max
end

def is_balanced?(root)
  return true if root == nil

  height_diff = get_height(root.left) - get_height(root.right)
  if height_diff.abs > 1
    return false
  else
    return is_balanced?(root.left) && is_balanced?(root.right)
  end
end
