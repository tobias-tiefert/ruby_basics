def bubble_sort(input_array)
  sort_one_time(input_array) while sort_one_time(input_array)[1] == true
  input_array
end

def sort_one_time(input_array)
  sorting = false
  input_array.each_with_index do |element, index|
    if (index < input_array.length - 1) && (element > input_array[index + 1])
      input_array[index], input_array[index + 1] = input_array[index + 1], input_array[index]
      sorting = true
    end
  end
  [input_array, sorting]
end

puts bubble_sort([321, 8, 8_532, 4, 3, 78, 2, 120, 987_660, 1, -4, 27, 2])
