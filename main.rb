require_relative 'enumerables.rb'
my_array = [2, 6, 4, 6, 8]
# p my_array.my_each { |i| i }
p (0..4).my_each
# my_array.my_each_with_index { |i, j| p "#{j} : #{i}" }
# p my_array.my_select { |i| i.even? }
# p my_array.my_all { |i| i.even? }
# p my_array.my_any{ |i| i.odd ? }
# p my_array.my_none{|i| i.odd?}
# p my_array.my_count{|i|}
p my_array.my_map{|i| i * i}
# p my_array.my_inject{|i,j| i + j}
# p my_array.multiply_els
# proc = Proc.new {|i| i**2}
# p my_array.my_map(&proc)
# p my_array.my_map {|i| i**2}
