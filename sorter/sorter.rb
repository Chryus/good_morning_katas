require 'byebug'
class Sorter

  attr_reader :input_object
	
	def initialize(input_object=[])
		@input_object = input_object
	end


	def selection_sort(int_array=[])
    #[3,2,1]
    puts "INT ARRAY #{int_array}"
    for outer_index in (0...int_array.length) #3
      min_index = outer_index
      for inner_index in (outer_index+1...int_array.length)# 2
        puts "if #{int_array[inner_index]} is less than #{int_array[min_index]} new min = #{inner_index}"
        if int_array[inner_index] < int_array[min_index]
          min_index = inner_index
        end
      end
      int_array[outer_index], int_array[min_index] = int_array[min_index], int_array[outer_index]
    end
    int_array
	end
end