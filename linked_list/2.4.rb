# Partition: Write code to partition a linked list around a
# value x, such that all nodes less than x come before all nodes
# greater than or equal to x. If x is contained within the 
# list, the values of x only need to be after the elements less
# than x. The partition element x can appear anywhere in the 
# "right partition"; it does not need to appear between the left
# and right partitions.

# solution
# create a new list and iterate through the old list.
# if value is less than target value, add to the head and
# if greater, add to the tail. if node value equals to 
# target value than just add to tail.

def partition(list, target)
  new_list = LinkedList.new
  curr = list.head
  while curr != list.tail
    if curr.val < target
      curr.next = new_list.head.next
      curr.prev = new_list.head
      new_list.head.next.prev = curr
      new_list.head.next = curr
    else
      curr.next = new_list.tail
      curr.prev = new_list.tail.prev
      new_list.tail.prev.next = curr
      new_list.tail.prev = curr
    end
    curr = curr.next
  end

  new_list
end
