require 'pry'

def sort_array_asc(array)
array.sort
end

def sort_array_desc(array)
array.sort.reverse
end

def sort_array_char_count(array)
  array.sort_by do |word|
    word.length
  end
end

class Array
  def swap!(a,b)
    self[a], self[b] = self[b], self[a]
    self
  end
end

def swap_elements(array)
array.swap!(1, 2)
end

def reverse_array(array)
array.reverse
end

def kesha_maker(array)
  # binding.pry
  array.map do |word|
    letters = word.split("")
    letters[2] = "$"
    letters.join
  end
end

def find_a(array)
  array.select do |word|
    word.start_with?("a") == true
  end
end

def sum_array(array)
  array.reduce(:+)
end

def add_s(array)
  array.map do |word|
    word != array[1] ? word.concat("s") : array[1]
  end
end
