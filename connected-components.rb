def connected_graph?(graph)
  # write your code here
  visited = Array.new(graph.keys.length, false)
  path = []
  is_it_connected?(0, graph, visited, path)
  visited.include?(false) ? false : true
end

def is_it_connected?(current_node, graph, visited, path)
  visited[current_node] = true
  path << current_node if visited[current_node]

  graph[current_node].each do |next_node| 
    unless visited[next_node]
      is_it_connected?(next_node, graph, visited, path)
    end
  end
end

puts connected_graph?({
  0 => [2], 
  1 => [4], 
  2 => [0, 5, 3], 
  3 => [5, 2], 
  4 => [5, 1], 
  5 => [4, 2, 3]
})
# => true

puts connected_graph?({
  0 => [2], 
  1 => [1], 
  2 => [0, 3, 5], 
  3 => [2, 5], 
  4 => [1], 
  5 => [2, 3]
})
# => false