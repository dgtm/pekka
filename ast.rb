class Nodes < Struct.new(:nodes)
end
class ClassNode < Struct.new(:name, :block)
end

class ConstantNode < Struct.new(:name)
end

class StringNode <Struct.new(:name)
end

class DefNode < Struct.new(:name)
end