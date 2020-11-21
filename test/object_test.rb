require_relative  "test_helper"

require_relative  "../interpreter"
class ObjectTest < Test::Unit::TestCase
    def test_new_object
        code = <<-CODE 
        အခန်း ကား 
        ကြေညာချက် နာမည်()
            10
        ပြီး
        ပြီး
        a = ကား.new().နာမည်()
        ပြ(a)
        CODE
        Interpreter.new(true).eval(code)
        # assert_prints("abc\n") { Interpreter.new.eval(code) }

    end

end