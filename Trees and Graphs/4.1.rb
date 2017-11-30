# Route Between Nodes: Given a directed graph, design an
# algorithm to find out whether there is a route between
# two nodes

# starting from the start node, we will operate a 
# breadth-first search. 

# when we think that our target is closer to the top of 
# the tree, breadth for search is faster, but if the target
# is closer to the end of the tree, it would take longer to
# do a breadth for search therefore doing a depth for search
# would be more efficient. However, for this case, we have
# no idea where the target could be. So, either should work fine.

def route_between_nodes (graph, start, destination)
  queue = Queue.new

  queue.push(start)
  until queue.empty?
    curr = queue.first
    return true if curr == destination
    curr.children.each do |child|
      queue.push(child)
    end
    queue.shift(curr)
  end

  false
end