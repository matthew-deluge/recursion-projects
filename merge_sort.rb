require "pry"
def merge_sort(array)
  return array if array.length < 2
  left_array, right_array = [],[]
  array.each_with_index do |number, index|
    if index < array.length/2
      left_array.push(number)
    else 
      right_array.push(number)
    end
  end
  temp_right = merge_sort(right_array)
  temp_left = merge_sort(left_array)
  sorted_array = merge(temp_left, temp_right)
  return sorted_array
end

def merge(left_array, right_array)
  new_array = []
  until left_array.empty? || right_array.empty?
    left_array[0] < right_array[0] ? new_array.push(left_array.shift) : new_array.push(right_array.shift)
  end
  until left_array.empty?
    (1..left_array.length).each do 
      new_array.push(left_array.shift)
    end
  end
  until right_array.empty?
    (1..right_array.length).each do 
      new_array.push(right_array.shift)
    end
  end
  new_array
end


random_array = Array.new(rand(50)) { rand(-20...200) }
p merge_sort(random_array)
