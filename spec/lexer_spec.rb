require_relative '../lexer.rb'
class LexerTest
  
  describe 'Testing the Lexer' do
    before do
      @evaluator = Lexer.new
    end

    it "tokenizes a string" do
    	result = @evaluator.tokenize("hatti aayo")
    	result.should == [[:IDENTIFIER, "hatti"], [:IDENTIFIER, "aayo"]]
    end

    it "tokenizes a more complex string" do
    	code = <<-INPUT
class Movie
	def awesome:
		"hello"				
INPUT
    	result = @evaluator.tokenize(code)
    	result.should == [[:CLASS, "class"], [:CONSTANT, "Movie"], [:NEWLINE, "\n"], ["\t", "\t"], [:DEF, "def"], [:IDENTIFIER, "awesome"], [":", ":"], [:NEWLINE, "\n"], ["\t", "\t"], ["\t", "\t"], [:STRING, "hello"], ["\t", "\t"], ["\t", "\t"], ["\t", "\t"], ["\t", "\t"]]
    end

  end
  
end # class: LexerTest