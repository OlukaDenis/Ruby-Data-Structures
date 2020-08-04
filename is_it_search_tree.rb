class Node
	attr_reader :data
	attr_accessor :left, :right
	
	def initialize data
		@data = data
	end
end

def array_to_tree(array, index = 0)
		return nil if index >= array.size || array[index] == 0
	
	node = Node.new(array[index])
	node.left = array_to_tree(array, 2* index + 1)
	node.right = array_to_tree(array, 2 * index + 2)
	node
end

def is_it_search_tree?(node, min = -Float::INFINITY, max = Float::INFINITY)
  return true unless node
  return false if node.data < min || node.data > max
  
  is_it_search_tree?(node.left, min, node.data) && is_it_search_tree?(node.right, node.data, max)
end

def search_tree?(array)
	root = array_to_tree(array)
  is_it_search_tree?(root)
end

puts search_tree?([10, 4, 12])
# => true

puts search_tree?([10, 5, 7])
# => false