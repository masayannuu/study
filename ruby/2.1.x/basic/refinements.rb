class C
  def foo
    p "C#foo"
  end

  def bar
    foo
  end
end

module M
  refine C do
    def foo
      p "C#foo in M"
    end
  end
end

using M

x = C.new
x.foo # => "C#foo in M"
x.bar # => "C#foo"
