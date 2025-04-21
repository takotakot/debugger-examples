# sum_to_n.rb

def sum_to_n(n)
  return 0 unless n.is_a?(Integer) && n > 0
  (1..n).sum
end

# bubble_sort.rb

def bubble_sort(array)
  n = array.length
  (0...n).each do |i|
    (0...(n - i - 1)).each do |j|
      if array[j] > array[j + 1]
        array[j], array[j + 1] = array[j + 1], array[j]
      end
    end
  end
  array
end

# fibonacci.rb

def fibonacci(n)
  0
end
