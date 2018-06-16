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