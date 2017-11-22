# Sum Lists: You have two numbers represented by a linked list,
require_relative 'linked_list'
# where each node contains a single digit. The digits are stored
# in reverse order, such that that the 1's digit is at the head of
# the list. Write a function that adds the two numbers and returns
# the sum as a linked list

# iterate through the linked list with a counter.
# add digit * 10 ^ counter to variables.
# add the numbers.
# loop it through with a modulo operator and add each
# digit as a node to a new linked list.

# solution
# list1 length == m and list2 length == n
# sum1 and sum2 takes O(m + n).
# assuming that list1 is the bigger number
# the max length of sum_list would be O(2m)
# so total time would be O(3m + n) but it would safe
# to say that time would be O(n) in a big case.
# this is iterative so it takes O(1) space
def sum_lists (list1, list2)
  sum1 = iterative_sum(list1)
  sum2 = iterative_sum(list2)

  total_sum = sum1 + sum2
  sum_list = LinkedList.new

  until total_sum == 0 
    link = Link.new(total_sum%10)
    sum_list.append(link)
    total_sum /= 10
  end

  sum_list
end

# helper function
def iterative_sum(list)
  sum = 0
  counter = 0
  
  curr = list.head.next
  until curr == list1.tail
    sum += curr.val * (10 ** counter)
    counter += 1
    curr = curr.next
  end

  sum
end
