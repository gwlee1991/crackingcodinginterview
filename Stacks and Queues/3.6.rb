# Animal shelter: An animal shelter, which holds only dogs and cats,
# operates on a strictly "first in, first out" basis. People must
# adopt either the "oldest"(based on arrival time) of all animals at
# the shelter, or they can select whether they would prefer a dog or
# a cat(and will receive the oldest animal of that type). They cannot
# select which specific animal they would like. Create the data structures
# to maintain this system and implement operations such as enqueue,
# dequeueAny, dequeueDog, and dequeueCat. You may use the built in
# LinkedList data structure.

# could've used a linkedlist to represent the queues but since I would have
# to redefine a linkedlist, just used arrays.

# whenever we add an animal, we give them an order variable to keep track
# of the order they came into the shelter. Also depending on the class type
# we either add it to the dog queue or the cat queue. When we dequeueAny,
# we compare the first animals for the dog or cat queue and shift the animal
# with the smaller order(came first). When dequeueCat we shift the cat queue
# and if dequeueDog, we shift the dog queue.

class AnimalShelter

  def initialize
    @dog_queue = []
    @cat_queue = []
    @order = 0
  end

  def enqueue(animal)
    animal.order = @order
    @store.push(animal)
    @order += 1
    if animal.is_a?(Cat)
      @cat_queue.push(animal)
    else
      @dog_queue.push(animal)
    end
    true
  end

  def dequeueAny
    @dog_queue.first.order > @cat_queue.first.order ? @cat_queue.shift : @dog_queue.shift
  end

  def dequeueCat
    @cat_queue.shift
  end

  def dequeueDog
    @dog_queue.shift
  end

end

class Animal
  @attr_reader :order
  def initalize(order)
    @order = order
  end
end

class Cat < Animal
end

class Dog < Animal
end