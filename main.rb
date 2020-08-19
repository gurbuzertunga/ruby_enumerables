require_relative 'enumerables.rb'
# my_array = [2, 6, 4, 6, 8]
# my_hash = { 'Jane Doe' => 10, 'Jim Doe' => 6 }
# my_range = (10..15)
####### test cases for my_each ###########
# p my_array.my_each { |i|  i }
# my_range.my_each { |i| print i}
# p my_hash.my_each { |i, j|  "#{i} : #{j}"}
##########################################

### test cases for my_each_with_index ####
# my_range.my_each_with_index { |i , x| p "#{x} : #{i}"}
# my_array.my_each_with_index { |i, j| p "#{j} : #{i}" }
# my_hash.my_each { |i, j| p "#{i} : #{j}"}
##########################################

####### test cases for my_select #########
# p my_array.my_select { |i| i.even? }
# p my_range.my_select { |i| i.even? }
# my_hash.my_select { |i , j| p j.even? }# j here is the value

##########################################

####### test cases for my_all? ###########
# p my_array.my_all? { |i| i.even? }
# p my_range.my_all? { |i| i.even? }
# p my_hash.my_all? { |i, j| j.even? }# j here is the value
# p res = ['apple', 'orange'].my_all?
# p ['Gurbuz', 'Turkiye', 'uretim'].my_all?(/u/)
# p ['Gurbuz', 'Turkiye', 'kretim'].my_all?(/v/)
##########################################

####### test cases for my_any? ###########
# p my_array.my_any? { |i| i.odd? }
# p my_range.my_any? { |i| i.even? }
# p my_hash.my_any? { |i, j| j.odd? }# j here is the value
# p my_array.my_any?(3)
# p my_range.my_any?(11)
# p my_hash.my_any?(4)
# p res = ['apple', 'orange'].my_any?
# p ['Gurbuz', 'Turkiye', 'uretim'].my_any?(/u/)
# p ['Gurbuz', 'Turkiye', 'kretim'].my_any?(/v/)
##########################################

####### test cases for my_none? ##########
# p my_array.my_none? { |i| i.odd? }
# p my_range.my_none? { |i| i.even? }
# p my_hash.my_none? { |i, j| j.odd? }# j here is the value
# p my_array.my_none?(3)
# p my_range.my_none?(11)
# p my_hash.my_none?(4)
# p res = ['apple', 'orange'].my_none?
# p ['Gurbuz', 'Turkiye', 'uretim'].my_none?(/u/)
# p ['Gurbuz', 'Turkiye', 'kretim'].my_none?(/v/)
##########################################

####### test cases for my_count#########
# p my_array.my_count
# p my_range.my_count
# p my_hash.my_count
# p my_array.my_count(3)
# p my_range.my_count(11)
# p my_hash.my_count(4)
# p res = ['apple', 'dante', 'cherry'].my_count { |element| element == 'apple' }
##########################################

####### test cases for my_map #########
# p my_array.my_map {|i| i * i}
# p [2, 6, 4, 6, 8].my_map{|i| i * i}
# proc = Proc.new {|i| i**2}
# p my_array.my_map(&proc)
# p my_array.my_map {|i| i**2}
# p my_array.my_map
##########################################

####### test cases for my_inject #########
# p my_array.my_inject {|i| i * 3}
# p [2, 6, 4, 6, 8].my_inject{|i| i * 5}
# p my_array.my_inject {|i| i**2}
# p my_array.my_inject (:*)
##########################################

# p multiply_els(my_array)

##########################################
