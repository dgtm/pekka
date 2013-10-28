require_relative '../runtime/object'
require_relative '../runtime/evaluation_context'
require_relative '../runtime/loader'
require 'pry'
class RuntimeTest
  describe 'Testing the Runtime' do
    it 'should determine that a class is a class' do
      Runtime["Class"].klass.should == Runtime["Class"]
    end
    it 'should determine that the class of an object is Class' do
      Runtime["Object"].klass.should == Runtime["Class"]
    end

    it 'should determine that the class of a new object is Object' do
      Runtime["Object"].new.klass.should == Runtime["Object"]
    end
    it 'should determine that the class of a new Class is Class' do
      Runtime["Class"].new.klass.should == Runtime["Class"]
    end 

    it "should recursively find class of Class" do
    	Runtime["Class"].klass.klass.klass.should == Runtime["Class"]
    end
  end
end # class: RuntimeTest