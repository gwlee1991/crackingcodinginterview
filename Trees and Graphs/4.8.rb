# 4.8 First Common Ancestor: Design an algorithm and wirte code to find
# the first common ancestor of two nodes in a binary tree. Avoid storing
# additional nodes in a data structure. NOTE: This is not necessarily a
# binary search tree.

# If we traverse through the tree and realize that the nodes are on opposite
# sides of the tree, we know that the current node is the common ancestor for 
# nodes p and q. For example, if p is somewhere on the right side of the root node
# and q is somewhere on the left side of the root node, root node is the first
# common ancestor. If they are on the same side(lets say left), then we change our
# pointer to the left child of the root node and traverse through the rest of the tree.
# We call this recursively.

# assumptions
# p and q are present on the tree
# all nodes have a parent, left, right field.

