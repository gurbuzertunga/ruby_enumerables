require_relative 'enumerables.rb'
# my_array = [2, 6, 4, 6, 8]
# p my_array.my_each { |i| i }
# p (0..4).my_each
# my_array.my_each_with_index { |i, j| p "#{j} : #{i}" }
# p my_array.my_select { |i| i.even? }
# p my_array.my_all { |i| i.even? }
# p my_array.my_any{ |i| i.odd ? }
# p my_array.my_none{|i| i.odd?}
# p my_array.my_count{|i|}
# p my_array.my_map{|i| i * i}
# p [2, 6, 4, 6, 8].my_map{|i| i * i}
# p my_array.map{|i| i * i}
# p [2, 6, 4, 6, 8].map{|i| i * i}

# p my_array.my_inject{|i,j| i + j}
# p my_array.multiply_els
# proc = Proc.new {|i| i**2}
# p my_array.my_map(&proc)
# p my_array.my_map {|i| i**2}
#######################################################

# p %w[Marc Luc Jean].my_any? { |text| text.size >= 3 } # => true
# p %w[Marc Luc Jean].my_any? { |text| text.size >= 4 } # => false
# p [2, 3, 6, 7, 4, 8, 10].my_any?(3) # => false
# p %w[Marc Luc Jean].my_any?('Jean') # => false
p %w[Marc Luc Jean].my_any?(/z/) # => false
p [1, 5i, 5.67].my_any?(Numeric) # => true
p [2, 1, 6, 7, 4, 8, 10].my_any?(Integer) # => true
# p [nil, true, 99].my_any? # => false
# p [nil, false].my_any? # => false
# p [nil, nil, nil].my_any? # => false
# p [].my_any? # => true
%w[Marc Luc Jean].all? { |text| text.size >= 3 } # => true
%w[Marc Luc Jean].all? { |text| text.size >= 4 } # => false
[2, 1, 6, 7, 4, 8, 10].all?(3) # => false
%w[Marc Luc Jean].all?('Jean') # => false
%w[Marc Luc Jean].all?(/a/) # => false
[1, 5i, 5.67].all?(Numeric) # => true
[2, 1, 6, 7, 4, 8, 10].all?(Integer) # => true
[nil, true, 99].all? # => false
[nil, false].all? # => false
[nil, nil, nil].all? # => false
[].all? # => true