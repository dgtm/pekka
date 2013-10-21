# The lexer, or scanner, or tokenizer is the part of a language that converts the input, the code you want to execute, into tokens the parser can understand.
# Let’s say you have the following code:
#  print "I ate",
#        3,
# pies
# Once this code goes through the lexer, it will look something like this:
#  [IDENTIFIER print] [STRING "I ate"] [COMMA]
#                     [NUMBER 3] [COMMA]
#                     [IDENTIFIER pies]

# Lex and friends are not lexers per se. They are lexers compilers. You supply it a grammar and it will output a lexer. Here’s what that grammar looks like:


# Racc is a parser generator
# Rexical is lexical scanner generator
