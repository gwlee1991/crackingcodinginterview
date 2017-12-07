require_relative 'linked_list'
# Delete middle node: Implement an algorithm to delete a node
# in the middle of a singly linked list, given only access to
# that node.

# simple solution that takes O(1) since all we have to do is
# reassign the pointers


# for doubly
def delete_middle_node (target)
  target.prev.next = target.next
  target.next.prev = target.prev
  true
end

# for singly
# copy info from next node and delete the next node.

def delete_middle_node2(target)
  target.data = target.next.data
  target.next = target.next.next
  true
end
