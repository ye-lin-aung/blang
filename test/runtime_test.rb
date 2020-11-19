require_relative  "test_helper"

require_relative  "../runtime"
class RuntimeTest < Test::Unit::TestCase
    def test_new_object
        obj = Boot["Object"].call("new")
        assert_equal Boot["Object"], obj.runtime_class
    end
end