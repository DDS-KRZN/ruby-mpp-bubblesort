def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

array = Array.new(10) { rand(1..100) }
print array.join(" ") + "\t<- Початковий масив"
bubble_sort(array)
print "\n" + array.join(" ") + "\t<- Відсортованний масив"