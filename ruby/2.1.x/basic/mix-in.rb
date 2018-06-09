class Foo
  def initialize(num)
    @a = num
  end

  def method1; end;
end

module Bar
  def methodA; @a; end;
end

foo1 = Foo.new(1)
class << foo1
  include Bar
end
p foo1.methodA # => 1

foo2 = Foo.new(2)
foo2.extend(Bar)
p foo2.methodA # => 2

module M1
  def method1; "m1"; end
end

class C1
  extend M1
  def method1; "c1"; end
end

class C2
  include M1
  def method1; "c2"; end
end

p C1.method1 # => "m1"
p C2.new.method1 # => "c2"
p C1.ancestors # => C1, Object, Kernel, BasicObject]
p C2.ancestors # => [C2, M1, Object, Kernel, BasicObject]