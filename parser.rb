#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.5.1
# from Racc grammar file "".
#

require 'racc/parser.rb'

  require_relative "lexer.rex.rb"
  require_relative "nodes"

class BlangParser < Racc::Parser

module_eval(<<'...end grammer.y/module_eval...', 'grammer.y', 152)
  def parse(code, show_tokens=false)
    @lex = BlangLexer.new
    @lex.scan_setup(code)
    @show_tokens = show_tokens
    do_parse
  end
  
  def next_token
    token = @lex.next_token
    if @show_tokens
      print token
    end
    token
  end
...end grammer.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    27,    25,    26,    18,    19,    20,    21,    22,    23,    17,
    17,    28,    29,    24,    27,    25,    26,    18,    19,    20,
    21,    22,    23,    17,    17,    28,    49,    24,    13,    15,
    15,    50,    27,    25,    26,    18,    19,    20,    21,    22,
    23,    75,    13,    28,    15,    24,    27,    25,    26,    18,
    19,    20,    21,    22,    23,    53,    47,    28,    46,    24,
    13,    70,    27,    25,    26,    18,    19,    20,    21,    22,
    23,    55,    31,    28,    13,    24,    27,    25,    26,    18,
    19,    20,    21,    22,    23,    17,    81,    28,    80,    24,
    13,   -26,    27,    25,    26,    18,    19,    20,    21,    22,
    23,    31,    31,    28,    13,    24,    27,    25,    26,    18,
    19,    20,    21,    22,    23,    84,    89,    28,    88,    24,
    13,    46,    27,    25,    26,    18,    19,    20,    21,    22,
    23,    17,    91,    28,    13,    24,    27,    25,    26,    18,
    19,    20,    21,    22,    23,   nil,   nil,    28,   nil,    24,
    13,   nil,    27,    25,    26,    18,    19,    20,    21,    22,
    23,   nil,   nil,    28,    13,    24,    27,    25,    26,    18,
    19,    20,    21,    22,    23,   nil,   nil,    28,   nil,    24,
    13,   nil,    27,    25,    26,    18,    19,    20,    21,    22,
    23,   nil,   nil,    28,    13,    24,    27,    25,    26,    18,
    19,    20,    21,    22,    23,   nil,   nil,    28,   nil,    24,
    13,   nil,    27,    25,    26,    18,    19,    20,    21,    22,
    23,   nil,   nil,    28,    13,    24,    27,    25,    26,    18,
    19,    20,    21,    22,    23,   nil,   nil,    28,   nil,    24,
    13,   nil,    27,    25,    26,    18,    19,    20,    21,    22,
    23,   nil,   nil,    28,    13,    24,    27,    25,    26,    18,
    19,    20,    21,    22,    23,   nil,   nil,    28,   nil,    24,
    13,   nil,    27,    25,    26,    18,    19,    20,    21,    22,
    23,   nil,   nil,    28,    13,    24,    27,    25,    26,    18,
    19,    20,    21,    22,    23,   nil,   nil,    28,   nil,    24,
    13,   nil,    27,    25,    26,    18,    19,    20,    21,    22,
    23,    87,    17,    28,    13,    24,    27,    25,    26,    18,
    19,    20,    21,    22,    23,   nil,   nil,    28,   nil,    24,
    13,    31,    15,    42,    43,    40,    41,    36,    37,    38,
    39,    34,    35,    31,    13,    42,    43,    40,    41,    36,
    37,    38,    39,    34,    35,    33,    32,    17,   nil,    31,
    68,    42,    43,    40,    41,    36,    37,    38,    39,    34,
    35,    33,    32,    17,   nil,    31,   nil,    42,    43,    40,
    41,    36,    37,    38,    39,    34,    35,    33,    32,    31,
   nil,    42,    43,    40,    41,    36,    37,    38,    39,    34,
    35,    33,    32,    31,   nil,    42,    43,    40,    41,    36,
    37,    38,    39,    34,    35,    33,    32,    31,   nil,    42,
    43,    40,    41,    36,    37,    38,    39,    34,    35,    33,
    32,    31,   nil,    42,    43,    40,    41,    36,    37,    38,
    39,    34,    35,    33,    32,    31,   nil,    42,    43,    40,
    41,    36,    37,    38,    39,    34,    35,    33,    32,    31,
   nil,    42,    43,    40,    41,    36,    37,    38,    39,    34,
    35,    33,    31,   nil,    42,    43,    40,    41,    36,    37,
    38,    39,    31,   nil,    42,    43,    40,    41,    36,    37,
    38,    39,    31,   nil,    42,    43,    40,    41,    31,   nil,
    42,    43,    40,    41,    31,   nil,    42,    43,    40,    41,
    31,   nil,    42,    43,    40,    41,    31,   nil,    42,    43,
    31,   nil,    42,    43 ]

