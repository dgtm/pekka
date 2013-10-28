# Each object have a class (named klass to prevent errors with Ruby's class
# method). Optionaly an object can hold a Ruby value (eg.: numbers and strings).
class Peking
	attr_accessor :klass

	def initialize(klass)
		@klass = klass
	end
end

class Peklass < Peking
	def initialize
		super(Peklass)
	end

	def new
		Peking.new(self)
	end
end