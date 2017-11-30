# Minimal Tree: Given a sorted (increasing order) array with
# unique integer elements, write a algorithm to create a binary
# search tree with minimal height


# to have a binary search tree with minimal height, it means that
# the tree has to be a balance tree having the same number of elements
# on both side of the tree. To do this, we need to make sure that we
# grab the middle element in the array.
# once we do that, we can build the rest of the tree recursively.
# it will take O(nLog n) time but O(n) space.

def minimal_tree(arr)
  return nil if arr.empty?
  return arr.first if arr.length == 1

  mid = arr.length/2
  node = Node.new

  node.left = minimal_tree(arr[0...mid])
  node.right = minimal_tree(arr[mid + 1..-1])

end

class Node
  attr_accessor :parent, :right, :left

  def initialize
    @parent = nil
    @left = nil
    @right = nil
  end

  def children
    @children
  end

  
end