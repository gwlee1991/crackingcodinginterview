# Successor: Write an algorithm to find the "next"
# node(i.e., in-order successor) of a given node in
# a binary search tree. You may assume that each node
# has a link to its parent.

# normally to find the "next" node, we would look at
# the element that is at the most "left" side of the
# right node. However, if the current node does not have
# a right node, we would simply have to look at parent
# node and traverse up until parent node's value is bigger
# than current node's value.

# our node class would look like below
class Node

  def initalize(@val, @left, @right, @parent)
    @val = val
    @left = left
    @right = right
    @parent = parent
  end
end


def successor (head)
  return head if head == nil

  curr = head
  if curr.right
    curr = curr.right
    until curr.left == nil
      curr = curr.left
    end
    return curr
  else
    until curr.val < curr.parent.val
      curr = curr.parent
    end
    return curr.parent unless curr.parent == nil
    # if we haven't returned a node by now, it means that
    # current node is the last node.
    # therefore we just return nil.
  end

  nil
end
