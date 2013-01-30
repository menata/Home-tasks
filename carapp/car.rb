class Car

   def initialize(options)
     @engine = options[:engine]
     @size = options[:size]
   end

      attr_reader :size, :engine
      attr_writer :size, :engine
end
     
