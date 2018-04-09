def sort_array_asc(arr)
  arr.sort
end

def sort_array_desc(arr)
  arr.sort.reverse
end

def sort_array_char_count(arr)
  arr.sort { |x,y| x.size <=> y.size }
end

def swap_elements(arr)
  second = arr[1]
  third = arr[2]
  arr[1] = third
  arr[2] = second
  arr
end

def reverse_array(arr)
  arr.reverse
end

# def kesha_maker(arr)
#   new_arr = []
#   arr.each do | element |
#     element_arr = element.split(//)
#     element_arr[2] = "$"
#     new_arr << element_arr.join
#   end
#   new_arr
# end

def kesha_maker(arr)
  arr.map do | element |
    element_arr = element.split(//)
    element_arr[2] = "$"
    element_arr.join
  end
end

def find_a(arr)
  arr.select do | element |
    element.start_with?("a")
  end
end

def sum_array(arr)
  # arr.inject {|sum, n| sum + n}
  arr.reduce(:+)
end

def add_s(arr)
  arr.collect do |word| 
    if arr[1] == word
      word
    else
      word.insert(word.size, 's')
      # or: word + "s"
    end
  end
end


