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

module M
  C.class_eval do
    p Module.nesting # => [M]
    CONST = "eval_const".freeze
    def hello
      CONST
    end
  end
end

p C.new.hello # => "eval_const"
p C.instance_methods(false) # => [:m, :hello]

module M
  C.class_eval(<<-CODE)
    p Module.nesting # => [C, M]
    def world
      CONST
    end
  CODE
end

p C.new.world # => "hello world"
p C.new.hello # => "eval_const"
p C.instance_methods(false) # => [:m, :hello, :world]


# override initialize
class S
  @@val = 0

  def initialize
    @@val += 1
  end
end

class T < S
  class << T
    # call only once when defined.
    @@val += 1
  end

  def initialize
  end
end

T.new
T.new
S.new
S.new

p T.class_variable_get(:@@val) # => 3