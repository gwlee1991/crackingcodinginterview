# Stack Min: How would you design a stack which, in addition to
# push and pop, has a function min which returns the minimum element?
# Push, pop and min should all operate in O(1) time.


# assumption is that stack is storing numbers.
# if not, we could have it store nodes.

# by keeping track of the min vals in a stack as we insert of delete elements
# from the normal stack, we are able to achieve O(1) for min, push, pop
# why?
# for dynamic arrays which ruby implements, inserting and deleting elements(push,pop),
# has an amortized O(1) time complexity.
# how about min?
# by having a stack that keeps record of all the min values in the a stack,
# we can look up the last element in the min stack to return the min value.
# instead of using an Array.count method, we are going to have a variable that 
# keeps track the number of elements in the stack whenever we make a 
# push or pop action. That way, instead of iterating through the min stack to
# return the last value of the array, we will have O(1) look up time.


class StackWithMin

  def initialize
    @store = Stack.new
    @mins = Stack.new
  end

  def push(el)
    @store.push(el)
    @mins.push(el) if el < @mins.last
    @store.count
  end

  def pop(el)
    raise "stack is empty" if @store.count == 0
    lastEle = @store.pop
    @mins.pop if lastEle == @mins.last
    lastEle
  end

  def min
    @mins.last
  end

end


# normal stack for our min stack
class Stack
  def initialize
    @store = []
    @count = 0
  end

  def count
    @count
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
