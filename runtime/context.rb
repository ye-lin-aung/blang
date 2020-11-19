class Context
    attr_reader :locals, :current_self, :current_class

    def initialize(current_self, current_class=current_self.runtime_class)
        @locals = {}
        @current_self = current_self
        @current_class = current_class
    end

    def to_s
        "CurrentSelf - #{current_self} && CurrentClass - #{current_class}"
    end
end