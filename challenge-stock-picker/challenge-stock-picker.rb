def stock_picker(array)
  greatest_difference = [nil, nil, 0]
  array.each_with_index do |first, first_idx|
    array.each_with_index do |second, second_idx|
      if ((second - first > greatest_difference[2]) && (second_idx > first_idx))
        greatest_difference = [first_idx, second_idx, (second - first)]
      end
    end
  end
  greatest_difference[0..1]
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
