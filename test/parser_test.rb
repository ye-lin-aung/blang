
require_relative  "test_helper"
require_relative  "../parser.rb"
require_relative  "../nodes.rb"
class ParserTest < Test::Unit::TestCase
    def test_number
        parser = Parser.new
        nodes = parser.parse("၁၂၃၄")
        
        assert_equal Nodes.new([NumberNode.new(1234)]), nodes
    end

    def test_string
        parser = Parser.new
        nodes = parser.parse('"hi"')
      
        assert_equal Nodes.new([StringNode.new("hi")]), nodes
    end
        
      
    def test_identifier
        parser = Parser.new
        nodes = parser.parse("စျေးတက်မယ်")
      
        assert_equal Nodes.new([GetLocalNode.new("စျေးတက်မယ်")]), nodes
    end
      

    def test_true
        parser = Parser.new
        nodes = parser.parse("true")
        assert_equal Nodes.new([TrueNode.new()]), nodes

    end

    def test_false
        parser = Parser.new
        nodes = parser.parse("false")
        assert_equal Nodes.new([FalseNode.new()]), nodes

    end
   
    def test_nil
        parser = Parser.new
        nodes = parser.parse("false")
        assert_equal Nodes.new([FalseNode.new()]), nodes
    end
   

    def test_code_block
        parser = Parser.new
        code = <<-CODE
        အကယ်၍ a == "abc"
        စျေးတက်မယ်
        ပြီး
        CODE
  
        nodes = parser.parse(code)
        
         result = []
        assert_equal Nodes.new([
            IfNode.new(
                CallNode.new(GetLocalNode.new("a"), "==", [StringNode.new("abc")]),
                Nodes.new([GetLocalNode.new("စျေးတက်မယ်")])
            )

        ]), nodes

    end
end