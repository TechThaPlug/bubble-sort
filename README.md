# Bubble Sort

A Ruby implementation of the Bubble Sort algorithm that sorts arrays by repeatedly comparing and swapping adjacent elements until they are in ascending order.

## Features

- Implements Bubble Sort without using Ruby's built-in `.sort` method.
- Sorts arrays in ascending order.
- Handles duplicate values.
- Supports positive and negative numbers.
- Handles empty and single-element arrays.
- Preserves the original input array.
- Includes automated tests using Minitest.
- Provides a command-line demonstration.

## Requirements

- Ruby 4.0.10 or compatible Ruby version.

## Installation

Clone the repository:

```bash
git clone https://github.com/TechThaPlug/bubble-sort.git
```

Navigate into the project:

```bash
cd bubble-sort
```

## Usage

Run the demonstration:

```bash
ruby main.rb
```

Use the method in another Ruby file:

```ruby
require_relative "bubble_sort"

bubble_sort([4, 3, 78, 2, 0, 2])
# => [0, 2, 2, 3, 4, 78]
```

## Running Tests

Execute the automated test suite:

```bash
ruby -Itest test/bubble_sort_test.rb
```

## Algorithm

Bubble Sort repeatedly compares neighboring elements and swaps them when they are in the wrong order.

Each pass moves the largest remaining unsorted value toward the end of the array.

The algorithm stops when a complete pass occurs without any swaps.

## Complexity Analysis

- **Best-case time complexity:** O(n) with the early-exit optimization.
- **Average-case time complexity:** O(n²).
- **Worst-case time complexity:** O(n²).
- **Auxiliary space complexity:** O(n) because this implementation creates a copy of the input array.

## Project Structure

```text
bubble-sort/
├── test/
│   └── bubble_sort_test.rb
├── bubble_sort.rb
├── main.rb
├── README.md
├── .gitignore
├── LICENSE
└── .ruby-version
```

## Author

Anthony W. Maina

## License

This project is licensed under the MIT License.
