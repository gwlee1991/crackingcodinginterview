# Queue via Stacks: Implement a MyQueue class which implements a queue using two stacks

class MyQueue

  def initialize
    @stack1 = Stack.new
    @stack2 = Stack.new
    @count = 0
  end

  def count
    @count
  end

  def enqueue(el)
    @stack1.push(@stack2.pop) until @stack2.empty?
    @stack1.push(el)
    @count += 1
    @count
  end

  def dequeue
    @stack2.push(@stack1.pop) until @stack1.empty?
    element = @stack2.pop
    @count -= 1
    element
  end
  
end


# my Stack class defined.
class Stack
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

