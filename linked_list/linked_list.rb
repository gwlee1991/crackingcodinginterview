class Link
  attr_accessor :key, :val, :next, :prev

  def initialize(val = nil)
    @val = val
    @next = nil
    @prev = nil
  end

  def to_s
    "#{@val}"
  end

  def remove
    self.prev.next = self.next if self.prev != nil
    self.next.prev = self.prev if self.next != nil
    self.next = nil
    self.prev = nil

    # optional but useful, connects previous link to next link
    # and removes self from list.
  end
end

class LinkedList
  include Enumerable
  attr_reader :list
  attr_accessor :head, :tail
  def initialize
    @head = Link.new
    @tail = Link.new
    @head.next = @tail
    @tail.prev = @head
    # @link = link.new
  end

  def [](i)
    each_with_index { |link, j| return link if i == j }
    nil
  end

  def first
    @head.next
  end

  def last
    @tail.prev
  end

  def empty?
    @tail.prev == @head
  end

  def append(link)
    @tail.prev.next = link # setting before reassigning tails values
    link.prev = @tail.prev
    link.next = @tail
    @tail.prev = link
  end


  def remove(val)
    each do |link|
      if link.val == val
        link.remove
        break
      end
    end
  end

  def each(&prc)
    first = @head.next
    while first != @tail
      prc.call(first)
      first = first.next
    end
  end

  # uncomment when you have `each` working and `Enumerable` included
  def to_s
    inject([]) { |acc, link| acc << "[#{link.key}, #{link.val}]" }.join(", ")
  end
end