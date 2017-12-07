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
  list.each do |node|
    if vals.values.include?(node.val)
      node.remove
    else
      vals[node] = node.val
    end
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
node1 = Link.new(5)
node2 = Link.new(4)
node3 = Link.new(3)
linkedlist.append(node1)
linkedlist.append(node2)
linkedlist.append(node3)
linkedlist.append(node1)
linkedlist.append(node1)

p remove_dups(linkedlist)