racc_action_check = [
     0,     0,     0,     0,     0,     0,     0,     0,     0,     2,
     0,     0,     1,     0,    73,    73,    73,    73,    73,    73,
    73,    73,    73,    49,    73,    73,    25,    73,     0,     2,
     0,    26,    46,    46,    46,    46,    46,    46,    46,    46,
    46,    49,    73,    46,    73,    46,    13,    13,    13,    13,
    13,    13,    13,    13,    13,    29,    23,    13,    23,    13,
    46,    46,    24,    24,    24,    24,    24,    24,    24,    24,
    24,    31,    48,    24,    13,    24,    27,    27,    27,    27,
    27,    27,    27,    27,    27,    50,    71,    27,    71,    27,
    24,    55,    28,    28,    28,    28,    28,    28,    28,    28,
    28,    66,    67,    28,    27,    28,    30,    30,    30,    30,
    30,    30,    30,    30,    30,    75,    83,    30,    83,    30,
    28,    79,    32,    32,    32,    32,    32,    32,    32,    32,
    32,    88,    89,    32,    30,    32,    33,    33,    33,    33,
    33,    33,    33,    33,    33,   nil,   nil,    33,   nil,    33,
    32,   nil,    34,    34,    34,    34,    34,    34,    34,    34,
    34,   nil,   nil,    34,    33,    34,    35,    35,    35,    35,
    35,    35,    35,    35,    35,   nil,   nil,    35,   nil,    35,
    34,   nil,    36,    36,    36,    36,    36,    36,    36,    36,
    36,   nil,   nil,    36,    35,    36,    37,    37,    37,    37,
    37,    37,    37,    37,    37,   nil,   nil,    37,   nil,    37,
    36,   nil,    38,    38,    38,    38,    38,    38,    38,    38,
    38,   nil,   nil,    38,    37,    38,    39,    39,    39,    39,
    39,    39,    39,    39,    39,   nil,   nil,    39,   nil,    39,
    38,   nil,    40,    40,    40,    40,    40,    40,    40,    40,
    40,   nil,   nil,    40,    39,    40,    41,    41,    41,    41,
    41,    41,    41,    41,    41,   nil,   nil,    41,   nil,    41,
    40,   nil,    42,    42,    42,    42,    42,    42,    42,    42,
    42,   nil,   nil,    42,    41,    42,    43,    43,    43,    43,
    43,    43,    43,    43,    43,   nil,   nil,    43,   nil,    43,
    42,   nil,    47,    47,    47,    47,    47,    47,    47,    47,
    47,    82,    82,    47,    43,    47,    81,    81,    81,    81,
    81,    81,    81,    81,    81,   nil,   nil,    81,   nil,    81,
    47,    57,    82,    57,    57,    57,    57,    57,    57,    57,
    57,    57,    57,    44,    81,    44,    44,    44,    44,    44,
    44,    44,    44,    44,    44,    44,    44,    51,   nil,    51,
    44,    51,    51,    51,    51,    51,    51,    51,    51,    51,
    51,    51,    51,    52,   nil,    52,   nil,    52,    52,    52,
    52,    52,    52,    52,    52,    52,    52,    52,    52,     3,
   nil,     3,     3,     3,     3,     3,     3,     3,     3,     3,
     3,     3,     3,    54,   nil,    54,    54,    54,    54,    54,
    54,    54,    54,    54,    54,    54,    54,    69,   nil,    69,
    69,    69,    69,    69,    69,    69,    69,    69,    69,    69,
    69,    72,   nil,    72,    72,    72,    72,    72,    72,    72,
    72,    72,    72,    72,    72,    86,   nil,    86,    86,    86,
    86,    86,    86,    86,    86,    86,    86,    86,    86,    56,
   nil,    56,    56,    56,    56,    56,    56,    56,    56,    56,
    56,    56,    58,   nil,    58,    58,    58,    58,    58,    58,
    58,    58,    59,   nil,    59,    59,    59,    59,    59,    59,
    59,    59,    60,   nil,    60,    60,    60,    60,    61,   nil,
    61,    61,    61,    61,    62,   nil,    62,    62,    62,    62,
    63,   nil,    63,    63,    63,    63,    64,   nil,    64,    64,
    65,   nil,    65,    65 ]

