=begin
  Home work
  1. вызов метода должен печатать соот. день недели
     today #=> monday or tuesday or etc
  2. class A
  def to_modify
    puts "print from not modified method"
   end
  end
  A.new.to_modify #=> "print from not modified method"
  modify( A ) #=> it should modify class A to this
  A.new.to_modify #=> "print from modified method, yeah!!!" 
=end

require "date"

class U
 def today
    puts Date.today.strftime('%A')
 end
end

U.new.today

def modify class_name
  if class_name.new.respond_to? :today
       class_name.send :define_method, :today do
       puts "Hello world!"
       end
     else
     raise NoMethodError, "Method not found #{method_name}"
   end
end 

modify U

U.new.today

