# rubocop: disable Metrics/ModuleLength
module Enumerable
  def my_each
    for i in 0...self.length
      yield(self[i])
    end
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
    outcome = []
    self.my_each{|i| outcome.push(i) if yield(i)}
    return outcome
  end

  def my_all
    if !block_given? 
      output = true
      self.my_each { |item| output = false if !item  || item == nil}
      return output
    else

      outcome = true
      self.my_each { |item| outcome = false if !yield(item)}
      return outcome
    end
  end

  def my_any
    if !block_given? 
      output = true
      self.my_each { |item| output = false if !item  || item == nil}
      return output
    else
    outcome = false
      self.my_each { |item| outcome = true if yield(item)}
      return outcome
    end
  end


  def my_none
    outcome = true
      self.my_each { |item| outcome = false if yield(item)}
      return outcome
    
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
    self.my_each{|i| my_new_map.push(yield(i))}
    return my_new_map
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
