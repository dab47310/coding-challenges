def bubble_sort(array)
  (array.size - 1).times do
    array.each_with_index.map do |item, index|
      if (((index + 1) < (array.size)) && (item > array[index + 1]))
        array[index + 1] += array[index]
        array[index] = array[index + 1] - item
        array[index + 1]  -= array[index]
      end
    end
    # p array
  end
  array
end

p bubble_sort([78,4,3,2,2,0])
