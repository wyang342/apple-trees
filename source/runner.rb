require_relative 'apple_tree'

#Only run this _after_ your implementation and tests are complete

tree = AppleTree.new

tree.age! until tree.any_apples?

puts "Tree is #{tree.age} years old and #{tree.height} feet tall"

until tree.dead?
  basket = []

  while tree.any_apples?
    basket << tree.pick_an_apple!
  end

  avg_diameter = # It's up to you to calculate the average diameter for this harvest.

  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height} feet"
  puts "Harvest:     #{basket.size} apples with an average diameter of #{avg_diameter} inches"
  puts ""

  # Age the tree another year
  tree.age!
end

puts "Alas, the tree, she is dead!"
