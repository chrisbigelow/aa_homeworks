def sluggish_octopus(array)
    biggest = nil
    array.each_index do |index|
      
      biggest = array[index]
      
      array.each_index do |other|
        biggest = array[other] if array[other].length > biggest.length
      end
      
    end
    biggest
    
  end


p sluggish_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])


def dominant_octopus(array)
  sorted = merge_sort(array)
  sorted[-1]
end

def merge_sort(array)

  return array if array.length == 1
  mid = array.length / 2

  left = array.take(mid)
  right = array.drop(mid)

  left_sorted = merge_sort(left)
  right_sorted = merge_sort(right)

  return merge(left,right)
  

end

def merge(left,right)

  rt_array = []
  
  until left.empty? && right.empty?
    if right.first.nil?
      rt_array << left.shift
      next
    elsif left.first.nil?
      rt_array << right.shift
      next
    end

    if right.first < left.first
        rt_array << right.shift
    else
        rt_array << left.shift
    end
  end
  rt_array

end

p dominant_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
  

def clever_octopus(array)
  
  biggest = array.first

  array.each do |el|
    biggest = el if el.length > biggest.length
  end
  biggest
end

p clever_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])

def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |el, index|
    return index if el == direction
  end
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
p slow_dance("up", tiles_array)
#> 0

p slow_dance("right-down", tiles_array)
#> 3

def fast_dance(direction, tiles_array)
  tiles_array[direction]
end

new_tiles_data_structure = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

p fast_dance("up", new_tiles_data_structure)
#> 0

p fast_dance("right-down", new_tiles_data_structure)
#> 3
