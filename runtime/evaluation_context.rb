# Runtimes evaluate a language to determine how to provide the behavior. 
# You’ll sometimes here about an “evaluation environment” or an “evaluation frame.” 
# What it really means is the “area” where a given block of code is evaluated to determine how it should be handled and what it should do.
# One of the things such an environment or frame will do is determine the current class that any code is operating on. 
# So I need a mechanism to provide this evaluation context.
require 'pry'
class EvaluationContext
	attr_accessor :current_self, :current_klass

	@@constants = {}
	def initialize(current_self)
		@current_self = current_self
		@current_klass = current_self.klass
	end

	def [](name)
		@@constants[name]
	end

	def []=(name,value)
		@@constants[name] = value
	end
end

