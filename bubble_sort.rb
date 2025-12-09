def bubble_sort(input_array)
  sorting = true
  output  = input_array
  while sorting == true do
    sorting = false
    array_position = 0
    while array_position < output.length do
      this_number = output[array_position]
      next_number = output[array_position+1]
      if array_position+1 == output.length
        break
      end
      if next_number < this_number
        output[array_position] = next_number
        output[array_position+1] = this_number
        sorting = true
      end
      array_position += 1
    end
  end
  output
end

bubble_sort([321, 8, 8532, 4,3,78,2,120, 987660, 1, -4, 27,2])
