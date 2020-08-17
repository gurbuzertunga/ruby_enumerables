# rubocop: disable Metrics/ModuleLength
module Enumerable
 
  def my_each
    return to_enum(:my_each) unless block_given?

    n = 0
    while n < size
      yield(self[n])
      n += 1
    end
    self
  end

  def my_each_with_index
    return to_enum(:my_each_with_index) unless block_given?

    n = 0
    x = 0
    while n < size
      yield(self[n], x)
      n += 1
      x += 1

    end
    self
  end

  def my_select
    return to_enum(:my_select) unless block_given?

    n = 0
    outcome = []
    while n < size
      outcome.push(self[n]) if yield(self[n])
      n += 1
    end
    outcome
  end

  def my_all
    return to_enum(:my_all) unless block_given?

    n = 0
    x = 0
    outcome = []
    while n < size
      if yield(self[n])
        outcome.push(true)
      else
        outcome.push(false)
      end
      n += 1
    end
    result = true
    while x < outcome.size
      result = false if outcome[x] == false
      x += 1
    end
    result
  end

  def my_any
    return to_enum(:my_any) unless block_given?

    n = 0
    x = 0
    outcome = []
    while n < size
      if yield(self[n])
        outcome.push(true)
      else
        outcome.push(false)
      end
      n += 1
    end
    result = false
    while x < outcome.size
      result = true if outcome[x] == true
      x += 1
    end
    result
  end

  def my_none
    return to_enum(:my_none) unless block_given?

    n = 0
    x = 0
    outcome = []
    while n < size
      if yield(self[n])
        outcome.push(true)
      else
        outcome.push(false)
      end
      n += 1
    end
    result = true
    while x < outcome.size
      result = false if outcome[x] == true
      x += 1
    end
    result
  end

  def my_count
    return to_enum(:my_count) unless block_given?

    n = 0
    n += 1 while n < size
    n
  end

  def my_map(&proc_1)
    n = 0
    my_new_map = []
    if !proc_1.nil?
      while n < size
        my_new_map.push(proc_1.call(self[n]))
        n += 1
      end
    elsif block_given?

      while n < size
        my_new_map.push(yield(self[n]))
        n += 1
      end
    end
    my_new_map
  end

  def my_inject
    return to_enum(:my_inject) unless block_given?

    n = 0
    my_inject = []
    while n < size
      if n.zero?
        my_inject.push(self[n])
      else
        my_inject.push(yield(my_inject[n - 1], self[n]))
      end
      n += 1
    end
    my_inject[n - 1]
  end

  def multiply_els
    my_inject { |i, j| i * j }
  end
end
# rubocop: enable Metrics/ModuleLength