racc_action_pointer = [
    -2,    12,    -3,   375,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    44,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    28,    60,    16,    21,    74,    90,    55,
   104,    61,   120,   134,   150,   164,   180,   194,   210,   224,
   240,   254,   270,   284,   329,   nil,    30,   300,    58,    11,
    73,   345,   361,   nil,   389,    61,   445,   317,   458,   468,
   478,   484,   490,   496,   502,   506,    87,    88,   nil,   403,
   nil,    57,   417,    12,   nil,   105,   nil,   nil,   nil,    91,
   nil,   314,   300,    87,   nil,   nil,   431,   nil,   119,   122,
   nil,   nil ]

racc_action_default = [
    -1,   -57,    -2,    -3,    -6,    -7,    -8,    -9,   -10,   -11,
   -12,   -13,   -14,   -57,   -16,   -17,   -18,   -19,   -20,   -21,
   -22,   -23,   -24,   -46,   -57,   -57,   -57,   -57,   -57,   -57,
    -5,   -57,   -57,   -57,   -57,   -57,   -57,   -57,   -57,   -57,
   -57,   -57,   -57,   -57,   -57,   -25,   -57,   -57,   -45,   -57,
   -57,   -57,   -57,    92,    -4,   -28,   -33,   -34,   -35,   -36,
   -37,   -38,   -39,   -40,   -41,   -42,   -43,   -44,   -15,   -31,
   -29,   -57,   -47,   -57,   -49,   -51,   -54,   -55,   -56,   -57,
   -30,   -57,   -57,   -57,   -52,   -27,   -32,   -48,   -57,   -57,
   -50,   -53 ]

racc_goto_table = [
    16,    30,    16,     2,    44,    45,    74,    76,    77,    78,
     1,    79,    71,    83,   nil,    48,   nil,   nil,    51,    52,
   nil,    54,   nil,    56,    57,    58,    59,    60,    61,    62,
    63,    64,    65,    66,    67,   nil,   nil,    69,    72,   nil,
   nil,   nil,   nil,   nil,   nil,    90,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,    85,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,    86,    16,   nil,   nil,    82,   nil,   nil,   nil,
   nil,    30,    16 ]

racc_goto_check = [
    14,     4,    14,     2,     3,    15,    18,    18,    18,    18,
     1,    16,    17,    19,   nil,     3,   nil,   nil,     3,     3,
   nil,     3,   nil,     3,     3,     3,     3,     3,     3,     3,
     3,     3,     3,     3,     3,   nil,   nil,     3,     3,   nil,
   nil,   nil,   nil,   nil,   nil,    18,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,    15,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,     3,    14,   nil,   nil,     2,   nil,   nil,   nil,
   nil,     4,    14 ]

racc_goto_pointer = [
   nil,    10,     3,    -9,    -1,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,     0,   -18,   -44,   -34,   -43,   -62 ]

