require_relative 'linked_list'
# Remove Dups: Write code to remove duplicates from
# an unsorted linked list.
# How would you solve this problem if a temporary buffer
# is not allowed?


# assumption => list is a doubly linked list
# list has a val, next, prev
# duplicate indicates nodes with same values
# even if node object id is different

def remove_dups (list)
  vals = {}
  dups = []
  list.each do |node|
    if vals.values.include?(node.val)
      dups.push(node.key)
    else
      vals[node] = node.val
    end
  end
  dups.each do |key|
    list.remove(key)
  end
  list
end

# simply link without any methods and singly linked list

def remove_dups (head)
  vals = {}
  curr = head unless head == nil
  while curr.next != nil
    unless vals[curr]
      vals[curr] = true
    end
    curr = curr.next
  end
  head
end

linkedlist = LinkedList.new
linkedlist.append(1, 5)
linkedlist.append(2, 4)
linkedlist.append(3, 3)
linkedlist.append(4, 5)
linkedlist.append(5, 3)

p remove_dups(linkedlist)