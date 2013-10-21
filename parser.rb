#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.9
# from Racc grammer file "".
#

require 'racc/parser.rb'

  require_relative './lexer.rb'
  require_relative './ast.rb'
class Parser < Racc::Parser

module_eval(<<'...end parser_grammar.y/module_eval...', 'parser_grammar.y', 52)
	def parse(input)
		@tokens = Lexer.new.tokenize(input)
		do_parse
	end

	def next_token
		@tokens.shift
	end
...end parser_grammar.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    10,     9,    12,    18,    17,    13,    13,    11,    10,     9,
    12,    19,    22,    13,    22,    11,    10,     9,    12,    14,
    26,   nil,   nil,    11 ]

racc_action_check = [
     0,     0,     0,    12,    10,     0,     3,     0,    20,    20,
    20,    14,    17,    20,    18,    20,     4,     4,     4,     1,
    24,   nil,   nil,     4 ]

racc_action_pointer = [
    -2,    19,   nil,    -1,    14,   nil,   nil,   nil,   nil,   nil,
     1,   nil,    -5,   nil,    11,   nil,   nil,     7,     9,   nil,
     6,   nil,   nil,   nil,    14,   nil,   nil ]

racc_action_default = [
   -17,   -17,    -1,    -2,   -17,    -5,    -6,    -7,    -8,   -10,
   -17,   -12,   -17,   -14,   -17,    -3,    -4,   -17,   -17,    27,
   -17,   -11,   -15,   -13,   -17,    -9,   -16 ]

racc_goto_table = [
     2,    21,    23,    15,    16,     1,    25,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
    24 ]

racc_goto_check = [
     2,     9,     9,     4,     3,     1,    11,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
     2 ]

racc_goto_pointer = [
   nil,     5,     0,     0,     0,   nil,   nil,   nil,   nil,   -16,
   nil,   -18 ]

racc_goto_default = [
   nil,   nil,   nil,     3,     4,     5,     6,     7,     8,   nil,
    20,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 11, :_reduce_1,
  1, 12, :_reduce_2,
  2, 12, :_reduce_3,
  2, 12, :_reduce_4,
  1, 13, :_reduce_none,
  1, 13, :_reduce_none,
  1, 13, :_reduce_none,
  1, 13, :_reduce_none,
  3, 19, :_reduce_9,
  1, 15, :_reduce_10,
  3, 16, :_reduce_11,
  1, 17, :_reduce_12,
  3, 18, :_reduce_13,
  1, 14, :_reduce_14,
  1, 20, :_reduce_15,
  1, 21, :_reduce_16 ]

racc_reduce_n = 17

racc_shift_n = 27

racc_token_table = {
  false => 0,
  :error => 1,
  :CLASS => 2,
  :CONSTANT => 3,
  :DEF => 4,
  :INDENT => 5,
  :DEDENT => 6,
  :NEWLINE => 7,
  :IDENTIFIER => 8,
  :STRING => 9 }

racc_nt_base = 10

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
  "CLASS",
  "CONSTANT",
  "DEF",
  "INDENT",
  "DEDENT",
  "NEWLINE",
  "IDENTIFIER",
  "STRING",
  "$start",
  "TreeRoot",
  "Expressions",
  "Expression",
  "Terminator",
  "Constant",
  "Class",
  "Literal",
  "Def",
  "Block",
  "Indent",
  "Dedent" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'parser_grammar.y', 12)
  def _reduce_1(val, _values, result)
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser_grammar.y', 15)
  def _reduce_2(val, _values, result)
    result = Nodes.new(val)
    result
  end
.,.,

module_eval(<<'.,.,', 'parser_grammar.y', 16)
  def _reduce_3(val, _values, result)
    result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser_grammar.y', 17)
  def _reduce_4(val, _values, result)
    result = val[1]
    result
  end
.,.,

# reduce 5 omitted

# reduce 6 omitted

# reduce 7 omitted

# reduce 8 omitted

module_eval(<<'.,.,', 'parser_grammar.y', 26)
  def _reduce_9(val, _values, result)
    result = val[1]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser_grammar.y', 29)
  def _reduce_10(val, _values, result)
    result = ConstantNode.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser_grammar.y', 31)
  def _reduce_11(val, _values, result)
    result = ClassNode.new(val[1], val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser_grammar.y', 35)
  def _reduce_12(val, _values, result)
    result = StringNode.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser_grammar.y', 38)
  def _reduce_13(val, _values, result)
    result = DefNode.new(val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser_grammar.y', 41)
  def _reduce_14(val, _values, result)
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser_grammar.y', 44)
  def _reduce_15(val, _values, result)
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser_grammar.y', 46)
  def _reduce_16(val, _values, result)
    
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end   # class Parser
