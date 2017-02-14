# This file will only run after all the methods on this page are defined and the logic is operational

require_relative 'apple_tree'

tree = AppleTree.new
tree.age! until tree.any_apples?

puts "My apple tree is producing apples at age #{tree.age} and is #{tree.height} feet tall"

until tree.dead?
  apple_basket = []

  while tree.any_apples?
    apple_basket << tree.pick_an_apple!
  end

  avg_diameter = # Calculate the average diameter for this harvest

  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height} feet"
  puts "Harvest:     #{apple_basket.size} apples with an average diameter of #{avg_diameter} inches"
  puts

  # Age the tree another year
  tree.age!
end

puts "The tree is now dead at age #{tree.age}! Time to plant a new one!"
