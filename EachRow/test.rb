require "./grid"

grid = Grid.new

puts "\n"

puts "First print result:\n\n"

print grid.to_s

puts "__________\n\neach_item_in_row result:\n\n"

# this is the syntax I want when I call this method (nice and pretty)
grid.each_item_in_row 1 do |item|
  puts item
  item = 5
end

puts "__________\n\neach result:\n\n"

# this is the syntax I want when I call this method (nice and pretty)
grid.each do |item|
  puts item
  item = 9
end


puts "__________\n\n"

puts "Second print result:\n\n"
# ERROR here is where the error is, the each and each_item_in_row
# methods accessed the value stored in @grid, but failed at setting
# the value. So I want the syntax above to remain the same, but am ok
# with changing the methods in the grid class.
print grid.to_s

puts "\n"