racc_goto_default = [
   nil,   nil,   nil,     3,     4,     5,     6,     7,     8,     9,
    10,    11,    12,    14,    73,   nil,   nil,   nil,   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 34, :_reduce_1,
  1, 34, :_reduce_2,
  1, 35, :_reduce_3,
  3, 35, :_reduce_4,
  2, 35, :_reduce_5,
  1, 35, :_reduce_6,
  1, 36, :_reduce_none,
  1, 36, :_reduce_none,
  1, 36, :_reduce_none,
  1, 36, :_reduce_none,
  1, 36, :_reduce_none,
  1, 36, :_reduce_none,
  1, 36, :_reduce_none,
  1, 36, :_reduce_none,
  3, 36, :_reduce_15,
  1, 36, :_reduce_none,
  1, 37, :_reduce_none,
  1, 37, :_reduce_none,
  1, 47, :_reduce_none,
  1, 38, :_reduce_20,
  1, 38, :_reduce_21,
  1, 38, :_reduce_22,
  1, 38, :_reduce_23,
  1, 38, :_reduce_24,
  2, 39, :_reduce_25,
  0, 49, :_reduce_26,
  5, 39, :_reduce_none,
  3, 39, :_reduce_28,
  2, 48, :_reduce_29,
  3, 48, :_reduce_30,
  1, 50, :_reduce_31,
  3, 50, :_reduce_32,
  3, 40, :_reduce_33,
  3, 40, :_reduce_34,
  3, 40, :_reduce_35,
  3, 40, :_reduce_36,
  3, 40, :_reduce_37,
  3, 40, :_reduce_38,
  3, 40, :_reduce_39,
  3, 40, :_reduce_40,
  3, 40, :_reduce_41,
  3, 40, :_reduce_42,
  3, 40, :_reduce_43,
  3, 40, :_reduce_44,
  2, 40, :_reduce_45,
  1, 41, :_reduce_46,
  3, 42, :_reduce_47,
  3, 51, :_reduce_48,
  3, 43, :_reduce_49,
  6, 43, :_reduce_50,
  0, 52, :_reduce_51,
  1, 52, :_reduce_52,
  3, 52, :_reduce_53,
  3, 44, :_reduce_54,
  3, 45, :_reduce_55,
  3, 46, :_reduce_56 ]

racc_reduce_n = 57

racc_shift_n = 92

racc_token_table = {
  false => 0,
  :error => 1,
  :BIF => 2,
  :BDEF => 3,
  :BCLASS => 4,
  :BNUMBER => 5,
  :BSTRING => 6,
  :BTRUE => 7,
  :BFALSE => 8,
  :BNIL => 9,
  :BIDENTIFIER => 10,
  :BEND => 11,
  :NEWLINE => 12,
  :BWHILE => 13,
  "." => 14,
  "!" => 15,
  "*" => 16,
  "/" => 17,
  "+" => 18,
  "-" => 19,
  ">" => 20,
  ">=" => 21,
  "<" => 22,
  "<=" => 23,
  "==" => 24,
  "!=" => 25,
  "&&" => 26,
  "||" => 27,
  "=" => 28,
  "," => 29,
  "(" => 30,
  ")" => 31,
  ";" => 32 }

