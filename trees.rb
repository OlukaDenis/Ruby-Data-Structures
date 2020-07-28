def leftmost_nodes_sum(array)
  get_nodes(array, 0, 0)
end

def get_nodes(array, i, total)
  while i < array.size
    total += array[i]
    i = (2 * i) + 1
    get_nodes(array, i, total)
  end

  total
end
puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9, 3, 8])
# => 11