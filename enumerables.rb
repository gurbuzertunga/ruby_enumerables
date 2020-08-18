# rubocop: disable Metrics/ModuleLength
module Enumerable
  def my_each(arr = nil)
    return to_enum unless block_given?

    Array(self).length.times do |i|
      yield(Array(self)[i])
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
    outcome = []
    self.my_each{|i| outcome.push(i) if yield(i)}
    return outcome
  end

  def my_all?(arg = nil)
    if arg == nil
      if !block_given? 
        output = true
        self.my_each { |item| output = false if !item  || item == nil}
        return output
      else
        outcome = true
        self.my_each { |item| outcome = false if !yield(item)}
        return outcome
      end
    else
      if arg.is_a?(Class)
        outcome = true
        self.my_each { |item| outcome = false if item.is_a?(arg)  }
        return outcome
      else
        outcome = true
        self.my_each { |item| outcome = false if item == (arg) || item.match?(arg)  }
        return outcome
      end
    end
  end

  def my_any?(arg = nil)
    if arg == nil
      if !block_given? 
        output = false
        self.my_each { |item| output = true if !item  || item == nil}
        return output
      else
        outcome = false
        self.my_each { |item| outcome = true if yield(item)}
        return outcome
      end
    else
      if arg.is_a?(Class)
      outcome = false
      self.my_each { |item| outcome = true if item.is_a?(arg)  }
      return outcome
      else
      outcome = false
      self.my_each { |item| outcome = true if item == (arg) || item.match?(arg)  }
      return outcome
      end
    end
  end


  def my_none?(arg = nil)
    if arg == nil
      if !block_given? 
        output = true
        self.my_each { |item| output = false if !item  || item == nil}
        return output
      else
        outcome = true
        self.my_each { |item| outcome = false if yield(item)}
        return outcome
      end
    else
      if arg.is_a?(Class)
      outcome = true
      self.my_each { |item| outcome = false if item.is_a?(arg)  }
      return outcome
      else
      outcome = true
      self.my_each { |item| outcome = false if item == (arg) || item.match?(arg)  }
      return outcome
      end
    end
    
  end

  def my_count(arg = nil)
  if arg == nil
    n = 0
    n += 1 while n < size
    n
  else
    if arg.is_a?(Class)
      n = 0
      self.my_each { |item| n += 1 if item.is_a?(arg)  }
      return n
    elsif arg.is_a?(Integer)
      n = 0
      self.my_each { |item| n += 1 if item == (arg)}
      return n
    
    else arg.is_a?(String)
    n = 0
    self.my_each { |item| n += 1 if item == (arg) || item.match?(arg)}
    return n
    end
  end
  end

  def my_map(arg = nil)
    if arg == nil
        return to_enum unless block_given?
        output = []
        self.my_each { |item| output.push(yield(item))}
       output
    elsif arg.class == Proc
        self.my_each { |item| Proc.call(item)}
    elsif 
      if arg.is_a?(Class)
      output = []
      self.my_each { |item| output.push(item) if item.is_a?(arg)}
      output
      elsif arg.is_a?(Integer)
      output = []
      self.my_each { |item| output.push(item) if item == (arg)}
       output
      else arg.is_a?(String)
      output = []
      self.my_each { |item| output.push(item) if item == (arg) || item.match?(arg)}
       output
      end
    end
    output
  end

  def my_inject(arg = nil)
    raise("LocalJumpError.new NO BLOCK HERE!") if !block_given?

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
