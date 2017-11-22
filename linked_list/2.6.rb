require_relative 'linked_list'
# Palindrome: Implement a function to check if a linked list
# is a palindrome.

# solution1 
# 2 pointers. 1 pointing at the beginning and 
# 2 pointing at the last of the list.
# iterate through the list and return false
# when the value of the 2 pointers don't match
# assumption doubly-linked list

# since we iterate through the list once
# it takes O(n) time. (technically O(2n) because
# list.last requires an iteration of the list)

def palindrome1(list)
  pointer1 = list.first
  pointer2 = list.last

  until pointer1 == list.last
    return false if pointer1.val != pointer2.val
    pointer1 = pointer1.next
    pointer2 = pointer2.prev
  end
  true
end

#solution2
# assumption singly-linked list(don't know list.last)
# create new list that's a reverse of original list
# compare new list to original list
# assumption: only given the head of the list

# reverse_list takes O(n) time because it needs to
# iterate through the list.
# now the palindrome function needs to iterate through
# the list again.
# takes O(2n) time which is O(n).
def palindrome2(node)
  reverse = reverse_list(node)
  
  until node.next == nil
    return false if node.val != reverse.val
    node = node.next
    reverse = reverse.next
  end
  true
end

# helper
def reverse_list(node)
  head = Link.new
  until node.next == nil
    link = Link.new(node.val)
    link.next = head
    head = link
    node = node.next
  end
  head
end