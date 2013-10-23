
peklass = Peklass.new # Like an abstraction for Class
peklass.klass = peklass # SInce Class.class.class.class is a class

# peklass is like Ruby's Class. Peklass is also an object like Ruby's Class is an Object. But with same obj id across Peklass.klass.klass


# Lets create an object of type class peklass now, not Peklass. peklass is like an abstraction for Ruby Class

object = Peklass.new # Like an abstraction for an Object
object.klass = peklass

# So, now you can do like Object
# and Object.class.class.class

Runtime = EvaluationContext.new(object.new)

Runtime["Class"] = peklass
Runtime["Object"] = object