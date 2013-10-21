class Parser
token CLASS
token CONSTANT
token DEF
token INDENT
token DEDENT
token NEWLINE
token IDENTIFIER
token STRING

rule
	TreeRoot:
		Expressions {}
		;
	Expressions:
		Expression {result = Nodes.new(val)}
		| Expression Terminator {result = val[0]}
		| Terminator Expressions {result = val[1]}

	Expression:
		Constant
		| Class
		| Literal
		| Def

	Block:
		Indent Expressions Dedent {result = val[1]}

	Constant:
		CONSTANT {result = ConstantNode.new(val[0])}
	Class:
		CLASS CONSTANT Block {result = ClassNode.new(val[1], val[2])}

	
	Literal:
		STRING {result = StringNode.new(val[0])}

	Def:
		DEF IDENTIFIER Block {result = DefNode.new(val[1])}

	Terminator:
		NEWLINE {}

	Indent:
		INDENT {}
	Dedent:
		DEDENT {}
---- header
  require_relative './lexer.rb'
  require_relative './ast.rb'
---- inner
	def parse(input)
		@tokens = Lexer.new.tokenize(input)
		do_parse
	end

	def next_token
		@tokens.shift
	end