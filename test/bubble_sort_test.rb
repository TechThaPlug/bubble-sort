
require "minitest/autorun"
require_relative "../bubble_sort"

class BubbleSortTest < Minitest::Test
  def test_sorts_assignment_example
    assert_equal [0, 2, 2, 3, 4, 78],
                 bubble_sort([4, 3, 78, 2, 0, 2])
  end

  def test_handles_already_sorted_array
    assert_equal [1, 2, 3, 4, 5],
                 bubble_sort([1, 2, 3, 4, 5])
  end

  def test_handles_reverse_sorted_array
    assert_equal [1, 2, 3, 4, 5],
                 bubble_sort([5, 4, 3, 2, 1])
  end

  def test_handles_duplicate_values
    assert_equal [1, 1, 2, 2, 4, 4],
                 bubble_sort([4, 2, 4, 1, 2, 1])
  end

  def test_handles_empty_array
    assert_equal [], bubble_sort([])
  end

  def test_handles_single_element
    assert_equal [42], bubble_sort([42])
  end

  def test_does_not_modify_original_array
    original = [4, 3, 2, 1]

    bubble_sort(original)

    assert_equal [4, 3, 2, 1], original
  end

  def test_handles_negative_numbers
    assert_equal [-5, -2, 0, 3, 8],
                 bubble_sort([3, -2, 8, -5, 0])
  end

  def test_handles_mixed_positive_and_negative_numbers
    assert_equal [-10, -3, 0, 2, 7],
                 bubble_sort([7, -10, 2, 0, -3])
  end

  def test_handles_large_array
    assert_equal (1..20).to_a,
                 bubble_sort((1..20).to_a.reverse)
  end

  def test_returns_a_new_array
    original = [3, 1, 2]
    result = bubble_sort(original)

    refute_same original, result
  end
end
