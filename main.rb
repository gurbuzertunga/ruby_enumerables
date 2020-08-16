=begin require_relative 'enumerables.rb' 
=end

my_array = [3,5,7,9]

def my_each(arr)
    j = 0
    while j <= arr.length-1
        yield(arr[j])
        j += 1
    end
end

puts my_array.my_each {|j|}



=begin
my_array = [3,5,7,9]

def my_each_with_index(my_array)
    i = 0
    j = 0
    while j <= my_array.length-1
        yield(i) 
        yield(my_array[j])
        j += 1
        i += 1
        puts i, j
    end
end

puts my_each_with_index(my_array){|i,j|} 
=end