racc_nt_base = 33

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "BIF",
  "BDEF",
  "BCLASS",
  "BNUMBER",
  "BSTRING",
  "BTRUE",
  "BFALSE",
  "BNIL",
  "BIDENTIFIER",
  "BEND",
  "NEWLINE",
  "BWHILE",
  "\".\"",
  "\"!\"",
  "\"*\"",
  "\"/\"",
  "\"+\"",
  "\"-\"",
  "\">\"",
  "\">=\"",
  "\"<\"",
  "\"<=\"",
  "\"==\"",
  "\"!=\"",
  "\"&&\"",
  "\"||\"",
  "\"=\"",
  "\",\"",
  "\"(\"",
  "\")\"",
  "\";\"",
  "$start",
  "Program",
  "Expressions",
  "Expression",
  "Terminator",
  "Literal",
  "Call",
  "Operator",
  "GetLocal",
  "SetLocal",
  "Def",
  "Class",
  "If",
  "While",
  "NewLine",
  "Arguments",
  "@1",
  "ArgList",
  "Block",
  "ParamList" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'grammer.y', 26)
  def _reduce_1(val, _values, result)
     result = Nodes.new([])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 27)
  def _reduce_2(val, _values, result)
     result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 31)
  def _reduce_3(val, _values, result)
     result = Nodes.new(val)
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 32)
  def _reduce_4(val, _values, result)
     result = val[0] << val[2]
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 33)
  def _reduce_5(val, _values, result)
     result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 34)
  def _reduce_6(val, _values, result)
     result = Nodes.new([])
    result
  end
.,.,

# reduce 7 omitted

# reduce 8 omitted

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

# reduce 13 omitted

# reduce 14 omitted

module_eval(<<'.,.,', 'grammer.y', 47)
  def _reduce_15(val, _values, result)
     result = val[1]
    result
  end
.,.,

# reduce 16 omitted

# reduce 17 omitted

# reduce 18 omitted

# reduce 19 omitted

module_eval(<<'.,.,', 'grammer.y', 60)
  def _reduce_20(val, _values, result)
     result = NumberNode.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 61)
  def _reduce_21(val, _values, result)
     result = StringNode.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 62)
  def _reduce_22(val, _values, result)
     result = TrueNode.new
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 63)
  def _reduce_23(val, _values, result)
     result = FalseNode.new
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 64)
  def _reduce_24(val, _values, result)
     result = NilNode.new
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 69)
  def _reduce_25(val, _values, result)
     result = CallNode.new(nil, val[0], val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 70)
  def _reduce_26(val, _values, result)
     result = CallNode.new(val[0], val[2], val[3])
    result
  end
.,.,

# reduce 27 omitted

module_eval(<<'.,.,', 'grammer.y', 72)
  def _reduce_28(val, _values, result)
     result = CallNode.new(val[0], val[2], [])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 76)
  def _reduce_29(val, _values, result)
     result = []
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 77)
  def _reduce_30(val, _values, result)
     result = val[1]
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 81)
  def _reduce_31(val, _values, result)
     result = val
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 82)
  def _reduce_32(val, _values, result)
     result = val[0] << val[2]
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 88)
  def _reduce_33(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 89)
  def _reduce_34(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 90)
  def _reduce_35(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 91)
  def _reduce_36(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 92)
  def _reduce_37(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 93)
  def _reduce_38(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 94)
  def _reduce_39(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 95)
  def _reduce_40(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 96)
  def _reduce_41(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 97)
  def _reduce_42(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 98)
  def _reduce_43(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 99)
  def _reduce_44(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 100)
  def _reduce_45(val, _values, result)
     result = CallNode.new(val[1], val[0], [])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 104)
  def _reduce_46(val, _values, result)
     result = GetLocalNode.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 108)
  def _reduce_47(val, _values, result)
     result = SetLocalNode.new(val[0], val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 112)
  def _reduce_48(val, _values, result)
     result = val[1]
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 116)
  def _reduce_49(val, _values, result)
     result = DefNode.new(val[1], [], val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 117)
  def _reduce_50(val, _values, result)
     result = DefNode.new(val[1], val[3], val[5])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 124)
  def _reduce_51(val, _values, result)
     result = []
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 125)
  def _reduce_52(val, _values, result)
     result = val
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 126)
  def _reduce_53(val, _values, result)
     result = val[0] << val[2]
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 131)
  def _reduce_54(val, _values, result)
     result = ClassNode.new(val[1], val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 136)
  def _reduce_55(val, _values, result)
     result = IfNode.new(val[1], val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 140)
  def _reduce_56(val, _values, result)
     result = WhileNode.new(val[1], val[2])
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end   # class BlangParser
