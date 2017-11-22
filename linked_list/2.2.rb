require_relative 'linked_list'
# Return Kth to Last: Implement an algorithm to find the kth to
# last element of a singly linked list                                                        


# iterative solution
# where n is the length of the list, the solution would take O(n + k) time.
# because it is iterative it will take O(1) space.
def kth_to_last (list, k)
  p1 = list.head
  p2 = list.head
  k.times do
    p2 = p2.next
  end
  # p2 pointer is k ahead p1. by moving p1 and p2 together,
  # we know that p1 is at the kth last element when p1 reaches
  # the last element

  until p2 = list.last
    p1 = p1.next
    p2 = p2.next
  end

  p1
end


