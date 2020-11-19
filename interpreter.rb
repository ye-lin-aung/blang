require_relative "parser"
require_relative "runtime"
class Interpreter
    def initialize
        @parser = Parser.new
    end

    def eval(code)
        @parser.parse(code).eval(RootContext)
    end
end


class Nodes
    def eval(context)
        return_value = nil
        nodes.each do |node|
            
            return_value = node.eval(context)
        end
        return_value || Boot["nil"]
    end
end

class NumberNode
    def eval(context)
        Boot["Number"].new_with_value(value)
    end
end

class StringNode
    def eval(context)
        Boot["String"].new_with_value(value)
    end
end
class TrueNode
    def eval(context)
        Boot["true"]
    end
end
class FalseNode
    def eval(context)
        Boot["false"]
    end
end
class NilNode
    def eval(context)
        Boot["nil"]
    end
end

class GetLocalNode
    def eval(context)
       context.locals[name]
    end
end

class SetLocalNode
    def eval(context)
        context.locals[name] = value.eval(context)
    end
end

class DefNode
    def eval(context)
        method = BaseMethod.new(params, body)
        context.current_class.runtime_methods[name] = method
    end
end

class CallNode
   
    def eval(context)
     if receiver
        value = receiver.eval(context)
      
     else
        value = context.current_self # Default to `self` if no receiver.
 
     end
    evaluated_arguments = arguments.map { |arg| arg.eval(context) }
    value.call(method, evaluated_arguments)
    end
end


class ClassNode
    def eval(context)
        new_class = Boot[name]
        unless new_class
            new_class = BaseClass.new
            Boot[name] = new_class
        end
        
        class_context = Context.new(new_class,new_class)
        puts class_context.to_s
        body.eval(class_context)
        
        new_class
    end
end
 

class IfNode
    def eval(context)
         if condition.eval(context).ruby_value
           body.eval(context)
         else # If no body is evaluated, we return nil.
             Constants["nil"]
         end
     end
end

class WhileNode

    def eval(context)
        while condition.eval(context).ruby_value
          body.eval(context)
        end
        Constants["nil"]
    end
end
