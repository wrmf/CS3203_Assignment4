=begin
Assignment 4 for CS3203
@author wrmf
=end

def check_add(numbers, target)
  for num in numbers #Loop through numbers array
    for num2 in numbers #Loop through numbers array again (yes this is O(n^2) time complexity)
      if num+num2 == target #Check if the two numbers added are equal to the target
        return true #Return on true
      end
    end
  end

  false #Return false if it was never true
end

puts check_add([1, -1, 3, 4], 0) #Example use checking to see if anything in [1, -1, 3, 4] adds up to 0