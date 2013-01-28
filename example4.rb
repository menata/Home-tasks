str ="just a regular string"

def str.title?
  self.upcase == self
end

puts str.title?
puts str.methods.grep(/title?/)
#puts str.single_singleton

class MyClass;end

class Class
   attr_accessor :c
end

MyClass.c = 'It works'
puts MyClass.c

class MyClass
class << self
    attr_accessor :c
  end
end

MyClass.c = 'It works'
puts MyClass.c
