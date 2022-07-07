require "set"

def find_first_duplicate(arr)
  unique = Set.new

  arr.each do |value|
    return value if unique.include?(value)
    unique.add(value)
  end
  
  -1

end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 3"
  puts "=>", find_first_duplicate([2, 1, 3, 3, 2])

  puts

  puts "Expecting: -1"
  puts "=>", find_first_duplicate([1, 2, 3, 4])

  puts "Expecting: 4"
  puts "=>", find_first_duplicate([6, 4, 4, 3])
end

# Please add your pseudocode to this file
# And a written explanation of your solution
