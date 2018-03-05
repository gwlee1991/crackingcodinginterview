# 4.8 First Common Ancestor: Design an algorithm and wirte code to find
# the first common ancestor of two nodes in a binary tree. Avoid storing
# additional nodes in a data structure. NOTE: This is not necessarily a
# binary search tree.

# assuming that each node has access to it's parent's node, we traverse up
# the tree. Because the nodes can be in different depths of the tree, we
# initially calculate the depths by traversing the tree from the root node.
# Once we know the depth of each node, we make sure that we move up the node
# that is deeper with in the tree to the save level as the other node.
# After that we check the parent of each node. Once, the parent is the same,
# we return that node.

# time/space complexity
# when finding the depth of the nodes, we need to traverse through the tree.
# if d is the depth of the tree, worst case time complexity for traversing through
# the tree would be O(d).
# once we traverse through the tree to find the depth of the node, we traverse up
# the tree from the deeper node which would also take O(d) time.
# total time complexity would be O(2d) and by removing the constants
# finally time complexity is O(d).

def common_ancestor(p , q)
  diff = depth(p) - depth(q)
  deep = diff > 0 ? p : q
  shallow = diff > 0 ? q : p
  deep = moveUp(deep, diff.abs)

  while deep != shallow && shallow != nil && deep != nil
    shallow = shallow.parent
    deep = deep.parent
  end

  if shallow == nil || deep == nil
    return nil
  else
    return shallow
  end
end

def moveUp(node, diff)
  while (diff > 0 && node != nil)
    node = node.parent
    diff -= 1
  end
  node
end

def depth(node)
  level = 0
  while node != nil
    node = node.parent
    level += 1
  end
  level
end