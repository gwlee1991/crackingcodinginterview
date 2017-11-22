require_relative 'linked_list'
# Delete middle node: Implement an algorithm to delete a node
# in the middle of a singly linked list, given only access to
# that node.

# simple solution that takes O(1) since all we have to do is
# reassign the pointers

def delete_middle_node (target)
  target.prev.next = target.next
  target.next.prev = target.prev
  true
end
