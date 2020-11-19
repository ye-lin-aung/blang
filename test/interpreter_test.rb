require_relative  "test_helper"
require_relative  "../interpreter"
class InterpreterTest < Test::Unit::TestCase


    def test_interpreter
    code = <<-CODE
    အခန်း AB 
    a = "abc"
    ပြ(a) 
    ပြီး
    CODE
    
    assert_prints("abc\n") { Interpreter.new.eval(code) }
    end
end
