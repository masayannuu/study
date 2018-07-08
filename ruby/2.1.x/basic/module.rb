module Foo
  def foo
    p "foo"
  end

  def self.moge
    p "moge"
  end
end

class Bar
  extend Foo
end

class Hoge
  include Foo
end

Bar.foo # => "foo"
Foo.moge # => "moge"
# Bar.moge # =>  undefined method `moge' for Bar:Class (NoMethodError)
# Hoge.moge # => undefined method `moge' for Hoge:Class (NoMethodError)
p Bar.ancestors # => [Bar, Object, Kernel, BasicObject]
p Hoge.ancestors # => [Hoge, Foo, Object, Kernel, BasicObject]
p Bar.singleton_class.ancestors # => [#<Class:Bar>, Foo, #<Class:Object>, #<Class:BasicObject>, Class, Module, Object, Kernel, BasicObject]

# Module.nesting. nesting information when it's called
module Outer
  p Module.nesting # => [Outer]
  module Inner
    p Module.nesting # => [Outer::Inner, Outer]
  end
end

p Module.nesting # => []