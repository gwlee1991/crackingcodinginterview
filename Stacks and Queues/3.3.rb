# Stack of Plates: Imagine a (literal) stack of plates.
# If the stack gets too high, it might topple. Therefore, in
# real life, we would likely start a new stack when the previous
# stack exceeds some threshold. Implement a data structure
# SetOfStacks that mimics this. SetOfStacks should be composed
# of several stacks and should create a new stack once the
# previous stack exceeds capacity. SetOfStack.push() and
# SetOfStacks.pop() should behave identically to a single
# stack (that is ,pop() should return the same values as it
# would if there were just a single stack)

# implement a funciton popAt(index) which performs a pop operation
# on a specific sub-stack.


# our store is going to be an array of Stacks. We will fill up each
# stack until it's capacity. Once a stack is full, we will create a
# new stack and push it into our store. When popping, we will remove
# the stack from the array if the store is empty after popping.

# since our store is an dynamic array, whenever we add a stack or remove it,
# we have an amortized O(1) time complexity. 

class SetOfStacks

  def initialize(capacity)
    @capacity = capacity
    @store = [Stack.new]
    @piles = 1
  end
  
  def push(el)
    if @store[@piles - 1].count >= @capacity
      @store.push(Stack.new)
      @piles += 1
    end
    
    @store[@piles - 1].push(el)

  end

  def pop
    lastElement = @store[@pile - 1].pop
    if @store[@pile - 1].empty?
      @store.pop
      @piles -= 1
    end
    lastElement
  end

  def popAt(index)
    raise "out of bounds" if index > (@piles - 1)
    @store[index].pop
  end

end

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
