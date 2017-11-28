# sort stack: write a program to sort a stack such that the
# smallest items are on the top. You can use an additional temporary stack,
# but you may not copy the elements into any other data structure
# (such as an empty array). The stack supports the following
# operations: push, pop, peek, and isEmpty.


# solution for having to return the original stack.
# since our stack needs to have the smallest on element on the top
# our temp stack needs to have the biggest element on the top.
# when popping from the stack to the buffer, we are going to compare
# the size of the elements in the temp variable(element that has just
# been popped) to the element on the top of the buffer stack. If
# temp variable is bigger than the last element in the buffer stack,
# we simply push the temp variable into the buffer stack.
# However, if the lastEle is bigger than the temp variable, we are going to
# pop the elements in the buffer stack into the original stack until it meets
# the conditions(temp >= lastEle). Once we have a match, we continue
# the process until stack is empty. Once stack is empty, we simply
# pop from the buffer stack and push it into original stack.

# if we are able to return the temp stack, instead of checking if the 
# temp variable is bigger or equal to lastEle, we would check if temp variable
# is smaller and equal to lastEle and return the buffer stack
# once the original stack is empty.

def sort_stack(stack)
  buffer = Stack.new
  temp = nil
  until stack.empty?
    temp = stack.pop
    if buffer.last == nil || buffer.last <= temp
      buffer.push(temp)
    else
      stack.push(buffer.pop) until buffer.empty? || buffer.last <= temp
      buffer.push(temp)
    end
  end

  until buffer.empty?
    stack.push(buffer.pop)
  end

  stack
end

class Stack
  attr_reader :store
  def initialize
    @store = []
    @count = 0
  end

  def count
    @count
  end
  
  def empty?
    @count == 0
  end

  def push(el)
    @store.push(el)
    @count += 1
    @count
  end

  def pop
    raise "stack is empty" if @count == 0
    lastElement = @store.pop
    @count -= 1
    lastElement
  end

  def last
    @store[count - 1]
  end
  
end

test_stack = Stack.new
test_stack.push(2)
test_stack.push(1)
test_stack.push(5)
test_stack.push(3)
test_stack.push(4)
# p test_stack.store
p sort_stack(test_stack)