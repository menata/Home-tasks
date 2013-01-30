class CarApplication

   class << self

       def config
         unless @instance
           yield(self)
           require_relative "car" 
         end
         @instance ||= self
       end
   attr_accessor :engine, :size, :engine_info, :turbo  
  end 
end  
