class C
  CONST = "hello world".freeze
end

a = 1
C.class_eval %Q{
  def m
    return :m, #{a}
  end
}

p C.new.m # => [:m, 1]

C.class_eval do
  CONST = "eval_const".freeze
  def hello
    CONST
  end
end

p C.new.hello # => "eval_const"
p C.instance_methods(false) # => [:m, :hello]

C.class_eval(<<-CODE)
  def world
    CONST
  end
CODE

p C.new.world # => "hello world"
p C.new.hello # => "eval_const"
p C.instance_methods(false) # => [:m, :hello, :world]