# Three in One: Describe how you could use a single array
# to implement three stacks.


# question is really vague so hard to grasp what the question is
# truly asking. 

class Stack
  
  def initialize
    @stack = [[],[],[]]
  end

  def enque(stackNum, element)
    @stack[stackNum].push(element)
  end

  def deque(stackNum, element)
    @stack[stackNum].pop(element)
  end

end
