# list of depths: given a binary tree, design an algorithm
# which creates a linked list of all the nodes at each depth
# (e.g., if you have a tree with depth D, you'll have D linked list)


# depth first search implementation

def create_level_linked_list (root, lists, level)
  return if root == nil

  list = nil
  if lists.length == level
    list = LinkedList.new
    lists.add(list)
  else
    list = lists[level]
  end
  list.append(root)
  create_level_linked_list(root.left, lists, level + 1)
  create_level_linked_list(root.righ, lists, level + 1)
end

# breadth-first search implementation

def create_level_linked_list2(root)
  result = []
  current = LinkedList.new
  if root != nil
    current.append(root)
  end

  while current.length > 0
    result.push(current)
    parents = current
    current = LinkedList.new
    parents.each do
      if parent.left != nil
        current.append(parent.left)
      end

      if parent.right != nil
        current.append(parent.right)
      end
    end
  end
  result
end

class LinkedList
  def initalize
  end

  def append(node)
  end
end