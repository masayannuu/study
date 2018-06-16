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

Bar.foo # => "foo"
Foo.moge # => "moge"
Bar.moge # =>  undefined method `moge' for Bar:Class (NoMethodError)