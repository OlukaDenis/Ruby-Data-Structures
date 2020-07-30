# frozen_string_literal: true

def tree_height(tree_as_list)
  find_height(tree_as_list, 1, 1)
end

def find_height(tree, i, height)
  while i < tree.size
   find_height(tree,  i += 2 * i + 1, height += 1)
  end
  height
end

puts tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3

puts tree_height([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0])
# => 4