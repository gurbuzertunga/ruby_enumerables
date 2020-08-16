 require_relative 'enumerables.rb' 
my_array = [2,5,8,10,6]
proc1 = Proc.new {|i,j| i * j}
# my_array.my_each{|i| p i}
# my_array.my_each_with_index{|i,j|p "#{j} : #{i}" }
# p my_array.my_select{|i| i.even?}
# p my_array.my_all{|i| i.even?}
# p my_array.my_any{|i| i.odd?}
# p my_array.my_none{|i| i.odd?}
# p my_array.my_count{|i|}
# p my_array.my_map{|i| i * i}
# p my_array.my_inject{|i,j| i * j}
# p my_array.multiply_els

p proc1.(6,5)
