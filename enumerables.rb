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
end
include Enumerable