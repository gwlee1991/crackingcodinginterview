require_relative 'linked_list'

# Intersection: Given two (singly) linked lists, determine if the
# two lists intersect. Return the intersecting node. Note that 
# the interesection is defined based on reference, not value. That
# is, if the kth node of the first linked list is the exact same
# node (by reference) as the jth node of the second linked list,
# then they are intersecting

# node1 - node2 \      / node5 - node6
#                 node3 
# node3 - node4 /      \ node7 - node8
# return node3

# brute force is to iterate through 1 list and compare it with
# all the nodes on the other list and see if they are equal.
# because we have to iterate through two lists, it will take O(mn) time.

def intersection1(list1, list2)
  curr1 = list1.head
  until curr1 == nil
    curr2 = list2.head
    until curr2 == nil
      return curr2 if curr2 == curr1
      curr2 = curr2.next
    end
    curr = curr.next
  end
  nil
end

# another solution would be to create a hash and store the nodes.
# if we happen to come across a node that is already in the hash,
# it would mean that we have found the intersection.
# since we iterate through both lists but not in a nested way,
# the it would take a max O(m + n) time. But by doing the check
# in a single loop we would be able to reduce it to O(m) time.

def intersection2(list1, list2)
  nodes = Hash.new
  curr1 = list1.head.next #could use list1.first
  curr2 = list2.head.next
  until curr1 == nil && curr2 == nil
    if nodes[curr1]
      return curr1
    else
      nodes[curr1] = true
    end

    if nodes[curr2]
      return curr2
    else
      nodes[curr2] = true
    end

    curr1 = curr1.next unless curr1 == nil
    curr2 = curr2.next unless curr2 == nil
  end

  nil
end