require_relative 'linked_list'

# Loop Detection: Given a circular linked list, implement an
# algorithm that returns the node at the beginning of the loop.


# create a hash to store nodes and iterate through the list.
# once we hit a node that is already in the hash,
# we know that, that is the starting point of the circle loop.
# because the loop needs to iterate through the list once at maximum,
# the function takes O(n) time.

def loop_detection(list)
  nodes = Hash.new

  head = list.head.next #first element in the list
  until head == nil
    if nodes[head]
      return head
    else
      nodes[head] = true
    end
    head = head.next
  end

  nil
end
