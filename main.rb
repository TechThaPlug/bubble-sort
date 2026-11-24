
require_relative "bubble_sort"

def main
  puts "=" * 50
  puts "              BUBBLE SORT"
  puts "=" * 50

  examples = {
    "Unsorted array" => [4, 3, 78, 2, 0, 2],
    "Reverse order" => [9, 8, 7, 6, 5, 4, 3, 2, 1],
    "Already sorted" => [1, 2, 3, 4, 5],
    "Duplicate values" => [4, 2, 4, 1, 2, 1],
    "Negative numbers" => [3, -2, 8, -5, 0]
  }

  examples.each do |description, numbers|
    sorted_numbers = bubble_sort(numbers)

    puts "\n#{description}:"
    puts "Original: #{numbers.inspect}"
    puts "Sorted:   #{sorted_numbers.inspect}"
  end

  puts "\nBubble Sort demonstration completed!"
  puts "=" * 50
end

main if __FILE__ == $PROGRAM_NAME
