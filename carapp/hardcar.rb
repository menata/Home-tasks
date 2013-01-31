class Car
	attr_accessor :engine, :size, :turbo
	def initialize(args={}, &b)
		args.each do |k, v|
			method_name = "#{k}="
			return p "Incorrect incoming data" unless respond_to?(method_name)
			send(method_name, v)
		end
		instance_eval &b if block_given?
	end

	def engine_info
		return p 'Not enough data' if size.nil? || engine.nil?
		result = []
		result << 'turbo' if turbo
		result << size.to_f if size
		p "#{result.join(' ')} #{engine} engine".capitalize			
	end
end

a = Car.new

a.engine =:diesel
a.size = 1.6

p a.engine
p a.size
a.engine_info 

Car.new(:engine => :gas, :size => 1.6).engine_info

Car.new.engine_info
Car.new(asdasd: true)

Car.new(engine: :diesel, size: 2, turbo: true).engine_info

a = Car.new dosize
	self.engine = :diesel
	self.size = 3
end
a.engine_info
