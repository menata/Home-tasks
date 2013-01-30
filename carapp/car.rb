class Car

 attr_accessor :size, :engine, :turbo, :engine_info  
       def initialize(options={}, &b)
         options.each do |k, v|
         send "#{k}=", v
      end
      instance_eval &b if block_given?
      end       
      def engine_info
         a = "#{size}"
         if a.length<2
            a = a + '.0'
         end        
         "#{a} #{'turbo' if turbo} #{engine.capitalize} engine"
      end 
 end

a = Car.new(:engine => :gas, :size => "1.6", :turbo => true)
p a
p a.engine
p a.size
p a.engine_info
#b = Car.new.engine_info #undefined method `capitalize' for nil:NilClass (NoMethodError)
	                #from init.rb:11:in `<main>'
#c = Car.new(asdasd: true) # in `block in initialize': undefined method `asdasd=' for #<Car:0x80f1240> (NoMethodError)
p Car.new(:engine => :gas, :size => 1.6).engine_info         #"1.6  Gas engine" 
p Car.new(engine: :diesel, size: 2, turbo: true).engine_info #"2.0 turbo Diesel engine"
a = Car.new do
  self.engine= :diesel
  self.size= 3
end
p a.engine_info #prints "3.0 Diesel engine"
=begin
a = Car.new do
  engine :diesel
  size 3
end  
=end
a.engine_info   
