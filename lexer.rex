require_relative "utils.rb"
class Lexer
macro
  BLANK         [\ \t]+
  DEF           ကြေညာချက်
  CLASS         အခန်း
  STRING        \A"([^"]*)"
  NUMBER        ([\u1040-\u1049]+)
  MYANMAR       ([\u1000-\u109F]+)
  IF            အကယ်၍
  OPERATOR      \A(\|\||&&|==|!=|<=|>=)
  WHILE         မဖြစ်မချင်း
  END           ပြီး 
  TRUE          မှန်
  TRUE_ENG      true
  FALSE_ENG     false
  FALSE         မှား
  NIL           nil
rule
  \r
  {OPERATOR}    { [text, text]}
  {IF}          { [:BIF, "if"]}
  {TRUE}        { [:BTRUE, "true"]}
  {FALSE}       { [:BFALSE, "false"]}
  {TRUE_ENG}        { [:BTRUE, "true"]}
  {FALSE_ENG}       { [:BFALSE, "false"]}
  {NIL}         { [:BNIL, "nil"] }
  {WHILE}       { [:BWHILE,"while"]}
  {NUMBER}      { [:BNUMBER, text.myanmar_numbers_to_english.to_i]}
  \d+           { [:BNUMBER, text.myanmar_numbers_to_english.to_i] }
  \n            { [:NEWLINE,:NEWLINE] }
  {STRING}      { [:BSTRING, text.gsub('"', '')]}
  {CLASS}       {[:BCLASS,"class"]}
  {BLANK}
  {DEF}(\s+)    { [:BDEF,"def"] }
  {END}         { [:BEND,"end"] }
  [a-zA-Z]+     { [:BIDENTIFIER, text] }
  {MYANMAR}     { [:BIDENTIFIER, text] }
  .             { [text, text] }
end
