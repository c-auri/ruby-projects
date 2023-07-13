def sort(array)
  begin
    swapped = false
    for i in 1...array.length do
      if array[i] < array[i - 1] then
        swap = array[i]
        array[i] = array[i - 1]
        array[i - 1] = swap
        swapped = true
      end
    end
  end while swapped
  array
end

pp sort([4,3,78,2,0,2])