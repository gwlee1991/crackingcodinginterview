# sort stack: write a program to sort a stack such that the
# smallest items are on the top. You can use an additional temporary stack,
# but you may not copy the elements into any other data structure
# (such as an empty array). The stack supports the following
# operations: push, pop, peek, and isEmpty.

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