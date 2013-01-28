ar =[7,2,8,4,5,6,2]
=begin
for i in 0..ar.size
 if i%2!=0 then     
       puts ar[i]
       
  end

end
=end
a = [[],[]]
ar.each_with_index { |val,i|
a[i%2]<<val
}

puts a.flatten.inspect

=begin
ar.each_with_index.partition{|obj,i| i%2 == 0}.map{|a|
a.map(&:first)}
=end
