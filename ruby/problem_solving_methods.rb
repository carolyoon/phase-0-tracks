#release 0
array = (1..9).to_a

def search_array(array, input_number)
 index_number = nil
 array.each do |array_number|
   if input_number == array_number
     index_number = array.index(array_number)
   end
 end
 index_number
end
p search_array(array, 4)


#release 1 
def fibonacci_sequence(number)
  fibonacci = [0, 1]
  index_position = number - 2
    a = 0
    b = 1 
  index_position.times do 
    index_position = a 
    a = b 
    b = index_position + b 
    fibonacci << b 
  end 
  return fibonacci
end

fibonacci_sequence(100)

#release 2 
def bubble_sort(array)
  n = array.length
  loop do
    swapped = false
    (n-1).times do |number|
      if array[number] > array[number+1]
        array[number], array[number+1] = array[number+1], array[number]
        swapped = true
      end
    end
    break if not swapped
  end
  array
end

bubble_sort([5, 4, 8])


