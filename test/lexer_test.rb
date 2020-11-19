
require_relative  "test_helper"
require_relative  "../lexer.rex"
class LexerTest < Test::Unit::TestCase
    def test_number
        lex = BlangLexer.new
        lex.scan_setup("၁၂၃၄")
        token = lex.next_token

        assert_equal [:BNUMBER, 1234], token
    end

    def test_string
        lex = BlangLexer.new
        lex.scan_setup('"hi"')
        token = lex.next_token
        assert_equal [:BSTRING, "hi"], token
    end
        
      
    def test_identifier
        lex = BlangLexer.new
        lex.scan_setup("name")
        token = lex.next_token
        assert_equal [:BIDENTIFIER, "name"], token
    end
      

    def test_true
        lex = BlangLexer.new
        lex.scan_setup("true")
        token = lex.next_token
        assert_equal [:BTRUE, "true"], token
    end

    def test_false
        lex = BlangLexer.new
        lex.scan_setup("false")
        token = lex.next_token
        assert_equal [:BFALSE, "false"], token
    end
   
    def test_nil
        lex = BlangLexer.new
        lex.scan_setup("nil")
        token = lex.next_token
        assert_equal [:BNIL, "nil"], token
    end
   
   
    def test_operator
        lex = BlangLexer.new
        lex.scan_setup("+ ||")
        token1 = lex.next_token
        token2 = lex.next_token
        assert_equal ["+", "+"], token1
        assert_equal ["||", "||"], token2
    end

    def test_code_block
        code = <<-CODE
        အခန်း a 
a = "abc" 
b = ၁ + ၂
အကယ်၍ a == "abc"
    စျေးတက်မယ်
ပြီး
    ကြေညာချက် a(b,x) 
    ပြီး 
ပြီး
        CODE
        lex = BlangLexer.new
        lex.scan_setup(code)
        tokens = []
        while token = lex.next_token
            tokens << token
        end
        result = [[:BCLASS, "class"],
          [:BIDENTIFIER, "a"],
          [:NEWLINE, :NEWLINE],
          [:BIDENTIFIER, "a"], 
          ["=","="],
          [:BSTRING, "abc"],
          [:NEWLINE, :NEWLINE],
          [:BIDENTIFIER, "b"],
          ["=", "="], 
          [:BNUMBER, 1],
          ["+", "+"], 
          [:BNUMBER, 2],
          [:NEWLINE,:NEWLINE],
          [:BIF,"if"],
          [:BIDENTIFIER, "a"],
          ["==","=="],
          [:BSTRING, "abc"],
          [:NEWLINE, :NEWLINE],
          [:BIDENTIFIER, "စျေးတက်မယ်"],
          [:NEWLINE, :NEWLINE],
          [:BEND, "end"],
          [:NEWLINE, :NEWLINE],
          [:BDEF, "def"], 
          [:BIDENTIFIER, "a"],
          ["(","("],
          [:BIDENTIFIER, "b"],
          [",",","],
          [:BIDENTIFIER, "x"],
          [")",")"],
          [:NEWLINE, :NEWLINE],
          [:BEND, "end"],
          [:NEWLINE , :NEWLINE],
          [:BEND, "end"],
          [:NEWLINE, :NEWLINE]
        ]
       

        assert_equal result, tokens

    end
end
