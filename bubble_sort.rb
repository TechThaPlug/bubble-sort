
def bubble_sort(array)
  sorted_array = array.dup
  n = sorted_array.length

  loop do
    swapped = false

    (0...n - 1).each do |i|
      if sorted_array[i] > sorted_array[i + 1]
        sorted_array[i], sorted_array[i + 1] =
          sorted_array[i + 1], sorted_array[i]

        swapped = true
      end
    end

    break unless swapped

    n -= 1
  end

  sorted_array
end
