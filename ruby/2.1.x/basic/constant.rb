Foo = 'main'

class Bar
  Foo = 'bar'

  def self.foo
    p ::Foo
  end

  def moge
    p ::Foo
  end

  def hoge
    p Foo
  end
end

Bar.foo # => "main"
bar = Bar.new
bar.moge # => "main"
bar.hoge # => "bar"

CONST = ["1", "2", "3"]
CONST = ["A", "B", "C"] # => warning: already initialized constant CONST
p CONST # => ["A", "B", "C"]

CONST[0] = "AX"
p CONST # => ["AX", "B", "C"]
