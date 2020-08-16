module Enumerable
    def my_each
        return to_enum(:my_each) unless block_given?
        n = 0
        while n < self.size
            yield(self[n])
            n += 1
        end
        self
    end

    def my_each_with_index
        return to_enum(:my_each_with_index) unless block_given?
        n = 0
        x = 0
        while n < self.size
            yield(self[n] ,x)
            n += 1
            x += 1

        end
        self
    end

    def my_select
        return to_enum(:my_select) unless block_given?
        n = 0
        outcome = []
        while n < self.size
            if yield(self[n])
                outcome.push(self[n])
            end
            n += 1
        end
        outcome
    end

    def my_all
        return to_enum(:my_all) unless block_given?
        n = 0
        x = 0
        outcome = []
        while n < self.size
            if yield(self[n])
                outcome.push(true)
            else 
                outcome.push(false)
            end
            n += 1
        end
        result = true
        while x < outcome.size
            if outcome[x] == false 
                result = false
            end
            x += 1
        end
        result
    end

    def my_any
        return to_enum(:my_any) unless block_given?
        n = 0
        x = 0
        outcome = []
        while n < self.size
            if yield(self[n])
                outcome.push(true)
            else 
                outcome.push(false)
            end
            n += 1
        end
        result = false
        while x < outcome.size
            if outcome[x] == true 
                result = true
            end
            x += 1
        end
        result
    end
   
    def my_none
        return to_enum(:my_none) unless block_given?
        n = 0
        x = 0
        outcome = []
        while n < self.size
            if yield(self[n])
                outcome.push(true)
            else 
                outcome.push(false)
            end
            n += 1
        end
        result = true
        while x < outcome.size
            if outcome[x] == true
                result = false
            end
            x += 1
        end
        result
    end

    def my_count
        return to_enum(:my_count) unless block_given?
        n = 0
        while n < self.size
            n += 1
        end
        n
    end


    def my_map
        return to_enum(:my_map) unless block_given?
        n = 0
        my_new_map = []
        while n < self.size
            my_new_map.push(yield(self[n]))
            n += 1
        end
        my_new_map
    end

    def my_inject
        return to_enum(:my_inject) unless block_given?
        n = 0
        my_inject = []
        while n < self.size
            if n == 0
                my_inject.push(self[n])
                n += 1
            else
            my_inject.push(yield(my_inject[n-1], self[n]))
            n += 1
        end
        end
        my_inject[n-1]
    end

    def multiply_els
        self.my_inject {|i,j| i * j}
    end
end
include Enumerable