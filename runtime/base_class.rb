class BaseClass < BaseObject
    attr_reader :runtime_methods
    def initialize(superclass=nil)
        @runtime_methods = {}
        @runtime_class = Boot["Class"]
        @runtime_superclass = superclass
    end

    def lookup(name)
        method = @runtime_methods[name]
        unless method
            if @runtime_superclass
             return @runtime_superclass.lookup(name)
             else
             raise "Method not found: #{name}"
             end
        end
        method
    end

    def define(name, &block)
        @runtime_methods[name.to_s] = block
    end

    def new
        BaseObject.new(self)
    end

    def new_with_value(value)
        BaseObject.new(self,value)
    end
end