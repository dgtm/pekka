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

# lexers, like regular expressions, are state machines. Being very flexible, they can handle grammars of varying complexities and output parser in several languages.


# Runtimes evaluate a language to determine how to provide the behavior.
# The runtime model of a language is how we represent its objects, its methods, its types, its structure in memory.
#  model your runtime

# PROCEDURAL
# CLASS-BASED

# method object which will store methods defined from within our runtime

# Evaluation Context
# ▪ Local variables.
# ▪ The current value of self, the object on which methods with no receivers
# are called, eg.: print is like self.print.
# ▪ The current class, the class on which methods are defined with the def keyword.
#  where our constants (ie. classes) will be stored.

# The object model, built-in classes, and memory management system are part of the runtime.
# The runtime system acts as a kind of operating system for the Objective-C language; it’s what makes the language work