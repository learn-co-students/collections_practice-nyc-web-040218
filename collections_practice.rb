def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort {|x,y| y <=> x}
end

def sort_array_char_count(array)
  array.sort {|x,y| x.size <=> y.size }
end

def swap_elements_from_to(array, index, destination_index)
  start_i = array[index]
  end_i = array[destination_index]
  array[index] = end_i
  array[destination_index] = start_i
  array
end

def swap_elements(array)
  swap_elements_from_to(array, 1, 2)
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.map {|name| name[2] = "$"}
  array
end

def find_a(array)
  array.select{|word| word[0] == "a"}
end

def sum_array(array)
  array.reduce(:+)
end

def add_s(array)
  array.each_with_index.collect{|element, index|
    if index != 1
      element + "s"
    else
      element
    end
  }.compact
end
