require_relative "car_application"
CarApplication.config do |a|
   a.engine = :diesel;
   a.size = 1.6;
   a.engine_info = "1.6 Diesel engine";
   a.turbo = "false";
end


@cars = []
@cars << Car.new(:engine => :gas, :size => 1.6) # puts engine_info
@cars << Car.new                                #puts engine_info
@cars << Car.new(asdasd: true)
@cars << Car.new(engine: :diesel, size: 2, turbo: true) #puts engine_info

