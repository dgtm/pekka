require_relative '../parser.rb'

class ParserTest
  
  describe 'Testing the Parser' do
    it 'should parse a class definition' do
    	code = <<EOF

class Hatti:
  def awesome:
    "Awesome"
EOF
    	parsed = Parser.new.parse(code)
    	parsed.should == Nodes.new([ClassNode.new("Hatti",Nodes.new([DefNode.new("awesome")]))])
    end
  end
  
end # class: ParserTest