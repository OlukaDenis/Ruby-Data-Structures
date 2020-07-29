class Node
  attr_reader :value
  attr_accessor :left, :right

  def initialize(val)
    @value = val
  end
end

class BST
  def insert(new_node, head = @root)
    
    if @root.nil?
      @root = new_node
      return
    end
    
    if head.nil?
      return new_node
    end
    
    if new_node.value < head.value
      head.left = insert(new_node, head.left)
    elsif new_node.value > head.value
      head.right = insert(new_node, head.right)
    end
    return head
  end

  def pre_order(node = @root)
    return '' if node.nil?  
    result = "#{node.value} "
    result += pre_order(node.left)
    result += pre_order(node.right)
  end
end


def binary_search_tree(array)
  tree = BST.new
  array.each do |e|
    tree.insert(Node.new(e))
  end
  tree.pre_order
end

puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"