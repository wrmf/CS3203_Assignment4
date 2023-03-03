def check_add(array, key)
  for num in array #Loop through array
    for num2 in array #Loop through array again (yes this is O(n^2) time complexity)
      if num+num2 == key #Check if the two numbers added are equal to the key
        return true #Return on true
      end
    end
  end

  false #Return false if it was never true
end

puts check_add([1, -1, 3, 4], 0)