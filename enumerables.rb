module Enumerable
    def my_each(arr)
        j = 0
        while j <= arr.length-1
            yield(arr[j])
            j += 1
        end
    end

    def my_each_with_index(arr)
        i = 0
        j = 0
        while j <= arr.length-1
            yield(i) 
            yield(arr[j])
            j += 1
            i += 1
        end
    end
end