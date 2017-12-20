# Build Order: You are given a list of projects and a list
# of dependencies (which is a list of paris of projects, where
# the second project is dependent on the first project). All
# of a project's dependencies must be built before the project is.
# Find a build order that will allow the projects to be built.
# If there is no valid build order, return an error.

# ex
# projects: a, b, c, d, e, f
# dependencies: (a, d), (f, b), (b, d), (f, a), (d, c)
# output: f, e, a, b, d, c

#       f     e 
#     /   \
#    b    a
#    |   /
#     d
#     |
#     c

class Vertex
  attr_accessor :name, :neighbors, :weights

  def initialize(val)
    @val = val
    @incoming_edges = []
    @outgoing_edges = []
  end
end

class Graph
  attr_accessor :vertices

  def initialize
    @vertices = []
  end

  def find_vertex_by_val(val)
    found = []
    @vertices.each do |vertex|
      found.push(vertex) if vertex.val == val
    end
    found
  end

  def add_vertex(name)
    @vertices << Vertex.new(name)
  end

  def add_edge(outgoing_edge, incoming_edge)
    outgoing = self.find_vertex_by_val(outgoing_edge)
    incoming = self.find_vertex_by_val(incoming_edge)

    outgoing.outgoing_edges.push(incoming) unless outgoing.outgoing_edges.include?(incoming)
    incoming.incoming_edges.push(outgoing) unless incoming.incoming_edges.include?(outgoing)

    true
  end

  def delete_vertex(target)
    @vertices.delete(target)
    @vertices.each do |vertex|
      if vertex.incoming_edges.include?(target)
        incoming_edges.delete(target)
      end
    end
    true
  end

  def count
    vertices.length
  end
end

# projects = ['a', 'b' ... ] array of projects
# dependencies = [[a, b], ...] 2d array where inner array's first index is the independent project
# and second index is the dependent project 

def build_order(projects, dependencies)
  order = []
  projectGraph = Graph.new

  projects.each do |project|
    projectGraph.add_vertex(project)
  end

  dependencies.each do |relation|
    outgoing = relation[0]
    incoming = relation[1]

    projectGraph.add_edge(outgoing, incoming)
  end

  deleted = false

  until projectGraph.vertices.empty? || !deleted
    deleted = false 
    projectGraph.vertices.each do |vertex|
      if vertex.incoming_edges.empty?
        order.push(vertex.val)
        projectGraph.delete_vertex(vertex)
        deleted = true
      end
    end
  end

  order.length == projects.length ? order : "error"
end