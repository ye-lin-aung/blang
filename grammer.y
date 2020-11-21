class BlangParser
token BIF
token BDEF
token BCLASS
token BNUMBER
token BSTRING
token BTRUE BFALSE BNIL
token BIDENTIFIER
token BEND
token NEWLINE
token BWHILE

prechigh
  left  '.'
  right '!'
  left  '*' '/'
  left  '+' '-'
  left  '>' '>=' '<' '<='
  left  '==' '!='
  left  '&&'
  left  '||'
  right '='
  left  ','
preclow
rule
  Program:
    /* nothing */                      { result = Nodes.new([]) }
  | Expressions                        { result = val[0] }
  ;

  Expressions:
    Expression                         { result = Nodes.new(val) }
  | Expressions Terminator Expression  { result = val[0] << val[2] }
  | Expressions Terminator             { result = val[0] }
  | Terminator                         { result = Nodes.new([]) }
  ;
 

  Expression:
    Literal
  | Call
  | Operator
  | GetLocal
  | SetLocal
  | Def
  | Class
  | If
  | '(' Expression ')'    { result = val[1] }
  | While
  ;

  Terminator:
    ";"
  | NewLine                     
  ;

  NewLine:
    NEWLINE

  Literal:
    BNUMBER                        { result = NumberNode.new(val[0]) }
  | BSTRING                        { result = StringNode.new(val[0]) }
  | BTRUE                          { result = TrueNode.new }
  | BFALSE                         { result = FalseNode.new }
  | BNIL                           { result = NilNode.new }
  ;

 
  Call:
    BIDENTIFIER Arguments         { result = CallNode.new(nil, val[0], val[1]) }
  | Expression "." BIDENTIFIER        { result = CallNode.new(val[0], val[2], val[3]) }
      Arguments
  | Expression "." BIDENTIFIER     { result = CallNode.new(val[0], val[2], []) }
  ;

  Arguments:
    "(" ")"                       { result = [] }
  | "(" ArgList ")"               { result = val[1] }
  ;

  ArgList:
    Expression                    { result = val }
  | ArgList "," Expression        { result = val[0] << val[2] }
  ;

  

  Operator:
    Expression '||' Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '&&' Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '==' Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '!=' Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '>'  Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '>=' Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '<'  Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '<=' Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '+'  Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '-'  Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '*'  Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '/'  Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | '!' Expression  { result = CallNode.new(val[1], val[0], [])}
  ;

  GetLocal:
    BIDENTIFIER                    { result = GetLocalNode.new(val[0]) }
  ;
  
  SetLocal:
    BIDENTIFIER "=" Expression     { result = SetLocalNode.new(val[0], val[2]) }
  ;

  Block:
    NewLine Expressions BEND           { result = val[1] }
  ;
 
  Def:
    BDEF BIDENTIFIER Block          { result = DefNode.new(val[1], [], val[2]) }
  | BDEF BIDENTIFIER "(" ParamList ")" Block        { result = DefNode.new(val[1], val[3], val[5]) }
  ;

  
  

  ParamList:
    /* nothing */                 { result = [] }
  | BIDENTIFIER                    { result = val }
  | ParamList "," BIDENTIFIER      { result = val[0] << val[2] }
  ;
  

  Class:
    BCLASS BIDENTIFIER Block          { result = ClassNode.new(val[1], val[2]) }
  ;
  
  # Finally, `if` is similar to `class` but receives a *condition*.
  If:
    BIF Expression Block           { result = IfNode.new(val[1], val[2]) }
  ;

  While:
    BWHILE Expression Block        { result = WhileNode.new(val[1], val[2]) }
  ;

 
end

---- header
  require_relative "lexer.rex.rb"
  require_relative "nodes"

---- inner
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
