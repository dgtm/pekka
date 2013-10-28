require_relative '../runtime/object'
require_relative '../runtime/evaluation_context'
require_relative '../runtime/loader'
require 'pry'
class RuntimeTest
  describe 'Testing the Runtime' do
    it 'should determine that a class is a class' do
      Runtime["Class"].klass.should == Runtime["Class"]
    end
  end
end # class: RuntimeTest