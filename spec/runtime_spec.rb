class RuntimeTest
  describe 'Testing the Runtime' do
    it 'should determine that a class is a class' do
      Runtime["Class"].runtime_class.should == Runtime["Class"]
    end
  end
end # class: RuntimeTest